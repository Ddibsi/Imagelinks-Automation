Scenario: TC_006_Manager_001 Arabic Manager User Signature is present and not present

Given [Navigation] I navigate to 'p:imageLinksManager'
And [Input] I login as 'p:imagelinksuser.AutomationTesting' with password 'p:imagelinksPass'
And [Progress] I wait for '3' sec
And [Input] I click on 'side Menu Button'
And [Input] I click on 'User Management And Security Button'
And [Input] I click on 'Users Button'
And [Input] Set 'SearchUserNameInput' value to 'p:userName.testAuto'
And [Input] I click on 'SearchButton'
And [Progress] I wait for '3' sec
When [Input] I click on 'Signature Button'
And [Assertion] Verify 'Uploaded Image Signature' not present
And [Input] I click on 'Close Signature Button'
And [Input] Set 'SearchUserNameInput' value to 'p:userName.AutomationTesting'
And [Input] I click on 'SearchButton'
And [Progress] I wait for '3' sec
And [Input] I click on 'Signature Button'
And [Assertion] Verify 'Uploaded Image Signature' is present
And [Input] I click on 'Close Signature Button'
And [Input] I click on 'Add Users Button'
And [Input] Set 'Add User Name Input' value to 'random'
And [Action] I get value from 'Add User Name Input' and save it as 'UserName'
And [Input] Set 'Add Full Name Input' value to 'statemanager:UserName'
And [Input] Set 'PasswordInput' value to '123'
And [Input] Set 'Add Email Input' value to 'statemanageremail:UserName'
And [Input] Set 'Add Abbreviation Input' value to 'statemanager:UserName'
And [Input] I click on 'save Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'Signature Button'
And [Assertion] Verify 'Uploaded Image Signature' not present
And [Input] I click on 'Close Signature Button'
And [Input] I click on 'Delete User Button'
And [Input] I click on 'Yes Button'
And [Progress] I wait for '7' sec
Then [Input] I click on 'user Info Button'
And [Input] I click on 'logout Button'
And [Progress] I wait for '3' sec
And [Assertion] Verify 'login Button' is present


Scenario: TC_006_Manager_002 English Manager User Signature is present and not present

Given [Navigation] I navigate to 'p:imageLinksManager'
And [Input] I click on 'englishButton'
And [Input] I login as 'p:imagelinksuser.AutomationTesting' with password 'p:imagelinksPass'
And [Progress] I wait for '3' sec
And [Input] I click on 'side Menu Button'
And [Input] I click on 'User Management And Security Button'
And [Input] I click on 'Users Button'
And [Input] Set 'SearchUserNameInput' value to 'p:userName.testAuto'
And [Input] I click on 'SearchButton'
And [Progress] I wait for '3' sec
When [Input] I click on 'Signature Button'
And [Assertion] Verify 'Uploaded Image Signature' not present
And [Input] I click on 'Close Signature Button'
And [Input] Set 'SearchUserNameInput' value to 'p:userName.AutomationTesting'
And [Input] I click on 'SearchButton'
And [Progress] I wait for '3' sec
And [Input] I click on 'Signature Button'
And [Assertion] Verify 'Uploaded Image Signature' is present
And [Input] I click on 'Close Signature Button'
And [Input] I click on 'Add Users Button'
And [Input] Set 'Add User Name Input' value to 'random'
And [Action] I get value from 'Add User Name Input' and save it as 'UserName'
And [Input] Set 'Add Full Name Input' value to 'statemanager:UserName'
And [Input] Set 'PasswordInput' value to '123'
And [Input] Set 'Add Email Input' value to 'statemanageremail:UserName'
And [Input] Set 'Add Abbreviation Input' value to 'statemanager:UserName'
And [Input] I click on 'save Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'Signature Button'
And [Assertion] Verify 'Uploaded Image Signature' not present
And [Input] I click on 'Close Signature Button'
And [Input] I click on 'Delete User Button'
And [Input] I click on 'Yes Button'
And [Progress] I wait for '7' sec
Then [Input] I click on 'user Info Button'
And [Input] I click on 'logout Button'
And [Progress] I wait for '3' sec
And [Assertion] Verify 'login Button' is present