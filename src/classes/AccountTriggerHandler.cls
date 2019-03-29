/**
 * @description Class for Account trigger Handler
 */
public with sharing class AccountTriggerHandler{
    /**
     * @description createAccounts
     */
    public static void createAccounts(List<Account> listAcc){
        try{
            upsert(listAcc);
        }catch(DMLException e){
            system.debug('Exception:'+e.getMessage());
        }
    }
}