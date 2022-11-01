public class SetDemo {
    public static void citySet() {
    Set<string> cities = new Set<string>();
    cities.add('Tokyo');
    cities.add('Libson');
    cities.add('Berlin');
    cities.add('Nairobi');
    cities.add('Tokyo');
    cities.add('Libson');
    cities.add('Berlin');
    cities.add('Nairobi');
    system.debug('cities set'+ cities);
    }
    public static void randomIntegersSet(){
    Set<Integer> randomIntegers = new Set<Integer>();  
      randomIntegers.add(10);
      randomIntegers.add(21);
      randomIntegers.add(15);
      randomIntegers.add(15);
      randomIntegers.add(15);
      randomIntegers.add(15);
      system.debug('random integers are ' + randomIntegers);
    }
    public static set<integer> setFromList(List<integer> l1){
        Set<integer> s1 = new Set<integer>();
        s1.addAll(l1);
        return s1;
    }
    public static void capitalizeAllSet(){
        Set<string> cities = new Set<string>();
        cities.add('Tokyo');
        cities.add('Libson');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Libson');
        cities.add('Berlin');
        cities.add('Nairobi');
        system.debug('cities set'+ cities);

        Set<string> citiesInCaps = new Set<string>();
        for (string eachCity : cities) {
            string tempStr = eachCity.toUpperCase();
            citiesInCaps.add(tempStr);
        }
        system.debug('cities in capital'+ citiesInCaps);
    }
    
}
