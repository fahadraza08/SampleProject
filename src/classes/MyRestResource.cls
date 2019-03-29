@RestResource(urlMapping='/Account/*')
global with sharing class MyRestResource {
    @HttpGet
    global static Account getRecord() {
        Account a = new Account();
        RestRequest request = RestContext.request;
        system.debug('request >>>>>>>>>>>>>>>>>>'+request );
        
        return a;
    }
}