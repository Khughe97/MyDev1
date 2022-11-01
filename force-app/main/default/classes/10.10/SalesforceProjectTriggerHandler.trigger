trigger SalesforceProjectTriggerHandler on Salesforce_Project__c (before insert, after insert, before update) {
    if (Trigger.isAfter && trigger.isInsert) {
        //call method to create default ticket.
        SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.New);
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        //validation method
        SalesforceProjectTriggerHandler.validateProjectCompletion(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
}