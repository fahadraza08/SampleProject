public class NewCaseListController {

    public List<Case> getNewCases(){
        List<Case> listCases = new List<Case>();
        try{
            listCases = [Select Id,CaseNumber From Case Where Status = 'New'];
        }catch(QueryException e){}
        
        return listCases;
    }
}