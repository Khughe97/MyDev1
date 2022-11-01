public class daysCollection {
    public static string daysAssignment(integer k) {
        List<String> LstDays = new List<String>();
        LstDays.add('Sunday');
        LstDays.add('Monday');
        LstDays.add('Tuesday');
        LstDays.add('Wednesday');
        LstDays.add('Thursday');
        LstDays.add('Friday');
        LstDays.add('Saturday');

        string output_Day = '';
        if (k > LstDays.size()) {
            output_Day = 'No Values found';
        }else{
            output_Day = LstDays.get(k);
        }
        return output_Day;
    }
}
