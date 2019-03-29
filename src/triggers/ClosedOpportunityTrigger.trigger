trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> tasklist = new List<Task>();
    for(Opportunity NewOP:Trigger.New){
        if(NewOP.StageName == 'Closed Won'){
            Task t = new Task();
            t.OwnerId = UserInfo.getUserId();
            t.Subject = 'Follow Up Test Task';
            t.Status = 'Open';
            t.Priority = 'Normal';
            t.WhatId = NewOP.Id;
            tasklist.add(t);            
        }
    }
    if(tasklist.size() > 0){
        insert tasklist;
    }
}