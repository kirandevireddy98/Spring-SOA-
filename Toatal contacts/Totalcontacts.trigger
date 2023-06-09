trigger Totalcontacts on Contact  (after update, after insert, after delete, after Undelete) {    
    
    if(trigger.isInsert && trigger.isAfter){
        Set<id> AccIds = new Set<Id>();
        for(Contact con : trigger.new){
            if(con.accountID != null) {
                AccIds.add(con.accountid);
            }
        }
        List<Account> accList = [SELECT Id,(SELECT id FROM contacts) FROM Account WHERE ID IN : AccIds];
        for(Account acc :accList){
            acc.Number_of_Contacts__c = acc.contacts.size();
        }
        update accList;
    }
    if(trigger.isUpdate && trigger.isAfter){
        Set<id> AccIds = new Set<Id>();
        for(Contact con : trigger.new){
            if(con.accountID != null) {
                AccIds.add(con.accountid);
            }
        }
        List<Account> accList = [SELECT Id,(SELECT id FROM contacts) FROM Account WHERE ID IN : AccIds];
        for(Account acc :accList){
            acc.Number_of_Contacts__c = acc.contacts.size();
        }
        update accList;
    }
    if(trigger.isDelete && trigger.isAfter){
        Set<id> AccIds = new Set<Id>();
        for(Contact con : trigger.old){
            if(con.accountID != null) {
                AccIds.add(con.accountid);
            }
        }
        List<Account> accList = [SELECT Id,(SELECT id FROM contacts) FROM Account WHERE ID IN : AccIds];
        for(Account acc :accList){
            acc.Number_of_Contacts__c = acc.contacts.size();
        }
        update accList;
    }
    if(trigger.isUndelete && trigger.isAfter){
        Set<id> AccIds = new Set<Id>();
        for(Contact con : trigger.new){
            if(con.accountID != null) {
                AccIds.add(con.accountid);
            }
        }
        List<Account> accList = [SELECT Id,(SELECT id FROM contacts) FROM Account WHERE ID IN : AccIds];
        for(Account acc :accList){
            acc.Number_of_Contacts__c = acc.contacts.size();
        }
        update accList;
    }
}