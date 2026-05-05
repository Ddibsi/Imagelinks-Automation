Scenario: TC_003_Manager_001 Arabic Manager Add, Update, Delete User

Given [Navigation] I navigate to 'p:imageLinksManager'
And [Input] I login as 'p:imagelinksuser.AutomationTesting' with password 'p:imagelinksPass'
And [Progress] I wait for '3' sec
When [Input] I click on 'side Menu Button'
And [Input] I click on 'User Management And Security Button'
And [Input] I click on 'Users Button'
And [Input] I click on 'Add Users Button'
And [Assertion] Verify 'save Button' is disable
And [Input] Set 'Add User Name Input' value to 'random'
And [Action] I get value from 'Add User Name Input' and save it as 'UserName'
And [Input] Set 'Add Full Name Input' value to 'statemanager:UserName'
And [Input] Set 'PasswordInput' value to '123'
And [Input] Set 'Add Email Input' value to 'statemanager:UserName'
And [Input] Set 'Add Abbreviation Input' value to 'statemanager:UserName'
And [Assertion] Verify 'save Button' is disable
And [Assertion] Verify 'Email Invalid Format' equals 'تنسيق غير صالح' text
And [Input] Set 'Add User Name Input' value to 'statemanager:UserName'
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
And [Assertion] Verify text of 'new User Name' equals saved value 'UserName'
And [Input] I click on 'EditUserButton'
And [Progress] I wait for '5' sec
And [Input] Set 'Edit User Name Input' value to 'random'
And [Action] I get value from 'Edit User Name Input' and save it as 'UserName'
And [Input] Set 'Edit Full Name Input' value to 'statemanager:UserName'
And [Input] Set 'Edit Email Input' value to 'statemanageremail:UserName'
And [Input] Set 'Edit Abbreviation Input' value to 'statemanager:UserName'
And [Input] I click on 'save Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Assertion] Verify text of 'new User Name' equals saved value 'UserName'
And [Input] I click on 'Delete User Button'
And [Input] I click on 'Yes Button'
And [Progress] I wait for '7' sec
Then [Input] I click on 'user Info Button'
And [Input] I click on 'logout Button'
And [Progress] I wait for '3' sec
And [Assertion] Verify 'login Button' is present




Scenario: TC_003_Manager_002 English Manager Add, Update, Delete User

Given [Navigation] I navigate to 'p:imageLinksManager'
And [Input] I click on 'englishButton'
And [Input] I login as 'p:imagelinksuser.AutomationTesting' with password 'p:imagelinksPass'
And [Progress] I wait for '3' sec
When [Input] I click on 'side Menu Button'
And [Input] I click on 'User Management And Security Button'
And [Input] I click on 'Users Button'
And [Input] I click on 'Add Users Button'
And [Assertion] Verify 'save Button' is disable
And [Input] Set 'Add User Name Input' value to 'random'
And [Action] I get value from 'Add User Name Input' and save it as 'UserName'
And [Input] Set 'Add Full Name Input' value to 'statemanager:UserName'
And [Input] Set 'PasswordInput' value to '123'
And [Input] Set 'Add Email Input' value to 'statemanager:UserName'
And [Input] Set 'Add Abbreviation Input' value to 'statemanager:UserName'
And [Assertion] Verify 'save Button' is disable
And [Assertion] Verify 'Email Invalid Format' equals 'Invalid Format' text
And [Input] Set 'Add User Name Input' value to 'statemanager:UserName'
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
And [Assertion] Verify text of 'new User Name' equals saved value 'UserName'
And [Input] I click on 'EditUserButton'
And [Progress] I wait for '5' sec
And [Input] Set 'Edit User Name Input' value to 'random'
And [Action] I get value from 'Edit User Name Input' and save it as 'UserName'
And [Input] Set 'Edit Full Name Input' value to 'statemanager:UserName'
And [Input] Set 'Edit Email Input' value to 'statemanageremail:UserName'
And [Input] Set 'Edit Abbreviation Input' value to 'statemanager:UserName'
And [Input] I click on 'save Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Assertion] Verify text of 'new User Name' equals saved value 'UserName'
And [Input] I click on 'Delete User Button'
And [Input] I click on 'Yes Button'
And [Progress] I wait for '7' sec
Then [Input] I click on 'user Info Button'
And [Input] I click on 'logout Button'
And [Progress] I wait for '3' sec
And [Assertion] Verify 'login Button' is present
