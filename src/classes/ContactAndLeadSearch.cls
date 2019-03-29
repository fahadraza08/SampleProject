public class ContactAndLeadSearch{
    public static List<List<sObject>> searchContactsAndLeads(String Str){
        List<List<sObject>> records = new List<List<sObject>>();
        try{
            records = [Find :Str IN ALL FIELDS RETURNING Contact(FirstName,LastName where FirstName = 'Smith' OR LastName = 'Smith'), Lead(FirstName,LastName where FirstName = 'Smith' OR LastName = 'Smith')];
        }catch(QueryException e){}
        return records;
    }
}