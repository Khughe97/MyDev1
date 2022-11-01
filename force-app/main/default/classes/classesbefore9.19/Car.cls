public class Car {
    public string carColor = '';
    public string carName = '';

    integer maxSpeedKMperHour = 150;

    public void switchOn(){
        system.debug('starting the car now');
    }
    public void drive(){
        switchOn();
        system.debug('driving '+ carName);
    }
    public void driveAtMaxSpeed(){
        drive();
        string drivingDescription = 'driving '+ carName+ ' At '+ maxSpeedKMperHour + ' mp/h';
        system.debug(drivingDescription);
    }
}
