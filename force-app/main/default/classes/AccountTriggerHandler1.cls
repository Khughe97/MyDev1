public class AccountTriggerHandler1 {
    public static void updateAccountDescription(List<account> accTriggerNew, List<account> accTriggerOld, 
                                        Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {

        Map<id, account> newAccMap = accTriggerNewMap;
        map<id, account> oldAccMap = accTriggerOldMap;
        for (account eachAcc : accTriggerNew) {
            if (Trigger.isInsert && eachAcc.Active__c == 'Yes') {
                eachAcc.Description = 'Account is now active. Enjoy!';
            }
            if (Trigger.isUpdate) {
                //id accId = eachacc.id;
                Account oldAccount = oldAccMap.get(eachacc.id);
                Account newAccount = newAccMap.get(eachacc.id);

                if(eachAcc.Active__c == 'Yes' && oldAccount.Active__c != newAccount.Active__c){
                    eachAcc.Description = 'Account is now active. Enjoy!';
                }
            }
        }
    }

    public static void updateVIPforAllContacts(List<account> accTriggerNew, List<account> accTriggerOld, 
        Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {
        //get accountsIds for which VIP is CHANGED.
        Set<Id> accountIds = new set<id>();
        for (account eachAcc : accTriggerNew) {
            if (eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.Id).VIP__c) {
                accountIds.add(eachAcc.Id);
            }
        }
        system.debug('vip is change acc ids ==> ' + accountIds);

        if(!accountIds.isEmpty()){
            //all contacts for all of those accounts.
            list<contact> listContact = [select id, vip__c, accountid, name from contact where accountid in :accountIds];
            system.debug('all contacts ==> ' + listContact);
            for (contact eachContact : listContact) {
                Account newAcc = accTriggerNewMap.get(eachContact.AccountId);
                boolean vipAcc = newAcc.VIP__c;
                eachContact.VIP__c = vipAcc;
            }
            update listContact;
        }
    }
}
       
       
       
       
       
        /* public static void updateAccountDescription(List<account> accTriggerNew, List<account> accTriggerOld, 
                                            Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {
    
            Map<id, account> newAccMap = accTriggerNewMap;
            map<id, account> oldAccMap = accTriggerOldMap;
            for (account eachAcc : accTriggerNew) {
                if (Trigger.isInsert && eachAcc.Active__c == 'Yes') {
                    eachAcc.Description = 'Account is now active. Enjoy!';
                }
                if (Trigger.isUpdate) {
                    //id accId = eachacc.id;
                    Account oldAccount = oldAccMap.get(eachacc.id);
                    Account newAccount = newAccMap.get(eachacc.id);
    
                    if(eachAcc.Active__c == 'Yes' && oldAccount.Active__c != newAccount.Active__c){
                        eachAcc.Description = 'Account is now active. Enjoy!';
                    }
                }
            }
        }
    
        public static void updateVIPforAllContacts(List<account> accTriggerNew, List<account> accTriggerOld, 
            Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {
            //get accountsIds for which VIP is CHANGED.
            Set<Id> accountIds = new set<id>();
            for (account eachAcc : accTriggerNew) {
                if (eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.Id).VIP__c) {
                    accountIds.add(eachAcc.Id);
                }
            }
            system.debug('vip is change acc ids ==> ' + accountIds);
    
            if(!accountIds.isEmpty()){
                //all contacts for all of those accounts.
                list<contact> listContact = [select id, vip__c, accountid, name from contact where accountid in :accountIds];
                system.debug('all contacts ==> ' + listContact);
                for (contact eachContact : listContact) {
                    Account newAcc = accTriggerNewMap.get(eachContact.AccountId);
                    boolean vipAcc = newAcc.VIP__c;
                    eachContact.VIP__c = vipAcc;
                }
                update listContact;
            }
        } */
       /* public class SalesforceProjectTriggerHandler {
            public static void createDefaultTicket(List<Salesforce_Project__c> spTriggerNew) {
                List<Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();
                
                for (salesforce_project__c eachSP : spTriggerNew) {
                    Salesforce_Ticket__c st = new Salesforce_Ticket__c();
                    st.Subject__c = 'Default ST';
                    st.Salesforce_Project__c = eachSP.id;
                    listST.add(st);
                }
                if (!listST.isEmpty()) {
                    insert listST;
                }
            }
        
            public static void validateProjectCompletion(List<Salesforce_Project__c> spTriggerNew, List<Salesforce_Project__c> spTriggerOld,
            Map<id, Salesforce_Project__c> spTriggerNewMap, Map<id, Salesforce_Project__c> spTriggerOldmap) {
                //get projects for which STATUS is CHANGED to 'COMPLETED'
                set<id> setProjectId = new set<id>();
                for (salesforce_project__c eachSP : spTriggerNew) {
                    if (eachSp.Status__c != spTriggerOldMap.get(eachSp.id).Status__c
                    && eachSp.Status__c == 'Completed') {
                        setProjectId.add(eachSP.id);
                    }
                }
                system.debug('sp ids in set==> ' + setProjectId);
        
                //get all tickets of 'setProjectId' which are NOT completed
                List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c
                    where salesforce_project__c in :setProjectId and status__c != 'Completed'];
        
                for (salesforce_ticket__c eachST : listST) {
                    Salesforce_Project__c sp = spTriggerNewMap.get(eachST.Salesforce_Project__c);
                    sp.addError('Cannot completed project because all its tickets are not completed. OKAY?');
                }
            }
        }
} */
