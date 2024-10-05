package cars;

import java.text.DecimalFormat;//用于格式化数据
import java.util.ArrayList;
import java.util.Scanner;

public class RentMgrSys {
    public static void main(String[] args) {
        Car BWM1 = new Car("京NY28588", "宝马", "X6", 800);//创建对象
        Car BWM2 = new Car("京CNY3284", "宝马", "550i", 600);//创建对象
        Car BUICK1 = new Car("京NT37465", "别克", "林荫大道", 300);//创建对象
        Car BUICK2 = new Car("京NT96968", "别克", "GL8", 600);//创建对象

        ArrayList<Car> cars = new ArrayList<>();
        cars.add(BWM1);
        cars.add(BWM2);
        cars.add(BUICK1);
        cars.add(BUICK2);//将对象存入ArrayList

        Scanner sc = new Scanner(System.in);
        int choice1 = 0;//用于选择brand
        int choice2 = 0;//用于选择type
        String brand = null;//用于记录brand
        String type = null;//用于记录type
        int days = 0;//用于记录租聘天数

        //开始选择
        System.out.println("1.宝马  2.别克");
        System.out.println("请选择你要租凭的轿车品牌:");
        choice1 = sc.nextInt();
        if (choice1 == 1) {
            System.out.println("1.550i  2.X6");
            brand = "宝马";
        } else if (choice1 == 2) {
            System.out.println("1.林荫大道  2.GL8");
            brand = "别克";
        }
        System.out.println("请选择你要租凭的轿车型号:");
        choice2 = sc.nextInt();
        if (choice1 == 1 && choice2 == 1) {
            type = "550i";
        } else if (choice1 == 1 && choice2 == 2) {
            type = "X6";
        } else if (choice1 == 2 && choice2 == 1) {
            type = "林荫大道";
        } else if (choice1 == 2 && choice2 == 2) {
            type = "GL8";
        }
        System.out.println("请选择你要租凭的天数:");
        days = sc.nextInt();

        //设置折扣
        setAccount(days);

        //寻找相应的车辆并输出相应的费用
        for (Car car : cars) {
            if (car.getBrand().equals(brand) && car.getType().equals(type)) {
                DecimalFormat df = new DecimalFormat(".0");
                double cost = days * car.getPerRent() * car.getAccount();
                System.out.print("你需要支付的租凭费用是");
                System.out.println(df.format(cost) + "元");
                break;
            }
        }

    }

//设置折扣
    public static void setAccount(int days) {
        if (days > 150)
            Car.setAccount(0.7);
        else if (days > 30)
            Car.setAccount(0.8);
        else if (days > 7) {
            Car.setAccount(0.9);
        } else
            Car.setAccount(1.0);
    }

}
