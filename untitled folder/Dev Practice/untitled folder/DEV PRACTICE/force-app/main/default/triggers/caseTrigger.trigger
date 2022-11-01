trigger caseTrigger on case (before insert, before update, after insert, after update) {
    system.debug('we are in the triggers');
    if(trigger.isBefore && trigger.isInsert){
        for (case eachCase : trigger.new) {
            if(eachCase.origin == 'Email'){
                eachCase.status = 'New';
                eachCase.priority = 'Medium';
            }
        }
    }
}






   /* if (trigger.isBefore) {
        system.debug('We are in the before triggers');
    }
    if (trigger.isInsert) {
       // system.debug(' we are in before-insert triggers');
    }
    if (trigger.isUpdate) {
        //system.debug('we are in before-update triggers');
    List<case> listcase = Trigger.new ;
    for(case eachCase: listcase){
        system.debug('case number ' + eachCase.caseNumber + 'was created with id '+ eachCase.id + 'on ' + eachCase.createdDate ); 
    } 


   if(trigger.isAfter){
    system.debug('We are in the after triggers');
   }
    if(trigger.isInsert){
        //system.debug('We are in the after-Insert triggers');
    }
        if(trigger.isUpdate){
        system.debug('We are in the after-Update triggers');
            for (case eachCase : trigger.new) {
            if(eachCase.origin != trigger.oldMap.get(eachCase.id).Origin){
                system.debug('Case origin is changed for ' +eachCase.CaseNumber);
                }
            }
        }
    }
}
*/
