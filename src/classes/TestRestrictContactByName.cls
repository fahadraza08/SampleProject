@isTest
public class TestRestrictContactByName {
    static testMethod void VerifyDateTest(){
        Contact c = new Contact(FirstName='test',LastName='INVALIDNAME');
        insert c;
    }
	
}