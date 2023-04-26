public with sharing class accountRecent {
   
        @AuraEnabled(cacheable=true)
        public static List<Account> getAccountList() {
            return [SELECT Id, Name , Type, Industry FROM Account Order by CreatedDate DESC LIMIT 10];
    
        }
    
}