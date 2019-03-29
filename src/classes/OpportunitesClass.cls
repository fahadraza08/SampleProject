public class OpportunitesClass{
    
    public List<Opportunity> oppList = new List<Opportunity>();
    public Map<Id, Opportunity> opm = new Map<Id, Opportunity>();
    public OpportunitesClass(){
        oppList = new List<Opportunity>();
        try{
            oppList = [Select Id, Name from Opportunity limit 1];
        }catch(QueryException e){}
        system.debug('oppList>>>>>'+oppList);
        for(Opportunity op:oppList){
            opm.put(op.Id,op);
        }
        system.debug('opm>>>>>'+opm);
        Opportunity opp = opm.values();
        system.debug('opp.Name:>>>>'+opp.Name);
    }
}