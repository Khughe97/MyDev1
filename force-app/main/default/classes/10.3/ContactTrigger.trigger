Trigger ContactTrigger on Contact(before update, after update){
    if(Trigger.isBefore){
    system.debug('before update');
    }
    if (Trigger.isAfter){
    system.debug('after update');
        
    } 
}
    


