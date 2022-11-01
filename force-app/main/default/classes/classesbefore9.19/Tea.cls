public class Tea {
    public void Start() {
        system.debug('Step 1: Collect raw material.');
    }
    public void Execute(){
        Start();
        system.debug('Step 2: Mix everything and boil water');

    }
    public void Finish(){
        Execute();
        system.debug('Step 3: Tea is ready to serve now');

    }
}