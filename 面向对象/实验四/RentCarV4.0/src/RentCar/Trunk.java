package RentCar;

public class Trunk extends Vehicle{
    private int capacity;

    public Trunk(String brand, String vehicleId, int perRent, int capacity) {
        super(brand, vehicleId, perRent);
        this.capacity = capacity;
    }

    public Trunk(int capacity) {
        this.capacity = capacity;
    }

    public Trunk() {

    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }
}
