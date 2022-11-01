public class Candidates {
    public string name;
    public string gender;
    public static string companyName;
    public static integer candidateCount = 0;
    public Candidates(){
        system.debug('constructor called');
        candidateCount++;
    }

   public void printCandidate() {
    system.debug(' Candidate name is '+ name);
    system.debug('gender is ' + gender);
    system.debug('company name is '+ companyName);
    system.debug('====End====');

   }
}
