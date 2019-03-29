trigger AccountAddressTrigger on Account (before insert, before update) {
    if(Trigger.isInsert){
        for(Account NewAcc:Trigger.New){
            if(NewAcc.BillingPostalCode != null && NewAcc.Match_Billing_Address__c == true){
                NewAcc.ShippingPostalCode = NewAcc.BillingPostalCode;
            }
        }
    }
    if(Trigger.isUpdate){
        for(Account OldAcc:Trigger.Old){
            for(Account NewAcc:Trigger.New){
                if(NewAcc.BillingPostalCode != null && NewAcc.Match_Billing_Address__c == true){
                    NewAcc.ShippingPostalCode = NewAcc.BillingPostalCode;
                }
            }
        }
    }

}