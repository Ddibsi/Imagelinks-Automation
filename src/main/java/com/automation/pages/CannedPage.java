package com.automation.pages;

import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.NoSuchWindowException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.UnexpectedTagNameException;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.automation.configuration.pageobjects.PageObject;

@PageObject
public class CannedPage extends AbstractPage<CannedPage> {

	// ********************************************************************************************************
	// **************************************** Login Page ****************************************************
	// ********************************************************************************************************


		@FindBy(
				xpath = "//span[contains(text(),'EN')]"
		)
		public WebElement englishButton;
		@FindBy(
				xpath = "//span[contains(text(),'ع')]"
		)
		public WebElement arabicButton;
		@FindBy(
				css = "#auto-login-username"
		)
		public WebElement userName;
		@FindBy(
				css = "#auto-login-password"
		)
		public WebElement password;
		@FindBy(
				css = "#auto-login-unifiedLogin"
		)
		public WebElement UnifiedLogin;
		@FindBy(
				css = "#auto-login-submit"
		)
		public WebElement loginButton;
		@FindBy(
				css = "#auto-header-userFullName"
		)
		public WebElement UserNameValue;
		@FindBy(
				css = "div[class='font-size-one ng-star-inserted'] span"
		)
		public WebElement homePageValue;
		@FindBy(
				css = "#auto-header-userMenu"
		)
		public WebElement userInfoButton;
		@FindBy(
				css = "#auto-header-logout"
		)
		public WebElement logoutButton;
		@FindBy(
				css = "#auto-header-sideMenu"
		)
		public WebElement sideMenuButton;
		@FindBy(
				xpath = "/div/button/span"
		)
		public WebElement SuccessfulAlert;
		@FindBy(
				xpath = "/html[1]/body[1]/div[4]/div[1]/div[1]"
		)
		public WebElement FailAlert;
		@FindBy(
				xpath = "/html[1]/body[1]/app-root[1]/mat-sidenav-container[1]/mat-sidenav[1]/div[1]/div[1]/mat-nav-list[1]/a[1]/div[1]/span[1]/div[1]"
		)
		public WebElement HomePageButton;
		@FindBy(
				css = "#auto-sideMenu-security"
		)
		public WebElement UserManagementAndSecurityButton;
		@FindBy(
				css = "#auto-sideMenu-users"
		)
		public WebElement UsersButton;
		@FindBy(
				css = "#auto-sideMenu-groups"
		)
		public WebElement GroupsButton;
		@FindBy(
				css = "#auto-users-saveUser"
		)
		public WebElement saveButton;
		@FindBy(
				css = "#auto-users-addButton"
		)
		public WebElement AddUsersButton;
		@FindBy(
				css = "#auto-users-addUsername"
		)
		public WebElement AddUserNameInput;
		@FindBy(
				css = "#auto-users-addFullName"
		)
		public WebElement AddFullNameInput;
		@FindBy(
				css = "#auto-users-addPassword"
		)
		public WebElement PasswordInput;
		@FindBy(
				css = "#auto-users-addEmail"
		)
		public WebElement AddEmailInput;
		@FindBy(
				css = "#auto-users-addAbbreviation"
		)
		public WebElement AddAbbreviationInput;
		@FindBy(
				css = "#auto-users-emailErrorMsg"
		)
		public WebElement EmailInvalidFormat;
		@FindBy(
				css = "#auto-users-sortDataId"
		)
		public WebElement sortUserId;
		@FindBy(
				css = "#auto-users-userNameElement"
		)
		public WebElement newUserName;
		@FindBy(
				css = "#auto-users-editUser"
		)
		public WebElement EditUserButton;
		@FindBy(
				css = "#auto-users-editUsername"
		)
		public WebElement EditUserNameInput;
		@FindBy(
				css = "#auto-users-editFullName"
		)
		public WebElement EditFullNameInput;
		@FindBy(
				css = "#auto-users-editEmail"
		)
		public WebElement EditEmailInput;
		@FindBy(
				css = "#auto-users-editAbbreviation"
		)
		public WebElement EditAbbreviationInput;
		@FindBy(
				css = "#auto-users-deleteUser"
		)
		public WebElement DeleteUserButton;
		@FindBy(
				xpath = "//div[@class='cdk-overlay-container']//button[2]"
		)
		public WebElement YesButton;
		@FindBy(
				css = "#auto-users-editUserPrivileges"
		)
		public WebElement EditUserPrivilegesButton;
		@FindBy(
				css = "#auto-editUserPrivileges-expandAllButton"
		)
		public WebElement ExpandAllButton;
		@FindBy(
				css = "#auto-editUserPrivileges-selectAllButton"
		)
		public WebElement SelectAllButton;
		@FindBy(
				css = "#auto-editUserPrivileges-savaButton"
		)
		public WebElement SavePrivilegesButton;
		@FindBy(
				css = "#auto-userPrivileges-backButton"
		)
		public WebElement BackButton;
		@FindBy(
				css = "#auto-editUserPrivileges-clearAllButton"
		)
		public WebElement ClearAllButton;
		@FindBy(
				css = "#auto-users-editUserStorageHierarchyPrivileges"
		)
		public WebElement EditStorageHierarchyPrivilegesButton;
		@FindBy(
				css = "#auto-editUserStorageHierarchyPrivileges-treeDropdownList"
		)
		public WebElement StorageHierarchyPrivilegesTreeDropdown;
		@FindBy(
				xpath = "/html[1]/body[1]/app-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/div[1]/app-user-storage-hierarchy-privileges[1]/app-storage-hierarchy-privileges[1]/div[1]/div[2]/div[1]/div[1]/mat-tree[1]/mat-tree-node[1]/button[1]"
		)
		public WebElement AutomationDocumentClassButton;
		@FindBy(
				xpath = "/html[1]/body[1]/app-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/div[1]/app-user-storage-hierarchy-privileges[1]/app-storage-hierarchy-privileges[1]/div[1]/div[2]/div[1]/div[1]/mat-tree[1]/mat-tree-node[1]/mat-checkbox[1]"
		)
		public WebElement AutomationDocumentClassCheckbox;
		@FindBy(
				css = "#auto-editUserStorageHierarchyPrivileges-selectAllButton"
		)
		public WebElement SelectAllDocumentClassPrivilegesButton;
		@FindBy(
				css = "#auto-editUserStorageHierarchyPrivileges-saveButton"
		)
		public WebElement SaveDocumentClassPrivilegesButton;
		@FindBy(
				css = "#auto-userStorageHierarchyPrivileges-backButton"
		)
		public WebElement BackDocumentClassPrivilegesButton;
		@FindBy(
				css = "#auto-editUserStorageHierarchyPrivileges-clearAllButton"
		)
		public WebElement ClearAllDocumentClassPrivilegesButton;
		@FindBy(
				css = "#auto-users-uploadSignature"
		)
		public WebElement SignatureButton;
		@FindBy(
				css = "#auto-signature-uploadButton"
		)
		public WebElement UploadedSignature;
		@FindBy(
				css = "#auto-signature-uploadImageSignature"
		)
		public WebElement UploadedImageSignature;
		@FindBy(
				css = "#auto-signature-closeButton"
		)
		public WebElement CloseSignatureButton;
		@FindBy(
				css = "#auto-users-userNameSearch"
		)
		public WebElement SearchUserNameInput;
		@FindBy(
				css = "#auto-users-searchButton"
		)
		public WebElement SearchButton;
		@FindBy(
				css = "#auto-group-addButton"
		)
		public WebElement AddGroupsButton;
		@FindBy(
				css = "#auto-group-addGroupName"
		)
		public WebElement AddGroupNameInput;
		@FindBy(
				css = "#auto-group-saveButton"
		)
		public WebElement SaveGroupButton;
		@FindBy(
				css = "#auto-group-sortDataId"
		)
		public WebElement sortGroupId;
		@FindBy(
				css = "#auto-group-groupNameElement"
		)
		public WebElement newGroupName;
		@FindBy(
				css = "#auto-group-editGroup"
		)
		public WebElement EditGroupButton;
		@FindBy(
				css = "#auto-group-editGroupName"
		)
		public WebElement EditGroupNameInput;
		@FindBy(
				css = "#auto-group-saveGroup"
		)
		public WebElement SaveEditGroupButton;
		@FindBy(
				css = "#auto-group-deleteGroup"
		)
		public WebElement DeleteGroupButton;
		@FindBy(
				xpath = "//*[@id=\"mat-dialog-0\"]/confirmation-dialog/div[2]/button[2]"
		)
		public WebElement YesDeleteGroupButton;
		@FindBy(
				css = "#auto-group-editGroupPrivileges"
		)
		public WebElement EditGroupPrivilegesButton;
		@FindBy(
				css = "#auto-editUserPrivileges-expandAllButton"
		)
		public WebElement GroupExpandAllButton;
		@FindBy(
				css = "#auto-editUserPrivileges-selectAllButton"
		)
		public WebElement GroupSelectAllButton;
		@FindBy(
				css = "#auto-editUserPrivileges-savaButton"
		)
		public WebElement SaveGroupPrivilegesButton;
		@FindBy(
				css = "#auto-groupPrivileges-backButton"
		)
		public WebElement BackGroupPrivilegesButton;
		@FindBy(
				css = "#auto-editUserPrivileges-clearAllButton"
		)
		public WebElement ClearAllGroupPrivilegesButton;
		@FindBy(
				css = "#auto-group-editGroupStorageHierarchyPrivileges"
		)
		public WebElement EditGroupStorageHierarchyPrivilegesButton;
		@FindBy(
				css = "#auto-editUserStorageHierarchyPrivileges-treeDropdownList"
		)
		public WebElement GroupStorageHierarchyPrivilegesTreeDropdown;
		@FindBy(
				xpath = "/html[1]/body[1]/app-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/div[1]/app-group-storge-hierarchy-privileges[1]/div[1]/app-storage-hierarchy-privileges[1]/div[1]/div[2]/div[1]/div[1]/mat-tree[1]/mat-tree-node[1]/button[1]"
		)
		public WebElement GroupAutomationDocumentClassButton;
		@FindBy(
				xpath = "/html[1]/body[1]/app-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/div[1]/app-group-storge-hierarchy-privileges[1]/div[1]/app-storage-hierarchy-privileges[1]/div[1]/div[2]/div[1]/div[1]/mat-tree[1]/mat-tree-node[1]/mat-checkbox[1]"
		)
		public WebElement GroupAutomationDocumentClassCheckbox;
		@FindBy(
				css = "#auto-editUserStorageHierarchyPrivileges-selectAllButton"
		)
		public WebElement GroupSelectAllDocumentClassPrivilegesButton;
		@FindBy(
				css = "#auto-editUserStorageHierarchyPrivileges-saveButton"
		)
		public WebElement GroupSaveDocumentClassPrivilegesButton;
		@FindBy(
				css = "#auto-groupStorageHierarchyPrivileges-backButton"
		)
		public WebElement GroupBackDocumentClassPrivilegesButton;
		@FindBy(
				css = "#auto-editUserStorageHierarchyPrivileges-clearAllButton"
		)
		public WebElement GroupClearAllDocumentClassPrivilegesButton;
		@FindBy(
				css = "#auto-group-editGroupMembers"
		)
		public WebElement EditGroupMemberButton;
		@FindBy(
				xpath = "/html[1]/body[1]/app-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/div[1]/app-group-edit-group-members[1]/div[1]/div[1]/app-shuttle[1]/div[1]/div[1]/div[1]/div[2]/mat-form-field[1]/div[1]/div[1]/div[1]/input[1]"
		)
		public WebElement SearchUsersInGroupMember;
		@FindBy(
				css = "body > app-root > mat-sidenav-container > mat-sidenav-content > main > div > app-group-edit-group-members > div > div.card.margin-b-1 > app-shuttle > div > div > div:nth-child(1) > div.box > div:nth-child(4) > div > divF"
		)
		public WebElement SelectUserInGroupMember;
		@FindBy(
				css = "#auto-groupMembers-saveButton"
		)
		public WebElement GroupMemberSaveButton;
		@FindBy(
				css = "#auto-groupMembers-backButton"
		)
		public WebElement GroupMemberBackButton;
		@FindBy(
				xpath = "/html[1]/body[1]/app-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/div[1]/app-group-edit-group-members[1]/div[1]/div[1]/app-shuttle[1]/div[1]/div[1]/div[3]/div[2]/mat-form-field[1]/div[1]/div[1]/div[1]/input[1]"
		)
		public WebElement SearchSelectUsersInGroupMember;
		@FindBy(
				css = "body > app-root > mat-sidenav-container > mat-sidenav-content > main > div > app-group-edit-group-members > div > div.card.margin-b-1 > app-shuttle > div > div > div:nth-child(3) > div.box > div > div > i"
		)
		public WebElement UnSelectUserInGroupMember;
		@FindBy(
				css = "#auto-sideMenu-storageHierarchy"
		)
		public WebElement StorageHierarchyButton;
		@FindBy(
				css = "#auto-sideMenu-treeManagement"
		)
		public WebElement TreeManagementButton;
		@FindBy(
				css = "#auto-sideMenu-addTreeButton"
		)
		public WebElement AddTreeButton;
		@FindBy(
				css = "#auto-addTreeMaintenance-treeNameAr"
		)
		public WebElement AddTreeNameArabicInput;
		@FindBy(
				css = "#auto-addTreeMaintenance-treeNameEn"
		)
		public WebElement AddTreeNameEnglishInput;
		@FindBy(
				css = "#auto-addTreeMaintenance-treeLevel"
		)
		public WebElement AddTreeLevelDropdown;
		@FindBy(
				xpath = "/html[1]/body[1]/app-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/div[1]/app-tree-maintenance-list[1]/div[1]/form[1]/div[1]/mat-form-field[1]/div[1]/div[1]/div[1]/input[1]"
		)
		public WebElement SearchTreeNameInput;
		@FindBy(
				css = "#usernameInput"
		)
		public WebElement userNameViewer;
		@FindBy(
				css = "#passwordInput"
		)
		public WebElement passwordViewer;
		@FindBy(
				css = "#loginButton"
		)
		public WebElement loginButtonViewer;
		@FindBy(
				css = "div[id='treeListContainer'] span[class='k-select']"
		)
		public WebElement SelectAnArchiveDropdownList;
		@FindBy(
				xpath = "//li[contains(text(),'jopetrol')]"
		)
		public WebElement SelectTreeFromDropdownList;
		@FindBy(
				xpath = "//body/div[@id='bodyToRender']/div[@id='mainSplitter']/div[@id='content']/div[@id='outerLeftContainer']/div[@id='treeContent']/div[@id='treeSection']/div[@id='treeViewContainer']/div[@id='treeView']/ul[1]/li[1]/div[1]/span[1]"
		)
		public WebElement SelectDocumentClassFromDropdownList;
		@FindBy(
				css = "#mainGridToolBar_add"
		)
		public WebElement ClickOnAddDocument;
		@FindBy(
				xpath = "//body/div[4]/div[2]/div[1]/ul[1]/li[1]/span[1]/span[2]"
		)
		public WebElement ExpandDocumentInformation;
		@FindBy(
				css = "#documentInformationEnglishTitle"
		)
		public WebElement documentInformationEnglishTitleIndex;
		@FindBy(
				css = "#documentInformationArabicTitle"
		)
		public WebElement documentInformationArabicTitleIndex;
		@FindBy(
				xpath = "//body/div[4]/div[2]/div[1]/ul[1]/li[2]/div[1]/form[1]/div[1]/span[1]/span[1]/input[1]"
		)
		public WebElement privateSysCode1Index;
		@FindBy(
				xpath = "//body/div[4]/div[2]/div[1]/ul[1]/li[2]/div[1]/form[1]/div[2]/span[1]/span[1]/input[1]"
		)
		public WebElement privateSysCode2Index;
		@FindBy(
				css = "#documentprivate-indexes-form3"
		)
		public WebElement privateTextIndex;
		@FindBy(
				xpath = "//body/div[4]/div[2]/div[1]/ul[1]/li[2]/div[1]/form[1]/div[4]/span[1]/span[1]/input[1]"
		)
		public WebElement privateNumberIndex;
		@FindBy(
				css = "#document-submit-close"
		)
		public WebElement documentSubmitClose;

