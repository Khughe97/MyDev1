public class StringDemoClass {
    public void stringMethod1(){
        string sessionDescription = 'learning string method in apex language';
        integer lengthOfStr = sessionDescription.length();
        system.debug('length of string is ->'+ lengthOfStr);

        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug('capital string is...'+sessionDescriptionInCaps);

        boolean containsApex = sessionDescription.contains('apex');
        system.debug('has apex? '+ containsApex);

        boolean containsApex2 = sessionDescription.containsIgnoreCase('apex');
        system.debug('has apex2?'+ containsApex2);

        boolean containsSalesforce = sessionDescription.contains('salesforce');
        system.debug('has salesforce?'+ containsSalesforce);

    }   
}
