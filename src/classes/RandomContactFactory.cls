public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer num, String Str){
        List<Contact> listCon = new List<Contact>();
        for(Integer i=0;i<num;i++){
            listCon.add(new Contact(FirstName='Test'+i,LastName=Str));
        }
        system.debug('listCon>>'+listCon);
        return listCon;
    }

}