	// ********************************************************************************************************
	// **************************************** Basic Actions **************************************************
	// ********************************************************************************************************

	/**
	 * Open target URL after maximizing the browser and clearing cookies.
	 */
	public void navigateTo(String url) {
		webDriverProvider.get().manage().window().maximize();
		webDriverProvider.get().manage().deleteAllCookies();
		webDriverProvider.get().get(url);
		log.info("Navigating to the page: " + url);
	}

	/**
	 * Enter text into an input element.
	 */
	public CannedPage enterText(String elementName, String text) throws Exception {
		WebElement element = getElementWithWait(this, elementName);
		element.clear();
		element.sendKeys(text);
		log.info("Filled '" + elementName + "' with value: " + text);
		return this;
	}

	/**
	 * Click on a visible element.
	 */
	public CannedPage click(String elementName) throws Exception {
		WebElement element = getElementWithWait(this, elementName);
		element.click();
		log.info("Clicked on '" + elementName + "'");
		return this;
	}

	/**
	 * Clear input field text.
	 */
	public void clearText(String elementName) throws Exception {
		WebElement element = getElementWithWait(this, elementName);
		element.clear();
	}

	/**
	 * Navigate browser backward or forward.
	 */
	public void navigate(String direction) {
		if (direction.equals("back")) {
			webDriverProvider.get().navigate().back();
			log.info("I navigate back");
		} else {
			webDriverProvider.get().navigate().forward();
			log.info("I navigate forward");
		}
	}

