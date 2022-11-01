trigger leadTrigger on lead (before insert, before update, after insert, after update) {
    if(trigger.isbefore && trigger.isInsert){
        for(lead eachLead: trigger.new){
            if(eachLead.leadSource == 'Web'){
            system.debug('Rating should be Cold');
            }else{
            system.debug('Rating should be Hot');
            }
        }
    }
}