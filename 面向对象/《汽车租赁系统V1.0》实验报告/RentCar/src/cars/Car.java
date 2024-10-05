package cars;

public class Car {
    private String vehicleId;
    private String brand;
    private String type;
    private int perRent;
    private static double account;
    public Car(String vehicleId, String brand, String type, int perRent) {
        this.vehicleId = vehicleId;
        this.brand = brand;
        this.type = type;
        this.perRent = perRent;
    }
    public Car() {
    }
    public String getVehicleId() {
        return vehicleId;
    }
    public void setVehicleId(String vehicleId) {
        this.vehicleId = vehicleId;
    }
    public String getBrand() {
        return brand;
    }
    public void setBrand(String brand) {
        this.brand = brand;
    }
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }
    public int getPerRent() {
        return perRent;
    }
    public double getAccount() {
        return account;
    }
    public static void setAccount(double account) {
        Car.account = account;
    }
}
