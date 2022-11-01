public class Students {
    public string firstName;
    public string lastName;
    public integer classYear;
    public string major;
    
    public string generateReport(){
        system.debug('report generate for ' + firstName + lastName+ ' of '+ classYear + major);
        return major; 
    }
}

