public class DemoClass{
    
    public DemoClass(){
        
    }
    
    public void createAccount(String strName){
        Account acc = new Account(Name=strName);
        try{
            insert acc;
        }catch(Exception e){}
    }
    
     // Create new contact
   public Contact createContact(String Str){
    Contact c = new Contact(FirstName=Str,Email='test@test.com');
    try{
      insert c;
    }catch(DmlException e){
      system.debug('Exception:'+e.getMessage());
    }
    return c;
  }
}