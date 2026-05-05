Scenario: TC_004_Manager_001 Arabic Manager User Privileges

Given [Navigation] I navigate to 'p:imageLinksManager'
When [Input] I login as 'p:imagelinksuser.AutomationTesting' with password 'p:imagelinksPass'
And [Progress] I wait for '3' sec
And [Input] I click on 'side Menu Button'
And [Input] I click on 'User Management And Security Button'
And [Input] I click on 'Users Button'
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
When [Input] I click on 'EditUserPrivilegesButton'
And [Input] I click on 'Expand All Button'
And [Input] I click on 'Select All Button'
And [Progress] I wait for '3' sec
And [Input] I click on 'Save Privileges Button'
And [Action] I count the number of 'mat-checkbox' elements and save as 'checkboxRowCount'
And [Assertion] All checkboxes are checked to approaches 'checkboxRowCount'
And [Input] I click on 'Back Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'EditUserPrivilegesButton'
And [Input] I click on 'Expand All Button'
And [Assertion] All checkboxes are checked to approaches 'checkboxRowCount'
And [Input] I click on 'Clear All Button'
And [Progress] I wait for '3' sec
And [Input] I click on 'Save Privileges Button'
And [Assertion] All checkboxes are unchecked to approaches 'checkboxRowCount'
And [Input] I click on 'Back Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'EditUserPrivilegesButton'
And [Input] I click on 'Expand All Button'
And [Assertion] All checkboxes are unchecked to approaches 'checkboxRowCount'
And [Input] I click on 'Back Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'Delete User Button'
And [Input] I click on 'Yes Button'
And [Progress] I wait for '5' sec
Then [Input] I click on 'user Info Button'
And [Input] I click on 'logout Button'
And [Progress] I wait for '3' sec
And [Assertion] Verify 'login Button' is present



Scenario: TC_004_Manager_002 English Manager User Privileges

Given [Navigation] I navigate to 'p:imageLinksManager'
And [Input] I click on 'englishButton'
And [Input] I login as 'p:imagelinksuser.AutomationTesting' with password 'p:imagelinksPass'
And [Progress] I wait for '3' sec
And [Input] I click on 'side Menu Button'
And [Input] I click on 'User Management And Security Button'
And [Input] I click on 'Users Button'
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
When [Input] I click on 'Edit User Privileges Button'
And [Input] I click on 'Expand All Button'
And [Input] I click on 'Select All Button'
And [Progress] I wait for '3' sec
And [Input] I click on 'Save Privileges Button'
And [Action] I count the number of 'mat-checkbox' elements and save as 'checkboxRowCount'
And [Assertion] All checkboxes are checked to approaches 'checkboxRowCount'
And [Input] I click on 'Back Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'EditUserPrivilegesButton'
And [Input] I click on 'Expand All Button'
And [Assertion] All checkboxes are checked to approaches 'checkboxRowCount'
And [Input] I click on 'Clear All Button'
And [Progress] I wait for '3' sec
And [Input] I click on 'Save Privileges Button'
And [Assertion] All checkboxes are unchecked to approaches 'checkboxRowCount'
And [Input] I click on 'Back Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'EditUserPrivilegesButton'
And [Input] I click on 'Expand All Button'
And [Assertion] All checkboxes are unchecked to approaches 'checkboxRowCount'
And [Input] I click on 'Back Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort User Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'Delete User Button'
And [Input] I click on 'Yes Button'
And [Progress] I wait for '5' sec
Then [Input] I click on 'user Info Button'
And [Input] I click on 'logout Button'
And [Progress] I wait for '3' sec
And [Assertion] Verify 'login Button' is present
