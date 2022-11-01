public class SOQL_Assignment {
    public static void soql_WhereClause() {
        
        List<Contact> lstcontact = [select lastname from contact where lastname like '%A%'];
        system.debug(lstcontact);
        system.debug('size of contacts with A: ' + lstcontact.size());

    }
    public static void soql_formethod(){
        List<Contact> lstcontact =[select lastname, phone from contact];
        system.debug('All records last name and phone'+ lstcontact);
        
        for(contact eachContact : lstcontact){
            string cLastastName = eachContact.Lastname;
            string cPhone = eachContact.Phone;
            system.debug(cLastastName);
            system.debug(cPhone);
        }
    }
}
