package PrimaryData;

import RentCar.Bus;
import RentCar.Car;
import RentCar.Trunk;
import RentCar.Vehicle;

import java.io.*;
import java.util.ArrayList;
//本主方法用于对系统车辆的初始化
public class WriteData {
    public static void main(String[] args) throws IOException {
        ObjectOutputStream vehicleOut = new ObjectOutputStream(new FileOutputStream("E:\\IdeaProjects\\JavaSE_Code\\RentCarV4.0\\src\\vehicle.txt"));
        ArrayList<Vehicle> vehicles = new ArrayList<>();
        Vehicle BWM1 = new Car("宝马", "京NY28588", 800, "X6");
        Vehicle BWM2 = new Car("宝马", "京CNY3284", 600, "550i");
        Vehicle BUICK1 = new Car("别克", "京NT37465", 300, "林荫大道");
        Vehicle BUICK2 = new Car("别克", "京NT96968", 600, "GL8");
        vehicles.add(BWM1);
        vehicles.add(BWM2);
        vehicles.add(BUICK1);
        vehicles.add(BUICK2);
        //创建客车对象并存入list中
        Vehicle jl1 = new Bus("金龙", "京6566754", 800, 16);
        Vehicle jl2 = new Bus("金龙", "京8696997", 800, 16);
        Vehicle jb1 = new Bus("金杯", "京9696996", 1500, 34);
        Vehicle jb2 = new Bus("金杯", "京8696998", 1500, 34);
        vehicles.add(jl1);
        vehicles.add(jl2);
        vehicles.add(jb1);
        vehicles.add(jb2);
        //创建卡车对象并存入list中
        Vehicle df1 = new Trunk("东风", "京2301644", 1000, 25);
        Vehicle df2 = new Trunk("东风", "京awf9861", 1500, 30);
        Vehicle jf1 = new Trunk("解放", "京66fwv94", 1200, 25);
        Vehicle jf2 = new Trunk("解放", "京ag97h26", 2000, 30);
        vehicles.add(df1);
        vehicles.add(df2);
        vehicles.add(jf1);
        vehicles.add(jf2);

        vehicleOut.writeObject(vehicles);
        vehicleOut.close();
    }
}
