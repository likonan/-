package cars;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Scanner;

public class RentMgrSys {
    public static void main(String[] args) {
        //创建轿车对象并存入list中
        Car BWM1 = new Car("宝马", "京NY28588", 800, "X6");
        Car BWM2 = new Car("宝马", "京CNY3284", 600, "550i");
        Car BUICK1 = new Car("别克", "京NT37465", 300, "林荫大道");
        Car BUICK2 = new Car("别克", "京NT96968", 600, "GL8");
        ArrayList<Car> cars = new ArrayList<>();
        cars.add(BWM1);
        cars.add(BWM2);
        cars.add(BUICK1);
        cars.add(BUICK2);
        //创建客车对象并存入list中
        Bus jl1 = new Bus("金龙", "京6566754", 800, 16);
        Bus jl2 = new Bus("金龙", "京8696997", 800, 16);
        Bus jb1 = new Bus("金杯", "京9696996", 1500, 34);
        Bus jb2 = new Bus("金杯", "京8696998", 1500, 34);
        ArrayList<Bus> buses = new ArrayList<>();
        buses.add(jl1);
        buses.add(jl2);
        buses.add(jb1);
        buses.add(jb2);
        //创建卡车对象并存入list中
        Trunk df1 = new Trunk("东风", "京2301644", 1000, 25);
        Trunk df2 = new Trunk("东风", "京awf9861", 1500, 30);
        Trunk jf1 = new Trunk("解放", "京66fwv94", 1200, 25);
        Trunk jf2 = new Trunk("解放", "京ag97h26", 2000, 30);
        ArrayList<Trunk> trunks = new ArrayList<>();
        trunks.add(df1);
        trunks.add(df2);
        trunks.add(jf1);
        trunks.add(jf2);

        Scanner sc = new Scanner(System.in);
        int days = 0;
        System.out.println("**********欢迎光临腾飞汽车租聘公司*********");
        System.out.println("1.轿车    2.客车    3.卡车");
        int choice1 = 0, choice2 = 0, choice3 = 0;
        String brand = null, type = null;
        System.out.println("请选择你要租聘的汽车类型:");//选择汽车类型
        choice1 = sc.nextInt();
        switch (choice1) {
            case 1:
                System.out.println("1.宝马    2.别克");
                System.out.println("请选择你要租聘的汽车类型:");//选择汽车品牌
                choice2 = sc.nextInt();

                //保存品牌与型号
                switch (choice2) {
                    case 1:
                        brand = "宝马";
                        System.out.println("1.550i  2.X6");
                        System.out.println("请选择你要租聘的轿车型号:");
                        choice3 = sc.nextInt();
                        switch (choice3) {
                            case 1:
                                type = "550i";
                                break;
                            case 2:
                                type = "X6";
                                break;
                        }
                        break;
                    case 2:
                        brand = "别克";
                        System.out.println("1.林荫大道  2.GL8");
                        System.out.println("请选择你要租聘的轿车型号:");
                        choice3 = sc.nextInt();
                        switch (choice3) {
                            case 1:
                                type = "林荫大道";
                                break;
                            case 2:
                                type = "GL8";
                                break;
                        }
                        break;
                }
                break;

            case 2:
                System.out.println("1.金杯,16座    2.金龙,34座");
                System.out.println("请选择你要租聘的客车类型:");//选择客车类型
                choice2 = sc.nextInt();
                //保存客车品牌
                switch (choice2) {
                    case 1:
                        brand = "金杯";
                        break;
                    case 2:
                        brand = "金龙";
                        break;
                }
                System.out.println("请输入客车的数量:");//选择客车数量
                choice3 = sc.nextInt();
                break;
            case 3:
                System.out.println("1.东风,25吨    2.解放,30吨");
                System.out.println("请选择你要租聘的卡车类型:");//选择货车类型
                choice2 = sc.nextInt();
                //保存货车品牌
                switch (choice2) {
                    case 1:
                        brand = "东风";
                        break;
                    case 2:
                        brand = "解放";
                        break;
                }
                System.out.println("请输入卡车的数量:");//选择客车数量
                choice3 = sc.nextInt();
                break;
            default:
                System.out.println("输入错误");
                break;
        }
        System.out.println("请输入租聘天数：");//选择租聘天数
        days = sc.nextInt();
        setAccount(days);
        DecimalFormat df = new DecimalFormat(".0");

        //输出租聘车牌与费用
        switch (choice1) {
            case 1:
                for (Car car : cars) {
                    if (car.getType().equals(type)) {
                        double cost = days * car.getPerRent() * Vehicle.getAccount();
                        System.out.println("分配给你的汽车牌号是:"+car.getVehicleId());
                        System.out.print("你需要支付的租凭费用是");
                        System.out.println(df.format(cost) + "元");//输出相应的费用
                        break;
                    }
                }
                break;
            case 2:
                for (Bus bus : buses) {
                    if (bus.getBrand().equals(brand)) {
                        double cost = choice3 * days * bus.getPerRent() * Vehicle.getAccount();
                        System.out.println("分配给你的汽车牌号是:"+bus.getVehicleId());
                        System.out.print("你需要支付的租凭费用是");
                        System.out.println(df.format(cost) + "元");//输出相应的费用
                        break;
                    }
                }
                break;
            case 3:
                for (Trunk trunk : trunks) {
                    if (trunk.getBrand().equals(brand)) {
                        double cost = choice3 * days * trunk.getPerRent() * Vehicle.getAccount();
                        System.out.println("分配给你的汽车牌号是:"+trunk.getVehicleId());
                        System.out.print("你需要支付的租凭费用是");
                        System.out.println(df.format(cost) + "元");//输出相应的费用
                        break;
                    }
                }
                break;
        }
    }
    //设置折扣
    public static void setAccount(int days) {
        if (days > 150) Vehicle.setAccount(0.7);
        else if (days > 30) Vehicle.setAccount(0.8);
        else if (days > 7) {
            Vehicle.setAccount(0.9);
        } else Vehicle.setAccount(1.0);
    }
}
