public class PlayingWithDates {
    public void printDateOutput() {
        date TodayDate = date.today();
        system.debug('Todays date is '+ TodayDate);
    
    date dT1 = date.newInstance( 2789,11,5);
    date dT2 = date.newInstance(1459,3,4);
    integer dayInt= 13;
    integer monthInt= 10;
    integer yearInt= 2022;
    //integer dayInt= dT1.day();
   // integer monthInt= dtT.month
    //integer yearInt=dT1.year


    date newDate = date.newInstance(dayInt,monthInt,yearInt);
    system.debug(newDate);


    }
}
