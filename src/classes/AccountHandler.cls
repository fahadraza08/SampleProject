public class AccountHandler{
    public static Account insertNewAccount(String Str){
        Account acc = new Account(Name=Str);
        try{
            insert acc;
            
        }catch(DMLException e){
        	system.debug('Exception:' +e.getMessage());
            return null;
        }
        return acc;
        
    }
}