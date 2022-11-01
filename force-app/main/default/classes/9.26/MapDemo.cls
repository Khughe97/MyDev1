public class MapDemo {
    public static string retrieveMonth(integer m){
        string month = '';
        Map<integer, string> monthmap = new Map<integer, string>();
        monthmap.put(1, 'January');
        monthmap.put(2, 'Feburary');
        monthmap.put(3, 'March');
        monthmap.put(4, 'April');

        monthmap.put(5, 'May');
        monthmap.put(6, 'June');
        monthmap.put(7, 'July');
        monthmap.put(8, 'August');

        monthmap.put(9, 'September');
        monthmap.put(10, 'October');
        monthmap.put(11, 'November');
        monthmap.put(12, 'December');
       
        boolean keyExists = monthmap.containsKey(m);
        if(keyExists){
            month = monthmap.get(m);
        }else{
            month = 'No such month exists. Please Behave!';
        }
        return month;
    }
}
