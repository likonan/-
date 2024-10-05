package RentCar;

public class Bus extends Vehicle{
    private int seats;

    public Bus(String brand, String vehicleId, int perRent, int seats) {
        super(brand, vehicleId, perRent);
        this.seats = seats;
    }

    public Bus(int seats) {
        this.seats = seats;
    }

    public Bus() {

    }

    public int getSeats() {
        return seats;
    }

    public void setSeats(int seats) {
        this.seats = seats;
    }
}
