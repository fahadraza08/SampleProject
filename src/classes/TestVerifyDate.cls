@isTest
public class TestVerifyDate {
    static testMethod void VerifyDateTest(){
        VerifyDate.CheckDates(system.Today(),system.Today());
        VerifyDate.CheckDates(system.Today(),system.Today().addDays(31));
    }
	
}