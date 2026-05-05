# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

JBehave BDD automation framework for the **ImageLinks** document management system (Arabic/English UI). Tests cover two roles: **Manager** (admin web app) and **Viewer** (read-only web app), targeting `http://172.16.30.83:9090/`.

## Build & Test Commands

```bash
# Run all tests
mvn clean test

# Run a filtered subset via story.filter system property
mvn test -Dstory.filter="*Manager*"    # Manager stories only
mvn test -Dstory.filter="*Viewer*"     # Viewer stories only
mvn test -Dstory.filter="TC_002_Manager.story"  # single story by exact name
mvn test -Dstory.filter="*"            # all stories (default)

# Run with custom report output directory (used by Jenkins)
mvn test -DreportDirectory="%WORKSPACE%\reports"

# Compile only
mvn compile
```

`AllStoriesTest.storyPaths()` reads the `story.filter` system property (default `*`) and passes it as a glob to `StoryFinder`. **Do not hard-code the pattern in `AllStoriesTest.java`** — use the property instead.

**Disabling a scenario** without deleting it: prefix the `Scenario:` line with `!--` (JBehave comment).

**Java 9+ note**: The `java9plus-opens` Maven profile activates automatically on Java 9+ and passes `--add-opens java.base/java.lang=ALL-UNNAMED` to surefire. Jenkins runs JDK 8 and is unaffected.

## Architecture

### Execution Flow

```
AllStoriesTest (JUnitStories)
  → AbstractStoryConfiguration   (JBehave config, Spring wiring)
    → ProjectConfiguration       (Spring @Configuration, WebDriver bean)
      → ExecutionLifecycle       (@BeforeStory / @AfterStory / @AfterScenario)
        → WebDriverProvider      (lazy Chrome/Firefox/IE — WebDriverManager auto-downloads driver)
        → PageFactory            (binds @FindBy fields on all @PageObject beans)
      → CannedSteps / CustomSteps (step definitions, Spring-injected)
        → CannedPage / CustomPage (page objects, WebElement fields)
          → AbstractPage          (reflection-based element lookup + waits)
      → StateManager             (cross-step data store)
      → ConsoleLogger            (JBehave reporter → ExtentReports HTML)
```

After all stories complete, `ExecutionLifecycle.afterStories()` sends a success email via `EmailSender`.

### Story → Step → Page Object Chain

Steps are matched by exact string pattern. Element names in steps are **Java field names** on the page object, resolved at runtime via reflection in `AbstractPage.getElementWithWait()`.

```gherkin
When [Input] Set 'User Name Field' value to 'random'
And [Action] I get value from 'User Name Value' and save it as 'MyKey'
```
```java
// CannedSteps — matches step, calls page
cannedPage.enterText("User Name Field", "random");
// AbstractPage — finds field "userNameField" on CannedPage via reflection, waits 30s
```

Field names use camelCase; step names use Title Case with spaces — the lookup lowercases both and strips spaces to match. **Adding a new element requires both a `@FindBy` field in the page object AND the matching step argument uses its Java field name in Title Case.**

### Property System (`p:` prefix)

Any step argument prefixed with `p:` is resolved via `PropertyParameterConverter` against `src/main/resources/data/test-data.properties`. This covers URLs, credentials, and test data values.

```gherkin
Given [Navigation] I navigate to 'p:imageLinksManager'
# → http://172.16.30.83:9090/Manager_Web/#/login
```

### Special Step Tokens

| Token | Behavior |
|-------|----------|
| `random` | Generates `Auto[nanotime]`, saves to StateManager |
| `date` | Uses `LocalDate.now()`, saves to StateManager |
| `nanotime` | Uses `System.nanoTime()` as string |
| `statemanager[key]` | Retrieves value previously saved to StateManager |

### StateManager

`StateManager` is a Spring `@Component` holding a `HashMap<String, Object>`. Use `put(key, value)` / `get(key)` to share data across steps within a test run. Cleared between stories via `resetStateBeforeScenario`.

### Page Objects

- `@PageObject` (custom annotation) marks a class for automatic `PageFactory.initElements()` at story start.
- `CannedPage` — generic elements shared across all stories (login, navigation, common buttons, tables).
- `CustomPage` — application-specific elements (admin login, radio buttons, checkboxes, mass actions).
- `AbstractPage` provides: `getElementWithWait()` (30s visibility wait), `waitForLoad()` (waits for Angular spinner / `#nprogress` to clear), `selectByVisibleText()`, scroll utilities.

### Failure Tracking

`ConsoleLogger` (a JBehave `StoryReporter`) maintains a static `AtomicBoolean`. `AllStoriesTest.run()` checks `ConsoleLogger.hasFailures()` after JBehave finishes and throws a `RuntimeException` to force Maven to report a build failure — because JBehave itself does not propagate story failures to Maven by default.

### Reports

Three report types are generated per run:
1. **ExtentReports HTML** → `reports/[timestamp]/Dewan-Automation-Report.html`
2. **JBehave HTML/XML** → `target/jbehave/`
3. **Surefire XML** → `target/surefire-reports/`

Screenshots on failure are saved to `reports/[timestamp]/Screenshots/`.

Report path is resolved in order: `-DreportDirectory` system property → `$WORKSPACE/reports` (Jenkins) → `user.dir/reports`.

## Key Files

| File | Purpose |
|------|---------|
| `src/test/java/AllStoriesTest.java` | Entry point — reads `story.filter`, wires Spring context |
| `src/main/java/.../configuration/AbstractStoryConfiguration.java` | JBehave + Spring wiring, embedder controls, parameter converters |
| `src/main/java/.../configuration/ProjectConfiguration.java` | Spring `@Configuration`, WebDriver and screenshot beans |
| `src/main/java/.../steps/CannedSteps.java` | Generic step definitions (navigation, input, assertions) |
| `src/main/java/.../steps/CustomSteps.java` | Business-logic steps (save/assert values, column uniqueness, Arabic text) |
| `src/main/java/.../pages/CannedPage.java` | Generic `@FindBy` element library and action/assertion methods |
| `src/main/java/.../pages/AbstractPage.java` | Reflection element lookup + wait utilities |
| `src/main/java/.../state/StateManager.java` | Cross-step key/value store |
| `src/main/resources/data/test-data.properties` | All URLs, credentials, test data values |
| `src/test/resources/stories/` | JBehave `.story` files (one per test case) |
| `Jenkinsfile` | CI pipeline (checkout → clean → test → archive reports) |

## Jenkins Pipeline

The `Jenkinsfile` runs on a Windows agent with Maven and JDK 8 tools named `Maven` and `JDK8`. Build parameters:
- `APP_NAME` — maps to story glob pattern (`Manager` → `*Manager*`, `Viewer` → `*Viewer*`, `*` → all)
- `VERSION` — passed in from n8n orchestration

Stages: Checkout → `mvn clean` → delete/recreate reports dir → `mvn test -Dstory.filter=<pattern>` → archive artifacts. Post-build publishes surefire XML and the ExtentReports HTML.
