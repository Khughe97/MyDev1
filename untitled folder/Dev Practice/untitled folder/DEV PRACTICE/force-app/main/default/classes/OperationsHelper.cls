public class OperationsHelper{
    public decimal largestOutOftwoNumbers(decimal a, decimal b ){
        
        decimal largestNum = 0; 
        if (a>b){
            system.debug('The largest number is '+ a);
        }else{
            system.debug('The largest number is '+ b);
        }
        return largestNum;
    }
    public decimal smallestOutOfThreeNumbers( decimal x, decimal y, decimal z){
        decimal smallestNum = 0 ; 
        if(x<y && x<z){
            system.debug('Smallest number is '+ x);
        }else if(y<x && y<z ) { 
        system.debug('smallest number is '+ y );
    } else if (z<x && z<y ){
        system.debug('smallest number is'+ z);
   
        }
        return smallestNum;
    }
    public integer sumOfPositiveIntegers(integer n ){
        integer sum;
        if(n<0 ){
            sum = null;
            system.debug('we are not calculating the sum for negative numbers');
        }else{
        sum=0;
        for(integer i= 1 ; i <=n ; i++){
            sum =  sum + i;
        }
        
      }
      return sum;
    }

}