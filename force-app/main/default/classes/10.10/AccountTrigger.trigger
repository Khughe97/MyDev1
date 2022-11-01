trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    //check trigger switch for account
    //if on 
    system.debug('---start---');
    if (Trigger.isBefore) {
        
        AccountTriggerHandler1.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        //udpate VIP field for all its contacts.
        AccountTriggerHandler1.updateVIPforAllContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    system.debug('---end---');  
    
}
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    /* if (Trigger.isBefore) {
        Map<id, account> newAccMap = trigger.newMap;
        map<id, account> oldAccMap = trigger.oldMap;
        for (account eachAcc : trigger.new) {
            boolean updateDesc= false;
            if (Trigger.isInsert && eachAcc.Active__c == 'Yes') {
                
            }
            if (Trigger.isUpdate) {
               
                Account oldAccount = oldAccMap.get(eachacc.id);
                Account newAccount = newAccMap.get(eachacc.id);

                if(eachAcc.Active__c == 'Yes' && oldAccount.Active__c != newAccount.Active__c){
                    updateDesc = true;

                }
            }
            if (updateDesc == true) {
                eachAcc.Description = 'Account is now active. Enjoy buddy!';
            }
        }
    }
    
    
    



   
    





    /*  Map<id, account> newAccMap = trigger.newMap;
        map<id, account> oldAccMap = trigger.oldMap;

       if (trigger.isBefore && trigger.isUpdate) {
        set<id> setAccIds = newAccMap.keySet();
        integer countWSupdated = 0;

        for (ID eachId : setAccIds) {
            Account oldAccount = oldAccMap.get(eachId);
            //system.debug('old account ==> ' + oldAccount);
            string oldWebSite = oldAccount.Website;
            //system.debug('old account website ==> ' + oldWebSite);

            Account newAccount = newAccMap.get(eachId);
            //system.debug('new account ==> ' + newAccount);
            string newWebsite = newAccount.Website;
            //system.debug('new account website==> ' + newWebsite);

            if (oldWebsite != newWebsite) {
                countWSupdated++;
                system.debug('For account ' + newAccount.Name + ', website is changed to ' + newwebsite);
            }
        }
        system.debug('# of account website updated ==> ' + countWSUpdated);
    }
    





   /* Map<id, account> newAccMap = trigger.newMap;
    map<id, account> oldAccMap = trigger.oldMap;

    system.debug('---start---');
    if (Trigger.isAfter && Trigger.isUpdate) {
       set<id> setAccIds = newAccMap.keySet();
       
       for (id eachId : setAccIds) {
           system.debug('each id which is also key of maps ==> ' + eachId);
           Account newAccount = newAccMap.get(eachId);
           system.debug('new Account name ==> ' + newAccount.Name);

           Account oldAccount = oldAccMap.get(eachId);
           system.debug('old Account name ==> ' + oldAccount.Name);
       }

    }
    system.debug('---end---');



   /* Map<id, account> newAccMap = trigger.newMap;
    map<id, account> oldAccMap = trigger.oldMap;

    system.debug('---start---');
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert old map => ' + oldAccMap);
        system.debug('before insert new map => ' + newAccMap);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after insert old map => ' + oldAccMap);
        system.debug('after insert new map => ' + newAccMap);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update old map => ' + oldAccMap);
        system.debug('before update new map => ' + newAccMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after update old map => ' + oldAccMap);
        system.debug('after update new map => ' + newAccMap);
    }
    system.debug('---end---');




    /*if (trigger.isAfter) {
        list<account> newAccounts = trigger.new;

        set<id> setAccIds = new set<id>();
        for (account eachAcc : newAccounts) {
            setAccIds.add(eachAcc.Id);
        }
        system.debug('set of ids ==> ' + setAccIds);
    }

    
    
    
   /* if (trigger.isAfter && trigger.isUpdate) {
        list<account> newAccounts = trigger.new;
        for (account newAcc : newAccounts) {
            system.debug('NEW acc id ==> ' + newAcc.id + ', NEW acc name ==> ' + newAcc.Name);
        }
        list<account> oldAccounts = trigger.old;
        for (account oldAcc : oldAccounts) {
            system.debug('OLD acc id ==> ' + oldAcc.id + ', NEW acc name ==> ' + oldAcc.Name);
        }
    }
    
    
    
    
    
    
    /*if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert trigger.old ==> ' + trigger.old);
 
     }
     if (Trigger.isAfter && Trigger.isInsert) {
         system.debug('after insert trigger.old ==> ' + trigger.old);
     }
    
     if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before insert trigger.old ==> ' + trigger.old);
 
     }
     if (Trigger.isAfter && Trigger.isUpdate) {
         system.debug('after insert trigger.old ==> ' + trigger.old);
     }
     
   
   
   
   
   
   
   
   
   
   
   
   
    /*trigger.new ALWAYS gives List<sObject>
    List<account> newAccounts = trigger.new;
    system.debug('number of accounts ==> ' + newAccounts.size());

    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before trigger.new ==> ' + newAccounts);
        for (Account eachAcc : newAccounts) {
            system.debug('BEFORE acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after trigger.new ==> ' + newAccounts);
        for (Account eachAcc : newAccounts) {
            system.debug('AFTER acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
        }
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update trigger.new ==> ' + newAccounts);
        for (Account eachAcc : newAccounts) {
            system.debug('BEFORE acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after update trigger.new ==> ' + newAccounts);
        for (Account eachAcc : newAccounts) {
            system.debug('AFTER acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
        }
    }
    system.debug('---end---');












    /*if (Trigger.isBefore) {
        system.debug('BEFORE trigger - insert or update.');
        if (Trigger.isInsert) {
            system.debug('account before insert trigger called');
        } 
        if (Trigger.isUpdate) {
            system.debug('account before update trigger called.');
        }
    }
    if (Trigger.isAfter) {
        system.debug('AFTER trigger - insert or update.');
        if (Trigger.isInsert) {
            system.debug('account after insert trigger called');
        } 
        if (Trigger.isUpdate) {
            system.debug('account after update trigger called.');
        }
    }*/
    /*
if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('account before insert trigger called');
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('account after insert trigger called');
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('account before update trigger called');
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('account after update trigger called');
    }
    */
/*if (trigger.isInsert) {
        system.debug('account before insert trigger called');
    }
    if (trigger.isUpdate) {
        system.debug('account before update trigger called');
    }*/
    /*if (trigger.isBefore) {
        system.debug('account before insert trigger called');
    }
    if (Trigger.isAfter) {
        system.debug('account after insert trigger called');
    }*/
//}









