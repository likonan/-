package RentCar;

public class User extends Account{
    public User(int account, int keyWord) {
        super(account, keyWord);
    }

    public User() {
    }
    private double cost = 0.0;
    private Bill[] bills = new Bill[100];

    public Bill[] getBills() {
        return bills;
    }

    public void setBills(Bill[] bills) {
        this.bills = bills;
    }

    public void addBills(Bill bill){
        int i=0;
        while (true){
            if (bills[i] == null) {
                bills[i] = bill;
                break;
            }
            i++;
        }
    }
    public void changeBills(int choice,Bill bill){
        bills[choice-1] = bill;
        System.out.println("换车成功！");
    }

    public void showBills(){
        int i = 0;
        double cost = 0.0;
        for (Bill bill:bills){
            if (bill==null)
                break;
            if (bill.vehicle instanceof Car){
                System.out.println(i+1+".品牌："+ bill.vehicle.getBrand()+"  车牌号："+ bill.vehicle.getVehicleId()
                        +"  日租金："+ bill.vehicle.getPerRent()
                        + "  型号："+ ((Car) bill.vehicle).getType()+"  租借天数："+bill.getDays()+" 折扣："+ bill.getDiscount()
                        +"  费用："+ ((Car) bill.vehicle).getPerRent()* bill.getDays()* bill.getDiscount());
                cost  += ((Car) bill.vehicle).getPerRent()* bill.getDays()* bill.getDiscount();
            }
            if (bill.vehicle instanceof Bus){
                System.out.println(i+1+".品牌："+ bill.vehicle.getBrand()+"  车牌号："+ bill.vehicle.getVehicleId()
                        +"  日租金："+bill.vehicle.getPerRent()
                        + "  载客量："+ ((Bus) bill.vehicle).getSeats()+"  租借天数："+bill.getDays()+" 折扣："+ bill.getDiscount()
                        +"  费用："+ ((Bus) bill.vehicle).getPerRent()* bill.getDays()* bill.getDiscount());
                cost  += ((Bus) bill.vehicle).getPerRent()* bill.getDays()* bill.getDiscount();
            }
            if (bill.vehicle instanceof Trunk){
                System.out.println(i+1+".品牌："+ bill.vehicle.getBrand()+"  车牌号："+ bill.vehicle.getVehicleId()
                        +"  日租金："+ bill.vehicle.getPerRent()
                        + "  载客量："+ ((Trunk) bill.vehicle).getCapacity()+"  租借天数："+bill.getDays()+" 折扣："+ bill.getDiscount()
                        +"  费用："+ ((Trunk) bill.vehicle).getPerRent()* bill.getDays()* bill.getDiscount());
                cost  += ((Trunk) bill.vehicle).getPerRent()* bill.getDays()* bill.getDiscount();
            }
            i++;
        }
        this.cost = cost;
        showCost();
    }
    public void showCost(){
        System.out.println("一共需要支付"+cost+"元");
    }

    public double getCost() {
        return cost;
    }
}
