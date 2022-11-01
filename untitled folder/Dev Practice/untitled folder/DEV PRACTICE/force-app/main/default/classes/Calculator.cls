public class Calculator {
    public static decimal dynamicCalculationMethod(decimal a,decimal b, string c ){
        decimal result = 0;
        switch on c{
            when 'addition'{
                result = a+b;
            }
            when 'subtraction'{
                result = a-b;
            
            }when 'mult'{
                result = a*b;
            }
            when 'div'{
                result = a/b;
            }
            when else{
                system.debug('Wrong operation, please check your parameters');
                result = null;
            }
           
        }
        return result;
    }
    
}