	/**
	 * Refresh current page.
	 */
	public void refresh_page() {
		webDriverProvider.get().navigate().refresh();
		log.info("I refresh page");
	}

	/**
	 * Resize browser window to a specific dimension.
	 */
	public void resizeBrowser(int width, int height) {
		webDriverProvider.get().manage().window().setSize(new Dimension(width, height));
		log.info("I resize browser window size to width '" + width + "' and height '" + height + "'");
	}

	/**
	 * Maximize browser window.
	 */
	public void maximizeBrowser() {
		webDriverProvider.get().manage().window().maximize();
		log.info("I maximize browser window");
	}

	/**
	 * Wait for a fixed number of seconds.
	 */
	public CannedPage wait(String time) throws NumberFormatException, InterruptedException {
		Thread.sleep(Integer.parseInt(time) * 1000);
		return this;
	}

	// ********************************************************************************************************
	// **************************************** Assertions *****************************************************
	// ********************************************************************************************************

	/**
	 * Verify whether an element is present or not present.
	 * This method throws real exceptions so Maven/JUnit can fail properly.
	 */
	public void checkElementPresence(String elementName, boolean testCase) throws Exception {
		if (testCase) {
			if (!isElementDisplayed(elementName)) {
				throw new Exception("Element Not Present: " + elementName);
			}
		} else {
			try {
				if (isElementDisplayed(elementName)) {
					throw new Exception("Element Present: " + elementName);
				}
			} catch (Exception e) {
				if (e.getMessage() != null && e.getMessage().startsWith("Element Present")) {
					throw e;
				}
				// If element truly not found, negative check passes.
			}
		}
	}

