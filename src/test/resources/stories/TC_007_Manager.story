Scenario: TC_007_Manager_001 Arabic Manager Add, Update, Delete Group

Given [Navigation] I navigate to 'p:imageLinksManager'
And [Input] I login as 'p:imagelinksuser.AutomationTesting' with password 'p:imagelinksPass'
And [Progress] I wait for '3' sec
When [Input] I click on 'side Menu Button'
And [Input] I click on 'User Management And Security Button'
And [Input] I click on 'Groups Button'
And [Input] I click on 'Add Groups Button'
And [Assertion] Verify 'Save Group Button' is disable
And [Input] Set 'Add Group Name Input' value to 'random'
And [Action] I get value from 'Add Group Name Input' and save it as 'GroupName'
And [Input] I click on 'Save Group Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Assertion] Verify text of 'new Group Name' equals saved value 'GroupName'
And [Input] I click on 'Edit Group Button'
And [Input] Clear 'Edit Group Name Input' field
And [Assertion] Verify 'Save Edit Group Button' is disable
And [Input] Set 'Edit Group Name Input' value to 'random'
And [Action] I get value from 'Edit Group Name Input' and save it as 'GroupName'
And [Input] I click on 'Save Edit Group Button'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Assertion] Verify text of 'new Group Name' equals saved value 'GroupName'
And [Input] I click on 'Delete Group Button'
And [Input] I click on 'Yes Delete Group Button'
And [Progress] I wait for '7' sec
Then [Input] I click on 'user Info Button'
And [Input] I click on 'logout Button'
And [Progress] I wait for '3' sec
And [Assertion] Verify 'login Button' is present


Scenario: TC_007_Manager_002 English Manager Add, Update, Delete Group

Given [Navigation] I navigate to 'p:imageLinksManager'
And [Input] I click on 'englishButton'
And [Input] I login as 'p:imagelinksuser.AutomationTesting' with password 'p:imagelinksPass'
And [Progress] I wait for '3' sec
When [Input] I click on 'side Menu Button'
And [Input] I click on 'User Management And Security Button'
And [Input] I click on 'Groups Button'
And [Input] I click on 'Add Groups Button'
And [Assertion] Verify 'Save Group Button' is disable
And [Input] Set 'Add Group Name Input' value to 'random'
And [Action] I get value from 'Add Group Name Input' and save it as 'GroupName'
And [Input] I click on 'Save Group Button'
And [Progress] I wait for '3' sec
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Assertion] Verify text of 'new Group Name' equals saved value 'GroupName'
And [Input] I click on 'Edit Group Button'
And [Input] Clear 'Edit Group Name Input' field
And [Assertion] Verify 'Save Edit Group Button' is disable
And [Input] Set 'Edit Group Name Input' value to 'random'
And [Action] I get value from 'Edit Group Name Input' and save it as 'GroupName'
And [Input] I click on 'Save Edit Group Button'
And [Progress] I wait for '3' sec
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Input] I click on 'sort Group Id'
And [Progress] I wait for '5' sec
And [Assertion] Verify text of 'new Group Name' equals saved value 'GroupName'
And [Input] I click on 'Delete Group Button'
And [Input] I click on 'Yes Delete Group Button'
And [Progress] I wait for '7' sec
Then [Input] I click on 'user Info Button'
And [Input] I click on 'logout Button'
And [Progress] I wait for '3' sec
And [Assertion] Verify 'login Button' is present