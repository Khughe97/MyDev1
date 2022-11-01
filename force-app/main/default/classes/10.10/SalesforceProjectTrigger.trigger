trigger SalesforceProjectTrigger on Salesforce_Project__c (before update , before insert, after insert, after update ) {
    
  /*  system.debug('-----START-----');
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug(' Salesforce_Project__c before insert trigger called');
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('Salesforce_Project__c after insert trigger called');
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('Salesforce_Project__c before update trigger called');
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('Salesforce_Project__c after update trigger called');
    }
    system.debug('-----END-----'); */
    