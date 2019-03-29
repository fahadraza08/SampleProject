public with sharing class PSAFFBatchApex implements Database.Batchable<Lead> 
{

   private List<Lead> strParameter;

   public PSAFFBatchApex(List<Lead> strParam) 
   {
       strParameter=strParam;
   }
   
   public Iterable<Lead> start(Database.BatchableContext BC) 
   {
       system.debug('Inside Start: Heap size is ' + limits.getHeapSize() + ' enforced is ' + limits.getLimitHeapSize());
       return strParameter;
       
   }

   public void execute(Database.BatchableContext info, List<Lead> strings) 
   {    
       system.debug('Execute: Heap size is ' + limits.getHeapSize() + ' enforced is ' + limits.getLimitHeapSize());
       insert strings;
   }

   public void finish(Database.BatchableContext info) {}

}