public class ContactSearch{
    public static List<Contact> searchForContacts(String Str1, String Str2){
        List<Contact> listCon = new List<Contact>();
        try{
            listCon = [Select Id,Name From Contact where LastName = :Str1 AND MailingPostalCode = :Str2];
        }catch(QueryException e){}
        return listCon;
    }
}