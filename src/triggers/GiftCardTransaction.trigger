trigger GiftCardTransaction on Gift_Card_Transaction__c (Before insert,Before update) { 
     
     if (Trigger.isBefore && Trigger.isInsert) {
         for(Gift_Card_Transaction__c GC : Trigger.New) {
             for(User usr : [Select Id,Store_Full_Name__c FROM User WHERE Store_Number__c = :GC.External_Store_Id__c limit 1 ]){
                 if(usr !=null){
                     GC.Store__c = usr.Id;
                 }
             
             }
         }
     }
}