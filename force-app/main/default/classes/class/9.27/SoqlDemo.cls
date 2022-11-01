public class SoqlDemo {
    public static void accountSoql_1() {
        //SOQL query returns List<sObject>
        List<Account> listAcc = [select iD, Name, Phone from account where name like 'A%'];
        system.debug('account list ==> ' + listAcc );
       
        //SOQL can return only sObject if it is returning ONLY 1 record
        Account acc = [select id, name, phone from account ORDER BY createdDate Desc LIMIT 1];
        system.debug('Number of records '+ acc);
    }
    public static void accountSoql_2(){
    Account acc = [select ID, Name, Phone, AccountNumber from account ORDER By createdDate Desc LIMIT 1];
    system.debug('acc is' + acc);

    String accName = acc.Name;
    String accPhone = acc.phone;
    system.debug('acc name = ' + accName + ', phone is ' + accPhone);
    system.debug('acc account number is '+ acc.AccountNumber);
    system.debug('-----');

    }
    public static void accountSoql_3(){
        // SOQL can return only sObject if it is returning ONLY 1 Record
        List<Account> listAcc = [Select Id, Name, Phone, AccountNumber from Account ORDER BY createdDate Desc];
        //Datatype same as list
        for(Account eachAccount: listAcc){
            string accName = eachAccount.Name;
            string accPhone = eachAccount.Phone;
            system.debug('accName = ' + accName + ' , phone is ' + accPhone);
            system.debug( ' account number is ' + eachAccount.AccountNumber);

        }
    }
    public static void accountSOQL_Filter(){
        string accNameFilter = ' Salesforce Inc. ';
        List<Account> listAcc = [Select Id, Name from account where name = :accNameFilter];
        system.debug(listAcc);
    }
    public static void accountSOQL_Filter(string accNameFilter){
        List <account> listAcc = [select id, name from account where name = :accNameFilter];
        system.debug(listAcc);
    }
    public static void childToParent_Soql1(){
        //querying on child returns list<child_sObject>
        List<Contact> listCnt = [select id, name , Account.Name from Contact where Account.Industry = ' Energy' ];
        for(Contact eachContact : listCNt){
            string accName = eachContact.Account.Name;
            system.debug('contact name is '+ eachContact.Name + ', its acc is '+ accName);
            
        }
    }
}
