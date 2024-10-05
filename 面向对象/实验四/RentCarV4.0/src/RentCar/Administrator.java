package RentCar;

public class Administrator extends Account{
    private double profit;
    public Administrator(int account, int keyWord) {
        super(account, keyWord);
    }

    public Administrator(int account, int keyWord, double profit) {
        super(account, keyWord);
        this.profit = profit;
    }

    public Administrator() {
    }

    public double getProfit() {
        return profit;
    }

    public void setProfit(double profit) {
        this.profit = profit;
    }
}
