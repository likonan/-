package RentCar;

import java.io.Serializable;

public class Vehicle implements Serializable {
    private static final long serialVersionUID = 6847685468564L;
    private String brand;
    private String vehicleId;
    private int perRent;
    private boolean isRent = false;

    public Vehicle(String brand, String vehicleId, int perRent) {
        this.brand = brand;
        this.vehicleId = vehicleId;
        this.perRent = perRent;
    }

    public Vehicle() {
    }

    public boolean isRent() {
        return isRent;
    }

    public void setRent(boolean rent) {
        isRent = rent;
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

}
