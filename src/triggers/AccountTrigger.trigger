trigger AccountTrigger on Account (before insert, before update) {
    if (Trigger.isBefore && Trigger.isInsert) {
        for(Account a:Trigger.New){
            a.ShippingState = a.BillingState;
        }
        AccountTriggerHandler.CreateAccounts(Trigger.New);
    }
}