	/**
	 * Check if an element is displayed.
	 */
	public boolean isElementDisplayed(String elementName) throws Exception {
		return getElementWithWait(this, elementName).isDisplayed();
	}

	/**
	 * Verify exact text match or mismatch.
	 */
	public void checkElementText(String elementName, String expected, boolean testCase) throws Exception {
		String elementText = getElementWithWaitText(elementName);

		if (testCase) {
			Assert.assertEquals("Text mismatch for element: " + elementName, expected, elementText);
		} else {
			Assert.assertNotEquals("Unexpected matching text for element: " + elementName, expected, elementText);
		}
	}

	/**
	 * Verify partial text containment or non-containment.
	 */
	public void checkElementpartialText(String elementName, String expected, boolean testCase) throws Exception {
		String elementText = getElementWithWaitText(elementName);

		if (testCase) {
			Assert.assertTrue(
					"Expected element '" + elementName + "' to contain '" + expected + "', but actual text was: " + elementText,
					elementText.toLowerCase().contains(expected.toLowerCase())
			);
			System.out.println("==========================================================");
			System.out.println("Actual: " + elementText);
			System.out.println("==========================================================");
		} else {
			Assert.assertFalse(
					"Expected element '" + elementName + "' not to contain '" + expected + "', but actual text was: " + elementText,
					elementText.toLowerCase().contains(expected.toLowerCase())
			);
		}
	}

