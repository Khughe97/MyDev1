public class AccConAndOppOpperations {
    public static decimal ACC_4(){
        List<Opportunity> listopp = [select name, id, amount from Opportunity where stagename = 'Closed Won' ];
            decimal sum = 0;
            for(opportunity forEachOpp: listopp){
                sum += forEachOpp.amount;
                
            }
            system.debug('sum==>'+ sum);
            return sum;
            
    }
    public static List<Account> Acc_5 (string stgName){
    list<Account> listAcc = [SELECT Id, Name FROM Account WHERE Id IN (SELECT AccountId FROM Opportunity WHERE StageName =: stgName)];
    return listAcc;
    }
    public static list<account> Acc_6(){
        list<account> listAcc2 = [select Id, Name from Account where Id in (select AccountID from Contact)];
    return listAcc2;
    }
    public static void Acc_7(Id acc7ID){
        Account acc7 = [select id, name from Account where id =: acc7ID];
        Contact Con = new contact();
        Con.LastName = acc7.name;
        Con.accountID = acc7.ID;
        insert Con;
    }
    public static void Acc_8(){
        list<Opportunity> opp =[select id , name from opportunity 
        where amount!=null order BY amount desc limit 10];
        for(opportunity eachOpp: opp){
            eachOpp.description = 'This is one of the top 10 opportunities.Please work on this properly ';

            update opp;
        }
    }
    public static List<opportunity> Acc_9(integer n, id idNumber){
        Account accList = [select id, name, annualRevenue from account where id =: idNumber ];
        List<Opportunity> listOpp = new List<Opportunity>();
        for (Integer i = 0; i < n; i++) {
            opportunity op = new opportunity();
            op.stageName = 'Prospecting';
            op.closeDate = date.today().addYears(3);
            op.name = accList.Name;
            op.amount = accList.annualRevenue/n;
            op.accountID = accList.id;
            listopp.add(op);
        }
        insert listopp;
        return listopp;

    }
}
