public with sharing class CIDemoClass {
	public CIDemoClass() {
		system.debug('constructor..');
	}
	//create new account
	public Account createAccount(String Str){
		Account a = new Account(Name=Str);
		try{
			insert a;
		}catch(DmlException e){
			system.debug('Exception:'+e.getMessage());
		}
		return a;
	}
	// Create new contact
	public Contact createContact(String Str){
		Contact c = new Contact(FirstName=Str);
		try{
			insert c;
		}catch(DmlException e){
			system.debug('Exception:'+e.getMessage());
		}
		return c;
	}
}