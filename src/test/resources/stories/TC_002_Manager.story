Scenario: TC_002_Manager_001 Arabic Manager Login

Given [Navigation] I navigate to 'p:imageLinksManager'
When [Input] I login as 'p:imagelinksuser.AutomationTesting' with password 'p:imagelinksPass'
And [Progress] I wait for '3' sec
And [Assertion] Verify 'UserNameValue' contains 'AutomationTesting' text
And [Input] I click on 'user Info Button'
Then [Input] I click on 'logout Button'
And [Progress] I wait for '3' sec
And [Assertion] Verify 'login Button' is present


Scenario: TC_002_Manager_002 English Manager Login

Given [Navigation] I navigate to 'p:imageLinksManager'
And [Input] I click on 'englishButton'
When [Input] I login as 'p:imagelinksuser.AutomationTesting' with password 'p:imagelinksPass'
And [Progress] I wait for '3' sec
And [Assertion] Verify 'UserNameValue' contains 'AutomationTesting' text
And [Input] I click on 'user Info Button'
Then [Input] I click on 'logout Button'
And [Progress] I wait for '3' sec
And [Assertion] Verify 'login Button' is present
