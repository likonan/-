package RentCar;

import java.io.*;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Scanner;

@SuppressWarnings(value = "all")
public class Main {

    public static void main(String[] args) throws InterruptedException, IOException, ClassNotFoundException {
        //用于模仿多线程系统维护
        SystemMaintenance sm = new SystemMaintenance();
        sm.start();
        sm.join();

        showLoginScreen();//显示登陆界面
        int choice = 0;//记录使用者的选择
        Scanner sc = new Scanner(System.in);

        //系统执行的主要功能区
        loop:
        while (true) {
            System.out.println("请输入你的选择:");
            choice = sc.nextInt();
            switch (choice) {
                case 1:
                    HashSet<Account> users1 = getHashSet();//从文件中获取HashSet<Account>类型的对象
                    Account u = logIn(users1);//记录此时登陆的用户
                    if (u instanceof User) {
                        System.out.println("用户登陆成功！");
                        showUserFunc();//显示用户功能
                        loop1:
                        while (true) {
                            System.out.println("请输入你的选择：");
                            choice = sc.nextInt();//记录选择
                            switch (choice) {
                                case 1:
                                    ArrayList<Vehicle> vehicle1 = getArrayList();//从文件中获取ArrayList<Vehicle>类型的对象
                                    showVehicle(vehicle1);//显示车辆信息
                                    break;
                                case 2:
                                    ArrayList<Vehicle> vehicle2 = getArrayList();//从文件中获取ArrayList<Vehicle>类型的对象
                                    rentVehicle(vehicle2, u);//用户租借车辆
                                    break;
                                case 3:
                                    ArrayList<Vehicle> vehicle3 = getArrayList();//从文件中获取ArrayList<Vehicle>类型的对象
                                    changeVehicle(vehicle3, u);//用户更换车辆
                                    break;
                                case 4:
                                    HashSet<Account> users4 = getHashSet();//从文件中获取HashSet<Account>类型的对象
                                    pay(users4, u);//模拟用户支付
                                    break;
                                default:
                                    break loop1;
                            }
                            showUserFunc();//显示用户功能
                        }
                    } else if (u instanceof Administrator) {
                        System.out.println("管理员登陆成功！");
                        showAdminFunc();//显示管理员功能
                        loop2:
                        while (true) {
                            System.out.println("请输入你的选择：");
                            choice = sc.nextInt();//记录选择
                            switch (choice) {
                                case 1:
                                    ArrayList<Vehicle> vehicle1 = getArrayList();//从文件中获取ArrayList<Vehicle>类型的对象
                                    showVehicle(vehicle1);//显示车辆信息
                                    break;
                                case 2:
                                    ArrayList<Vehicle> vehicle2 = getArrayList();//从文件中获取ArrayList<Vehicle>类型的对象
                                    modifyVehicle(vehicle2);//修改车辆信息
                                    break;
                                case 3:
                                    ArrayList<Vehicle> vehicle3 = getArrayList();//从文件中获取ArrayList<Vehicle>类型的对象
                                    deleteVehicle(vehicle3);//删除车辆
                                    break;
                                case 4:
                                    HashSet<Account> users5 = getHashSet();//从文件中获取HashSet<Account>类型的对象
                                    showProfit(users5);//显示利润
                                    break;
                                case 5:
                                    ArrayList<Vehicle> vehicle5 = getArrayList();//从文件中获取ArrayList<Vehicle>类型的对象
                                    addVehicle(vehicle5);//增加车辆
                                    break;
                                default:
                                    break loop2;
                            }
                            showAdminFunc();//显示管理员功能
                        }
                    } else {
                        System.out.println("登陆失败，账号或者密码错误！");//提示密码错误
                    }
                    break;
                case 2:
                    HashSet<Account> users2 = getHashSet();//从文件中获取HashSet<Account>类型的对象
                    createAccount(users2);//创建账户
                    break;
                default:
                    System.out.println("感谢使用!!!");//结束使用
                    break loop;
            }
            showLoginScreen();//显示登录系统界面
        }
    }
    //显示登录系统界面
    public static void showLoginScreen() {
        System.out.println("---------欢迎来到腾飞租车系统---------");
        System.out.println("1.系统登录");
        System.out.println("2.帐号注册");
        System.out.println("3.退出");
    }
    //创建账户
    public static void createAccount(HashSet<Account> users) throws IOException, ClassNotFoundException {
        Scanner sc = new Scanner(System.in);
        int account, keyWord;
        System.out.println("请输入注册的账号");
        account = sc.nextInt();
        System.out.println("请输入注册的密码");
        keyWord = sc.nextInt();
        User user = new User(account, keyWord);
        if (users.add(user)) {
            System.out.println("注册成功");
            ObjectOutputStream accountOut = new ObjectOutputStream(new FileOutputStream("E:\\IdeaProjects\\JavaSE_Code\\RentCarV4.0\\src\\account.txt"));
            accountOut.writeObject(users);
            accountOut.close();
        } else {
            System.out.println("注册失败，相应的账号已被注册");
        }
    }
    //登录功能
    public static Account logIn(HashSet<Account> users) throws InterruptedException, IOException, ClassNotFoundException {
        int account, keyWord;
        Scanner sc = new Scanner(System.in);
        System.out.println("请输入你的账号：");
        account = sc.nextInt();
        System.out.println("请输入你的密码：");
        keyWord = sc.nextInt();
        for (Account user : users) {
            if (user.getAccount() == account && user.getKeyWord() == keyWord) {
                System.out.println("登陆成功");
                return user;//登陆成功就记录下目前登陆的用户
            }
        }
        return null;//失败就返回null
    }
    //显示用户功能
    public static void showUserFunc() {
        System.out.println("1.查看车辆信息");
        System.out.println("2.租车");
        System.out.println("3.换车");
        System.out.println("4.查看订单并付款");
        System.out.println("5.退出");
    }
    //显示管理员功能
    public static void showAdminFunc() {
        System.out.println("1.查看车辆信息");
        System.out.println("2.修改车辆信息");
        System.out.println("3.删除车辆信息");
        System.out.println("4.查看营业额");
        System.out.println("5.添加车辆");
        System.out.println("6.退出");
    }
    //显示车辆信息
    public static void showVehicle(ArrayList<Vehicle> vehicle) throws IOException, ClassNotFoundException {
        for (int i = 0; i < vehicle.size(); i++) {
            if (vehicle.get(i) instanceof Car) {
                System.out.println(i + 1 + ".品牌：" + ((Car) vehicle.get(i)).getBrand() + "  车牌号：" + ((Car) vehicle.get(i)).getVehicleId() + "  日租金：" + ((Car) vehicle.get(i)).getPerRent() + "  型号：" + ((Car) vehicle.get(i)).getType());
            }
            if (vehicle.get(i) instanceof Bus) {
                System.out.println(i + 1 + ".品牌：" + ((Bus) vehicle.get(i)).getBrand() + "  车牌号：" + ((Bus) vehicle.get(i)).getVehicleId() + "  日租金：" + ((Bus) vehicle.get(i)).getPerRent() + "  载客量：" + ((Bus) vehicle.get(i)).getSeats());
            }
            if (vehicle.get(i) instanceof Trunk) {
                System.out.println(i + 1 + ".品牌：" + ((Trunk) vehicle.get(i)).getBrand() + "  车牌号：" + ((Trunk) vehicle.get(i)).getVehicleId() + "  日租金：" + ((Trunk) vehicle.get(i)).getPerRent() + "  载货量：" + ((Trunk) vehicle.get(i)).getCapacity());
            }
        }
    }
    //添加车辆
    public static void addVehicle(ArrayList<Vehicle> vehicles) throws IOException {
        Scanner sc = new Scanner(System.in);
        Scanner sc1 = new Scanner(System.in);
        System.out.println("1.轿车    2.客车    3.卡车");
        System.out.println("请选择你要添加的车辆类型：");
        int choice = sc.nextInt();
        String brand, vehicleId;
        System.out.println("请输入品牌：");
        brand = sc1.nextLine();
        System.out.println("请输入车牌号：");
        vehicleId = sc1.nextLine();
        int perRent;
        System.out.println("请输入日租金：");
        perRent = sc.nextInt();
        String type = null;
        int capacity = 0;
        int seats = 0;
        switch (choice){
            case 1:
                System.out.println("请输入汽车型号：");
                type = sc1.nextLine();
                Car vehicle1 = new Car();
                vehicle1.setBrand(brand);
                vehicle1.setVehicleId(vehicleId);
                vehicle1.setPerRent(perRent);
                vehicle1.setType(type);
                vehicles.add(vehicle1);
                ObjectOutputStream vehicleOut1 = new ObjectOutputStream(new FileOutputStream("E:\\IdeaProjects\\JavaSE_Code\\RentCarV4.0\\src\\vehicle.txt"));
                vehicleOut1.writeObject(vehicles);
                vehicleOut1.close();
                break;
            case 2:
                System.out.println("请输入客车载客量：");
                seats = sc.nextInt();
                Bus vehicle2 = new Bus();
                vehicle2.setBrand(brand);
                vehicle2.setVehicleId(vehicleId);
                vehicle2.setPerRent(perRent);
                vehicle2.setSeats(seats);
                vehicles.add(vehicle2);
                ObjectOutputStream vehicleOut2 = new ObjectOutputStream(new FileOutputStream("E:\\IdeaProjects\\JavaSE_Code\\RentCarV4.0\\src\\vehicle.txt"));
                vehicleOut2.writeObject(vehicles);
                vehicleOut2.close();
                break;
            case 3:
                System.out.println("请输入卡车载货量：");
                capacity = sc.nextInt();
                Trunk vehicle3 = new Trunk();
                vehicle3.setBrand(brand);
                vehicle3.setVehicleId(vehicleId);
                vehicle3.setPerRent(perRent);
                vehicle3.setCapacity(capacity);
                vehicles.add(vehicle3);
                ObjectOutputStream vehicleOut3 = new ObjectOutputStream(new FileOutputStream("E:\\IdeaProjects\\JavaSE_Code\\RentCarV4.0\\src\\vehicle.txt"));
                vehicleOut3.writeObject(vehicles);
                vehicleOut3.close();
                break;
            default:
                System.out.println("无此选项！");
                break;
        }

    }
    //修改车辆
    public static void modifyVehicle(ArrayList<Vehicle> vehicles) throws IOException, ClassNotFoundException {

        showVehicle(vehicles);
        Scanner sc = new Scanner(System.in);
        Scanner sc1 = new Scanner(System.in);
        System.out.println("请选择你要修改车辆信息的序号：");
        int choice = sc.nextInt();
        if (choice > vehicles.size() || choice < 1) System.out.println("无此选项！");
        else {
            String brand, vehicleId;
            System.out.println("请输入修改后的品牌：");
            brand = sc1.nextLine();
            System.out.println("请输入修改后的车牌号：");
            vehicleId = sc1.nextLine();
            int perRent;
            System.out.println("请输入修改后的日租金：");
            perRent = sc.nextInt();
            if (vehicles.get(choice - 1) instanceof Car) {
                String type;
                System.out.println("请输入汽车型号：");
                type = sc1.nextLine();
                vehicles.get(choice - 1).setBrand(brand);
                vehicles.get(choice - 1).setVehicleId(vehicleId);
                vehicles.get(choice - 1).setPerRent(perRent);
                ((Car) vehicles.get(choice - 1)).setType(type);
            }
            if (vehicles.get(choice - 1) instanceof Bus) {
                int seats;
                System.out.println("请输入客车载客量：");
                seats = sc.nextInt();
                vehicles.get(choice - 1).setBrand(brand);
                vehicles.get(choice - 1).setVehicleId(vehicleId);
                vehicles.get(choice - 1).setPerRent(perRent);
                ((Bus) vehicles.get(choice - 1)).setSeats(seats);
            }
            if (vehicles.get(choice - 1) instanceof Trunk) {
                int capacity;
                System.out.println("请输入卡车载货量：");
                capacity = sc.nextInt();
                vehicles.get(choice - 1).setBrand(brand);
                vehicles.get(choice - 1).setVehicleId(vehicleId);
                vehicles.get(choice - 1).setPerRent(perRent);
                ((Trunk) vehicles.get(choice - 1)).setCapacity(capacity);
            }
            ObjectOutputStream vehicleOut = new ObjectOutputStream(new FileOutputStream("E:\\IdeaProjects\\JavaSE_Code\\RentCarV4.0\\src\\vehicle.txt"));
            vehicleOut.writeObject(vehicles);
            vehicleOut.close();//将修改后的车辆信息保存至文件中
            System.out.println("修改成功！");
        }
    }
    //删除车辆
    public static void deleteVehicle(ArrayList<Vehicle> vehicles) throws IOException, ClassNotFoundException {
        showVehicle(vehicles);
        Scanner sc = new Scanner(System.in);
        System.out.println("请输入你要删除车辆的序号：");
        int choice = sc.nextInt();
        if (choice > vehicles.size() || choice < 1) System.out.println("无此选项，删除失败！");
        else {
            ObjectOutputStream vehicleOut = new ObjectOutputStream(new FileOutputStream("E:\\IdeaProjects\\JavaSE_Code\\RentCarV4.0\\src\\vehicle.txt"));
            vehicles.remove(vehicles.get(choice - 1));//将删除后的车辆信息保存至文件中
            vehicleOut.writeObject(vehicles);
            vehicleOut.close();
            System.out.println("删除成功！");
        }
    }

