/**
 * @description Test class for Account Trigger
 */
@isTest
public class AccountTriggerTest{
    static testMethod void unitTest(){
        List<Account> listAcc = new List<Account>();
        Account a = new Account();
        for(integer i=0;i<200;i++){
            a.Name = 'Test '+i;
            a.BillingState = 'CA';
            listAcc.add(a);
            a = new Account();
        }
        // Perform Test
        Test.startTest();
        AccountTriggerHandler.createAccounts(listAcc);                               
        Test.stopTest();
        // Verify that 200 new Accounts were inserted
        List<Account> verifyAccts = [SELECT Id,BillingState,ShippingState FROM Account];
        system.debug('verifyAccts>>>>'+verifyAccts);
        System.assertEquals(200, verifyAccts.size());    
    }
}