Scenario: TC_010_Manager_001 Add New User and Group

Given [Navigation] I navigate to 'p:imageLinksManager'
And [Input] I click on 'englishButton'
And [Input] I login as 'p:imagelinksuser.AutomationTesting' with password 'p:imagelinksPass'
And [Progress] I wait for '3' sec
When [Input] I click on 'side Menu Button'
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
Then [Input] I click on 'side Menu Button'
And [Input] I click on 'User Management And Security Button'
And [Input] I click on 'Groups Button'
And [Progress] I wait for '3' sec
And [Input] I click on 'Add Groups Button'
And [Input] Set 'Add Group Name Input' value to 'random'
And [Action] I get value from 'Add Group Name Input' and save it as 'GroupName'
And [Input] I click on 'Save Group Button'
And [Progress] I wait for '4' sec
And [Input] I click on 'side Menu Button'
And [Input] I click on 'Home Page Button'



Scenario: TC_010_Manager_002 Edit Group Members

Given [Navigation] I navigate to 'p:imageLinksManager'
And [Progress] I wait for '3' sec
When [Input] I click on 'side Menu Button'
And [Input] I click on 'User Management And Security Button'
And [Input] I click on 'Groups Button'
And [Progress] I wait for '3' sec
And [Input] I click on 'sort Group Id'
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '3' sec
And [Input] I click on 'Edit Group Member Button'
And [Progress] I wait for '4' sec
And [Input] Set 'Search Users In Group Member' value to 'statemanager:UserName'
And [Progress] I wait for '4' sec
And [Input] I click on 'Select User In Group Member'
And [Input] I click on 'Group Member Save Button'
And [Progress] I wait for '3' sec
And [Input] I click on 'Group Member Back Button'
And [Progress] I wait for '3' sec
And [Input] I click on 'sort Group Id'
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '3' sec
And [Input] I click on 'Delete Group Button'
And [Input] I click on 'Yes Delete Group Button'
And [Assertion] Verify 'Fail Alert' is present
And [Input] I click on 'side Menu Button'
Then [Input] I click on 'User Management And Security Button'
And [Input] I click on 'Users Button'
And [Progress] I wait for '3' sec
And [Input] I click on 'sort User Id'
And [Input] I click on 'sort User Id'
And [Assertion] Verify 'Edit User Button' is present
And [Assertion] Verify 'Delete User Button' is present
And [Assertion] Verify 'Edit User Privileges Button' not present
And [Assertion] Verify 'Edit Storage Hierarchy Privileges Button' not present
And [Assertion] Verify 'Signature Button' is present
And [Input] I click on 'Delete User Button'
And [Input] I click on 'Yes Button'
And [Assertion] Verify 'Fail Alert' is present
And [Input] I click on 'side Menu Button'
And [Input] I click on 'Home Page Button'


Scenario: TC_010_Manager_003 Delete User And Group

Given [Navigation] I navigate to 'p:imageLinksManager'
And [Progress] I wait for '3' sec
When [Input] I click on 'side Menu Button'
And [Input] I click on 'User Management And Security Button'
And [Input] I click on 'Groups Button'
And [Progress] I wait for '3' sec
And [Input] I click on 'sort Group Id'
And [Input] I click on 'sort Group Id'
And [Input] I click on 'Edit Group Member Button'
And [Progress] I wait for '4' sec
And [Input] Set 'Search Select Users In Group Member' value to 'statemanager:UserName'
And [Progress] I wait for '4' sec
And [Input] I click on 'UnSelect User In Group Member'
And [Input] Clear 'Search Select Users In Group Member' field
And [Progress] I wait for '3' sec
And [Input] I click on 'Group Member Save Button'
And [Progress] I wait for '3' sec
And [Input] I click on 'Group Member Back Button'
And [Progress] I wait for '3' sec
And [Input] I click on 'sort Group Id'
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '3' sec
And [Input] I click on 'Delete Group Button'
And [Input] I click on 'Yes Delete Group Button'
And [Progress] I wait for '3' sec
And [Input] I click on 'side Menu Button'
And [Input] I click on 'User Management And Security Button'
And [Input] I click on 'Users Button'
And [Progress] I wait for '3' sec
And [Input] I click on 'sort User Id'
And [Input] I click on 'sort User Id'
And [Progress] I wait for '3' sec
And [Assertion] Verify 'Edit User Button' is present
And [Assertion] Verify 'Delete User Button' is present
And [Assertion] Verify 'Edit User Privileges Button' is present
And [Assertion] Verify 'Edit Storage Hierarchy Privileges Button' is present
And [Assertion] Verify 'Signature Button' is present
And [Input] I click on 'Delete User Button'
And [Input] I click on 'Yes Button'
And [Progress] I wait for '7' sec
Then [Input] I click on 'user Info Button'
And [Input] I click on 'logout Button'
And [Progress] I wait for '3' sec
And [Assertion] Verify 'login Button' is present