	/**
	 * Get visible element text.
	 */
	public String getElementWithWaitText(String elementName) throws Exception {
		return getElementWithWait(this, elementName).getText();
	}

	/**
	 * Wait for an element to disappear.
	 */
	public void wait_Element_Disappear(String elementName) throws Exception {
		List<WebElement> elements = new ArrayList<>();
		elements.add(getElement(this, elementName));
		WebDriverWait wait = new WebDriverWait(webDriverProvider.get(), Duration.ofSeconds(30));
		wait.until(ExpectedConditions.invisibilityOfAllElements(elements));
	}

	/**
	 * Verify page title.
	 */
	public void checkTitle(String title, boolean testCase) throws Exception {
		String pageTitle = webDriverProvider.get().getTitle();

		if (testCase) {
			Assert.assertEquals("Page title mismatch", title, pageTitle);
		} else {
			Assert.assertNotEquals("Page title should not match", title, pageTitle);
		}
	}

	/**
	 * Verify attribute value.
	 */
	public void checkElementAttribute(String elementName, String attributeName, String attributeValue, boolean testCase)
			throws Exception {
		String attrVal = getElementAttribute(elementName, attributeName);

		if (testCase) {
			Assert.assertEquals(
					"Attribute mismatch for element: " + elementName + ", attribute: " + attributeName,
					attributeValue,
					attrVal
			);
		} else {
			Assert.assertNotEquals(
					"Attribute should not match for element: " + elementName + ", attribute: " + attributeName,
					attributeValue,
					attrVal
			);
		}
	}

