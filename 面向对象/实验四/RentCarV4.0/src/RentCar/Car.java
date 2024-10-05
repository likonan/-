package RentCar;

public class Car extends Vehicle{
    private String type;

    public Car(String brand, String vehicleId, int perRent, String type) {
        super(brand, vehicleId, perRent);
        this.type = type;
    }

    public Car(String type) {
        this.type = type;
    }

    public Car() {

    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
