Scenario: TC_101_Viewer_001 Viewer Navigate to link

Given [Navigation] I navigate to 'p:imageLinksViewer'
!-- And [Input] I login as 'SaraCompany/Sara' with password 'p:imagelinksPass' to Viewer
!-- And [Progress] I wait for '3' sec
!-- When [Input] I click on 'Select An Archive Dropdown List'
!-- And [Progress] I wait for '3' sec
!-- And [Input] I click on 'SelectTreeFromDropdownList'
!-- And [Input] I click on 'SelectDocumentClassFromDropdownList'
!-- And [Input] I click on 'ClickOnAddDocument'
!-- And [Input] I click on 'ExpandDocumentInformation'
!-- And [Input] Set 'documentInformationEnglishTitleIndex' value to 'test1'
!-- And [Input] Set 'documentInformationArabicTitleIndex' value to 'test1'
!-- And [Input] Select '3' value from 'privateSysCode1Index'
!-- And [Input] Select '15' value from 'privateSysCode2Index'
!-- And [Input] Set 'privateTextIndex' value to 'test1'
!-- And [Input] Set 'privateNumberIndex' value to 'nanotime'
!-- And [Progress] I wait for '5' sec
!-- And [Input] I click on 'submitAndCloseButton'
!-- And [Progress] I wait for '5' sec
