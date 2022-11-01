public class Loops_assignment {
    Integer factorialValue= 1;
    
    public Loops_assignment(){
        forLoops(factorialValue);
    }
    
    public Integer forLoops(integer n){
        for(Integer i=1; i<= n; i++){
            factorialValue = factorialValue * i;
    }
    return factorialValue;
    } 
}

