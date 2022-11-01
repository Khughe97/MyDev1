public class ListDemoForLoop {
    public static void iterateIntegerList(){
        List<integer> listInteger = new List<integer>();
        listInteger.add(15); // index 0 
        listInteger.add(21); // index 1
        listInteger.add(10); // index 2
        listInteger.add(15); // index 3
        listInteger.add(15); // index 4

        for (Integer eachInteger : listInteger) {
            system.debug(eachInteger);
        }
    }
    public static integer add(list<integer> intList){
        integer returnSUM = 0;
        for (Integer eachInt : intList) {
            returnSUM= returnSUM + eachInt;
        }
       return returnSUM;
    }
}