	/**
	 * Get element attribute value.
	 */
	public String getElementAttribute(String elementName, String attributeName) throws Exception {
		WebElement element = getElementWithWait(this, elementName);
		return element.getAttribute(attributeName);
	}

	/**
	 * Check if xpath returns any elements.
	 */
	public boolean isElementPresent(String xpath) {
		try {
			return webDriverProvider.get().findElements(By.xpath(xpath)).size() > 0;
		} catch (Exception e) {
			return false;
		}
	}

	/**
	 * Verify enabled / disabled state correctly.
	 * This was one of the important fixes because the old logic could pass when it should fail.
	 */
	public void checkElementEnable(String elementName, boolean shouldBeEnabled) throws Exception {
		boolean actual = isElementEnabled(elementName);
		Assert.assertEquals("Wrong enabled/disabled state for element: " + elementName, shouldBeEnabled, actual);
	}

	/**
	 * Return enabled state of an element.
	 */
	public boolean isElementEnabled(String elementName) throws Exception {
		WebElement element = getElementWithWait(this, elementName);
		return element.isEnabled();
	}

	/**
	 * Verify checkbox checked / unchecked state correctly.
	 * This was one of the important fixes for Maven failure propagation.
	 */
	public void isCheckboxChecked(String elementName, boolean shouldBeChecked) throws Exception {
		WebElement checkbox = getElementWithWait(this, elementName);
		Assert.assertEquals("Wrong checkbox state for element: " + elementName, shouldBeChecked, checkbox.isSelected());
	}