    //用户租车
    public static void rentVehicle(ArrayList<Vehicle> vehicles, Account u) throws IOException, ClassNotFoundException {
        showVehicle(vehicles);
        Scanner sc = new Scanner(System.in);
        System.out.println("请输入你要租借车辆的序号：");
        int choice = sc.nextInt();
        int days = 0;
        double discount = 0.0;
        if (choice > vehicles.size() || choice < 1) System.out.println("无此选项，选择失败！");
        else {
            if (vehicles.get(choice - 1).isRent()) {
                System.out.println("这辆车已经被别人抢先一步了！");
                return;//判断该车是否被出租了
            }
            System.out.println("请输入租借天数：");
            days = sc.nextInt();
            discount = setAccount(days);
            Bill bill = new Bill();
            bill.setDays(days);
            bill.setDiscount(discount);
            bill.addVehicle(vehicles.get(choice - 1));
            ((User) u).addBills(bill);
            System.out.println("账单已更新");
            vehicles.get(choice - 1).setRent(true);
            ObjectOutputStream vehicleOut = new ObjectOutputStream(new FileOutputStream("E:\\IdeaProjects\\JavaSE_Code\\RentCarV4.0\\src\\vehicle.txt"));
            vehicleOut.writeObject(vehicles);//将修改后的车辆信息、账户信息保存至文件中
            vehicleOut.close();
        }
    }
    //用户更换车辆
    public static void changeVehicle(ArrayList<Vehicle> vehicles, Account u) throws IOException, ClassNotFoundException {
        ((User) u).showBills();//显示用户的订单信息
        Scanner sc = new Scanner(System.in);
        System.out.println("请输入你要更换的订单序号：");
        int choice = sc.nextInt();
        showVehicle(vehicles);
        int days = 0;
        double discount = 0.0;
        System.out.println("请输入你要租借车辆的序号：");
        int choice1 = sc.nextInt();
        if (choice1 > vehicles.size() || choice1 < 1) {
            System.out.println("无此选项，选择错误！");
        } else {
            if (vehicles.get(choice1 - 1).isRent()) {
                System.out.println("这辆车已经被别人抢先一步了！");
                return;//判断车俩是否已经出租
            }
            System.out.println("请输入租借天数：");
            days = sc.nextInt();
            discount = setAccount(days);
            Bill bill = new Bill();
            bill.setDays(days);
            bill.setDiscount(discount);
            bill.addVehicle(vehicles.get(choice1 - 1));
            ((User) u).changeBills(choice, bill);
            //修改用户订单
        }
    }
    //模拟用户支付功能
    public static void pay(HashSet<Account> users, Account u) throws IOException{
        ((User) u).showBills();
        Administrator admin = null;
        for (Account account : users) {
            if (account instanceof Administrator) {
                admin = (Administrator) account;
                break;
            }
        }
        double currentProfit = admin.getProfit();
        double nextProfit = ((User) u).getCost();
        double profit = currentProfit + nextProfit;
        DecimalFormat df = new DecimalFormat("0.00");
        admin.setProfit(Double.parseDouble(df.format(profit)));

        users.add(admin);
        ObjectOutputStream accountOut = new ObjectOutputStream(new FileOutputStream("E:\\IdeaProjects\\JavaSE_Code\\RentCarV4.0\\src\\account.txt"));

        accountOut.writeObject(users);

        accountOut.close();
        //支付成功，公司利润增加
        System.out.println("支付成功！");
    }
    //管理员查看利润
    public static void showProfit(HashSet<Account> users){
        Administrator admin = null;
        for (Account account : users) {
            if (account instanceof Administrator) {
                admin = (Administrator) account;
                System.out.println("当前营业额为：" + admin.getProfit() + "元");
                break;
            }
        }
    }
    //根据用户的租车信息提供相应的折扣
    public static double setAccount(int days) {
        double discount = 0.0;
        if (days > 150) discount = 0.7;
        else if (days > 30) discount = 0.8;
        else if (days > 7) discount = 0.9;
        else {
            discount = 1.0;
        }
        return discount;
    }
    //从文件中获取并返回一个HashSet<Account>对象，HashSet<Account>用于储存账号信息
    public static HashSet<Account> getHashSet() throws IOException, ClassNotFoundException {
        ObjectInputStream accountInput = new ObjectInputStream(new FileInputStream("E:\\IdeaProjects\\JavaSE_Code\\RentCarV4.0\\src\\account.txt"));
        HashSet<Account> users = (HashSet<Account>) accountInput.readObject();
        accountInput.close();
        return users;
    }
    //从文件中获取并返回一个ArrayList<Vehicle>对象，ArrayList<Vehicle>用于储存公司车辆信息
    public static ArrayList<Vehicle> getArrayList() throws IOException, ClassNotFoundException {
        ObjectInputStream vehicleInput = new ObjectInputStream(new FileInputStream("E:\\IdeaProjects\\JavaSE_Code\\RentCarV4.0\\src\\vehicle.txt"));
        ArrayList<Vehicle> vehicle = (ArrayList<Vehicle>) vehicleInput.readObject();
        vehicleInput.close();
        return vehicle;
    }
}
