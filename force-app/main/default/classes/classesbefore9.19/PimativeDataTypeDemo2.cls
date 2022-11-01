public class PimativeDataTypeDemo2 {
    public void printNewDate() {
        system.debug('create new date instances');
        Date newDate = Date.newInstance(1995,2,7);
        system.debug('date is  '+newDate);
        Date newDate2 =Date.newInstance(2021,10,7);
        system.debug('date is '+ newDate2);
        Date todayDate = date.today();
        system.debug('todays date is'+ todayDate);   
    }

    public void printNewTime(){
        time myTime = Time.newInstance(18,20,2,30);
        system.debug('my time ->'+ myTime);
        time myTime2 = Time.newInstance(15,15,2,20);
        system.debug('my time is->'+ myTime2);
    }
    public void printNewDateTime(){
        Date todayDate = date.today();
        //date and time
        time myTime = Time.newInstance(18,20,2,30);
        Datetime dt1 = datetime.newInstance(todayDate, myTime);
        system.debug('dt1-->'+dt1);
        //year,month,day
        DateTime dt2 = datetime.newInstance(2025, 9, 14);
        system.debug('dt2--> '+dt2);
        // year,month,day,hour, minute,second...it displays in gmt time zone
        DateTime dt3 =datetime.newInstance( 2022, 4, 15, 8, 8, 8);
        system.debug('dt3-->'+ dt3);
        //long time
        Long longTime1=0;
        datetime dt4 = datetime.newInstance(longTime1);
        Long longTime2= 138784564314L;
        datetime dt5 = datetime.newINSTANCE(longTime2);
        system.debug('dt4-->'+dt4);
        system.debug('dt5-->'+dt5);

        //new date time in gmt
        Datetime dt6 = datetime.newInstanceGmt(2022, 4, 15, 8, 8, 8);
        system.debug('dt6-->'+ dt6);

        //now
        Datetime dt7 = datetime.now();
        system.debug('dt7-->'+dt7);


        }
}