	/**
	 * Verify radio button selected / unselected state correctly.
	 * This was one of the important fixes for Maven failure propagation.
	 */
	public void isRadioButtonSelected(String elementName, boolean shouldBeSelected) throws Exception {
		WebElement radioButton = getElementWithWait(this, elementName);
		Assert.assertEquals("Wrong radio button state for element: " + elementName, shouldBeSelected, radioButton.isSelected());
	}

	// ********************************************************************************************************
	// **************************************** UI Interaction *************************************************
	// ********************************************************************************************************

	/**
	 * Scroll page to top or end.
	 */
	public void scrollPage(String to) throws Exception {
		JavascriptExecutor executor = (JavascriptExecutor) webDriverProvider.get();

		if (to.equals("end")) {
			executor.executeScript(
					"window.scrollTo(0,Math.max(document.documentElement.scrollHeight,document.body.scrollHeight,document.documentElement.clientHeight));");
			log.info("I scroll to end of page");
		} else if (to.equals("top")) {
			executor.executeScript(
					"window.scrollTo(Math.max(document.documentElement.scrollHeight,document.body.scrollHeight,document.documentElement.clientHeight),0);");
			log.info("I scroll to top of page");
		} else {
			throw new Exception("Exception : Invalid Direction (only scroll \"top\" or \"end\")");
		}
	}

	/**
	 * Scroll until a specific element is visible.
	 */
	public void scrollToElement(String elementName) throws Exception {
		WebElement element = getElementWithWait(this, elementName);
		JavascriptExecutor executor = (JavascriptExecutor) webDriverProvider.get();
		executor.executeScript("arguments[0].scrollIntoView();", element);
		log.info("I scroll to '" + elementName + "'");
	}

	/**
	 * Hover over a specific element.
	 */
	public void hoverOverElement(String elementName) throws Exception {
		Actions action = new Actions(webDriverProvider.get());
		WebElement element = getElementWithWait(this, elementName);
		action.moveToElement(element).perform();
	}

	/**
	 * Select option from dropdown.
	 * Supports both standard select and input-based dropdown patterns.
	 */
	public void selectOptionFromDropdown(String optionValue, String dropDownListName) throws Exception {
		WebElement dropdown = getElementWithWait(this, dropDownListName);
		dropdown.clear();

		try {
			Select selectList = new Select(dropdown);
			selectList.selectByVisibleText(optionValue);
		} catch (UnexpectedTagNameException e) {
			if (dropdown.getTagName().equalsIgnoreCase("input")) {
				dropdown.click();
				dropdown.clear();
				dropdown.sendKeys(optionValue);
				dropdown.sendKeys(Keys.DOWN);
				dropdown.sendKeys(Keys.ENTER);
				Thread.sleep(1000);
			} else {
				throw new Exception("Element is neither a <select> nor an <input> tag.");
			}
		}
	}

	/**
	 * Select from standard HTML select dropdown.
	 */
	public void selectFromDropdown(String elementName, String valueToSelect) throws Exception {
		WebElement dropdownElement = getElementWithWait(this, elementName);
		Select dropdown = new Select(dropdownElement);
		dropdown.selectByVisibleText(valueToSelect);
	}

