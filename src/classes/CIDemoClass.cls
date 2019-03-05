public with sharing class CIDemoClass {
	public CIDemoClass() {
		//test comments
		system.debug('constructor..');
	}
	public Account createAccount(String Str){
		Account a = new Account(Name=Str);
		try{
			insert a;
		}catch(DmlException e){
			system.debug('Exception:'+e.getMessage());
		}
		return a;
	}
}