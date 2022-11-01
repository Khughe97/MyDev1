public class Cat {
    public string name;
    public string color;
    public Cat(string n, string clr) {
        name = n;
        color = clr;
        sleeping();
    }

   public void sleeping(){
    system.debug(name + ' is sleeping');
   }
   public cat(){
    system.debug('cat constructor called');
   }
}