	/**
	 * Check checkbox if not already selected.
	 */
	public void checkCheckbox(String elementName) throws Exception {
		WebElement checkbox = getElementWithWait(this, elementName);
		if (!checkbox.isSelected()) {
			checkbox.click();
		}
	}

	/**
	 * Uncheck checkbox if currently selected.
	 */
	public void uncheckCheckbox(String elementName) throws Exception {
		WebElement checkbox = getElementWithWait(this, elementName);
		if (checkbox.isSelected()) {
			checkbox.click();
		}
	}

	/**
	 * Select radio button if not already selected.
	 */
	public void selectRadioButton(String elementName) throws Exception {
		WebElement radioButton = getElementWithWait(this, elementName);
		if (!radioButton.isSelected()) {
			radioButton.click();
		}
	}

	/**
	 * Accept or dismiss browser alert.
	 */
	public void handleAlert(String decision) {
		if (decision.equals("accept")) {
			webDriverProvider.get().switchTo().alert().accept();
		} else {
			webDriverProvider.get().switchTo().alert().dismiss();
		}
	}

	/**
	 * Fetch values from specific row xpaths and ensure there are no duplicates.
	 */
	public List<String> getValuesFromXpaths(int rowCount) throws Exception {
		List<String> values = new ArrayList<>();

		for (int i = 0; i < rowCount; i++) {
			String xpath = "//*[@id='ctl00_MainContent_RadGrid1_ctl00__" + i + "']/td[2]";
			WebElement element = webDriverProvider.get().findElement(By.xpath(xpath));
			String text = element.getText().trim();

			if (values.contains(text)) {
				throw new Exception("Duplicate value found: " + text);
			}

			values.add(text);
		}

		System.out.println("Fetched values from xpaths:");
		for (String value : values) {
			System.out.println(value);
		}

		return values;
	}

	/**
	 * Select a value from combo box by typing and confirming with keyboard.
	 */
	public void selectFromComboBox(String elementName, String value) throws Exception {
		WebElement comboBox = getElementWithWait(this, elementName);
		comboBox.click();
		comboBox.clear();
		comboBox.sendKeys(value);
		comboBox.sendKeys(Keys.DOWN);
		comboBox.sendKeys(Keys.ENTER);
		Thread.sleep(1000);
	}

	// ********************************************************************************************************
	// **************************************** Tab Handling ***************************************************
	// ********************************************************************************************************

	/**
	 * Switch to the newly opened browser tab.
	 */
	public void switchToNewTab() {
		ArrayList<String> tabs = new ArrayList<>(webDriverProvider.get().getWindowHandles());
		webDriverProvider.get().switchTo().window(tabs.get(1));
	}

	/**
	 * Close the latest tab and return to the first available tab.
	 */
	public void closeLatestTabAndReturnToFirstTab() {
		WebDriver driver = webDriverProvider.get();

		Set<String> allTabs = driver.getWindowHandles();
		List<String> tabs = new ArrayList<>(allTabs);

		if (tabs.size() > 1) {
			try {
				String latestTab = tabs.get(tabs.size() - 1);

				if (driver.getWindowHandles().contains(latestTab)) {
					driver.switchTo().window(latestTab);
					driver.close();

					allTabs = driver.getWindowHandles();
					tabs = new ArrayList<>(allTabs);

					if (!tabs.isEmpty()) {
						driver.switchTo().window(tabs.get(0));
					}
				} else {
					System.err.println("Error: The latest tab handle is no longer valid.");
					if (!tabs.isEmpty()) {
						driver.switchTo().window(tabs.get(0));
					}
				}
			} catch (NoSuchWindowException e) {
				System.err.println("Error: The target window is already closed.");
				allTabs = driver.getWindowHandles();
				tabs = new ArrayList<>(allTabs);
				if (!tabs.isEmpty()) {
					driver.switchTo().window(tabs.get(0));
				}
			}
		} else {
			System.out.println("No additional tabs to close.");
		}
	}
}