public class DML_2Assgn {
    public static void insert_dml() {
    List<Account> ListAcc = new List<Account>();
    
        Account acc = new account();
        acc.name = 'Kelsie Hughes' + 'Assignment';
        ListAcc.add(acc);

        Account acc1 = new account();
        acc1.name = 'Kelsie Hughes' + 'Assignment';
        ListAcc.add(acc1);


        Account acc2 = new account();
        acc2.name = 'Kelsie Hughes' + 'Assignment';
        ListAcc.add(acc2);
        
        insert ListAcc;

    }
    public static void updating_dml(){
        List<Account> ListAcc = [Select id, Name from account where name like '%Assignment%'];

        List<Account> updateAcc = new List<Account>();
        for( Account echAcc : listacc) {
            echAcc.Name = echAcc.Name + ' updation';
            updateAcc.add(echAcc);
            }if(!updateAcc.isEmpty()){
                update updateAcc;
            
        }
    }
}

