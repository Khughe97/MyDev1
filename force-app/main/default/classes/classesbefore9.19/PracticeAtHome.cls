public class PracticeAtHome {
    Integer Assignment = 1;
    public  PracticeAtHome(){
        homeWork(Assignment);
    }
    public integer homeWork( integer h){
        for(integer i = 1; i<= h; i++){
            Assignment = Assignment * i;
        }
        return Assignment; 
    }
   
}