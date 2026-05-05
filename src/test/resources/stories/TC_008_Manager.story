Scenario: TC_008_Manager_001 Arabic Manager Group Privileges

Given [Navigation] I navigate to 'p:imageLinksManager'
And [Input] I login as 'p:imagelinksuser.AutomationTesting' with password 'p:imagelinksPass'
And [Progress] I wait for '3' sec
And [Input] I click on 'side Menu Button'
And [Input] I click on 'User Management And Security Button'
And [Input] I click on 'Groups Button'
And [Input] I click on 'Add Groups Button'
And [Input] Set 'Add Group Name Input' value to 'random'
And [Input] I click on 'Save Group Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
When [Input] I click on 'Edit Group Privileges Button'
And [Input] I click on 'Group Expand All Button'
And [Input] I click on 'Group Select All Button'
And [Progress] I wait for '3' sec
And [Input] I click on 'Save Group Privileges Button'
And [Action] I count the number of 'mat-checkbox' elements and save as 'checkboxRowCount'
And [Assertion] All checkboxes are checked to approaches 'checkboxRowCount'
And [Input] I click on 'Back Group Privileges Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'Edit Group Privileges Button'
And [Input] I click on 'Group Expand All Button'
And [Assertion] All checkboxes are checked to approaches 'checkboxRowCount'
And [Input] I click on 'Clear All Group Privileges Button'
And [Progress] I wait for '3' sec
And [Input] I click on 'Save Group Privileges Button'
And [Assertion] All checkboxes are unchecked to approaches 'checkboxRowCount'
And [Input] I click on 'Back Group Privileges Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'Edit Group Privileges Button'
And [Input] I click on 'Group Expand All Button'
And [Assertion] All checkboxes are unchecked to approaches 'checkboxRowCount'
And [Input] I click on 'Back Group Privileges Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'Delete Group Button'
And [Input] I click on 'Yes Delete Group Button'
And [Progress] I wait for '5' sec
Then [Input] I click on 'user Info Button'
And [Input] I click on 'logout Button'
And [Progress] I wait for '3' sec
And [Assertion] Verify 'login Button' is present


Scenario: TC_008_Manager_002 English Manager Group Privileges

Given [Navigation] I navigate to 'p:imageLinksManager'
And [Input] I click on 'englishButton'
And [Input] I login as 'p:imagelinksuser.AutomationTesting' with password 'p:imagelinksPass'
And [Progress] I wait for '3' sec
And [Input] I click on 'side Menu Button'
And [Input] I click on 'User Management And Security Button'
And [Input] I click on 'Groups Button'
And [Input] I click on 'Add Groups Button'
And [Input] Set 'Add Group Name Input' value to 'random'
And [Input] I click on 'Save Group Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
When [Input] I click on 'Edit Group Privileges Button'
And [Input] I click on 'Group Expand All Button'
And [Input] I click on 'Group Select All Button'
And [Input] I click on 'Save Group Privileges Button'
And [Action] I count the number of 'mat-checkbox' elements and save as 'checkboxRowCount'
And [Assertion] All checkboxes are checked to approaches 'checkboxRowCount'
And [Input] I click on 'Back Group Privileges Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'Edit Group Privileges Button'
And [Input] I click on 'Group Expand All Button'
And [Assertion] All checkboxes are checked to approaches 'checkboxRowCount'
And [Input] I click on 'Clear All Group Privileges Button'
And [Input] I click on 'Save Group Privileges Button'
And [Assertion] All checkboxes are unchecked to approaches 'checkboxRowCount'
And [Input] I click on 'Back Group Privileges Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'Edit Group Privileges Button'
And [Input] I click on 'Group Expand All Button'
And [Assertion] All checkboxes are unchecked to approaches 'checkboxRowCount'
And [Input] I click on 'Back Group Privileges Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'Delete Group Button'
And [Input] I click on 'Yes Delete Group Button'
And [Progress] I wait for '5' sec
Then [Input] I click on 'user Info Button'
And [Input] I click on 'logout Button'
And [Progress] I wait for '3' sec
And [Assertion] Verify 'login Button' is present