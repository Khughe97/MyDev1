public class AccConAndOppOperations {
   public static void ACC_1(){
    list<account> listACC = [select id, name, annualrevenue, type, accountsource from account];
    system.debug(listACC);
   }

    public static list<opportunity> opp(string a, string b){
    list<opportunity> opp= [select id, name from opportunity Where Leadsource =:a AND stagename =: b];
    return opp;
    }
    public static void ACC_2(){
        list<account> ACC_2= [select id, name, annualrevenue, (select name, amount, stagename from opportunities where stagename = ' closed won') from account where type = 'customer-direct'];
        for(account eachAcc: ACC_2){
        system.debug(eachAcc.name);
            for(opportunity eachOpp: eachAcc.opportunities){
            system.debug(eachOpp.name);
            }
        }

    }
    public static account ACC_3(string name, decimal revenue, string type){
        account acc= new account();
        if(name==null){
            system.debug('Account without name cannot be created');
        }else{
            acc.name=name;
            acc.type=type;
            acc.AnnualRevenue=revenue;
            insert acc;
        }return acc;
        }
    }


