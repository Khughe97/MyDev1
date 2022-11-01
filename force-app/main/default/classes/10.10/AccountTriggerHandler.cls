public class AccountTriggerHandler {
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
}
    
