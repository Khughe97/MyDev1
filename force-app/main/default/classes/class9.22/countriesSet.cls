public class countriesSet {
    public static void capitilizeCountries(){
        Set<string> countries = new Set<string>();
        countries.add('India');
        countries.add('Japan');
        countries.add('America');
        countries.add('Austrailia');
        countries.add('Brazil');
        countries.add('Canada');
        
        Set<string> countriesInCaps = new Set<string>();
        for(string eachCountry : countries){
            
        string capStr = eachCountry.toUppercase();
        countriesInCaps.add(capStr);
        }
       system.debug('countries in caps->'+ countriesInCaps);

    Map<string, integer> marksObtainInMaths = new Map<string, integer>();
    marksObtainInMaths.put('0111CE112', 40 );
    marksObtainInMaths.put('0111CE102', 19 );
    marksObtainInMaths.put('0111CE100', 33 );
    marksObtainInMaths.put('0111CE098', 40 );
    
    integer x = marksObtainInMaths.get('0111CE098');
    system.debug('Marks obtain by student with roll number = 0111CE098 : ' + x);
    }
}
