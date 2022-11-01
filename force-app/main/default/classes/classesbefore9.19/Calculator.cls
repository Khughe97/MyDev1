public class Calculator {
    public void printNewMessage(string msg){
        //this is INSIDE of the method.
        //we use msg (variable name of parameter HERE)
        system.debug(msg);
    }
    public string printAndReturnMessage(string msg){
    string returnStr= msg + '...ok cool';
    return returnStr; 
    }
    
    public integer add(integer i, integer j, integer k){
        integer sum = i + j + k;
        return sum;

    }
   
}