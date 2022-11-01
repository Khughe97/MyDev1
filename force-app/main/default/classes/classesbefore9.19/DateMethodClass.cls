public class DateMethodClass {
    public boolean leapYearCheck( Date dt) {
        system.debug('dt==>'+ dt);
        integer yr = dt.year();
        system.debug('year from dt==>'+yr);
        boolean isLeap =date.isleapYear(yr);
        return isLeap;
    }
}
