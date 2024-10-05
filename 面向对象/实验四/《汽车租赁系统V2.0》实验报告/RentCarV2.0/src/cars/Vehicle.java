package cars;

public class Vehicle {
    private String brand;
    private String vehicleId;
    private int perRent;
    private static double account;

    public Vehicle(String brand, String vehicleId, int perRent) {
        this.brand = brand;
        this.vehicleId = vehicleId;
        this.perRent = perRent;
    }

    public Vehicle() {
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getVehicleId() {
        return vehicleId;
    }

    public void setVehicleId(String vehicleId) {
        this.vehicleId = vehicleId;
    }

    public int getPerRent() {
        return perRent;
    }

    public void setPerRent(int perRent) {
        this.perRent = perRent;
    }

    public static double getAccount() {
        return account;
    }

    public static void setAccount(double account) {
        Vehicle.account = account;
    }
}
