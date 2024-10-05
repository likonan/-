package RentCar;

public class Bill {
    private int days;
    private double discount;

     Vehicle vehicle = null;

    public void addVehicle(Vehicle vehicle){
        this.vehicle = vehicle;
    }

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }
}
