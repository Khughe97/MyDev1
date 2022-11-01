trigger OpportunityTrigger on Opportunity (before insert, after insert, before update, after update) {
    /*if (Trigger.isBefore && Trigger.isUpdate){
       map<id, Opportunity> oldMapOpp = trigger.oldMap;
       for(Opportunity eachOpp : trigger.new){
            system.debug('opportunity new name is... ' + eachOpp.name + 'the new amount is of Opp '+ eachOpp.amount);
            system.debug('the old opp name is' + oldMapOpp.get(eachOpp.id).name + 'the old amount '+ oldMapOpp.get(eachOpp.id).amount);
       }    
    }
}*/
        if (trigger.isAfter && trigger.isUpdate){
            for(opportunity eachOpp: trigger.new){
                if( eachOpp.stageName != trigger.oldMap.get(eachOpp.id).stageName){
                    system.debug('opportunity name is ... '+ eachOpp.name + ' and descriptionis ..... ' + eachOpp.description );
                }
            }
        }
}
           












/* for(Opportunity eachOpp: trigger.old){
            system.debug('opportunity old name is... ' + eachOpp.name + 'and amount is.. '+ eachOpp.amount);
            for(Opportunity eachOp: trigger.new){
                system.debug('opportunity new name is... ' + eachOpp.name + 'and amount is.. '+ eachOpp.amount);
            }*/
