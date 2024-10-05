package PrimaryData;

import RentCar.Account;
import RentCar.Administrator;
import RentCar.User;

import java.io.*;
import java.util.HashSet;

//本主方法用于对系统账号的初始化
public class WriteAccount {
    public static void main(String[] args) throws IOException, ClassNotFoundException {
        ObjectOutputStream accountOut = new ObjectOutputStream(new FileOutputStream("E:\\IdeaProjects\\JavaSE_Code\\RentCarV4.0\\src\\account.txt"));

        HashSet<Account> users = new HashSet<>();

        Administrator admin = new Administrator(12345,12345);
        admin.setProfit(10000);
        Account user1 = new User(45678,45678);
        Account user2 = new User(56789,56789);
        users.add(admin);
        users.add(user1);
        users.add(user2);
        accountOut.writeObject(users);
        accountOut.close();
    }
}
