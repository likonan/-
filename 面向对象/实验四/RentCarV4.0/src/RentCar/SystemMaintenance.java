package RentCar;
//此类用于模仿多线程系统维护
public class SystemMaintenance extends Thread{
    public SystemMaintenance(String name) {
        super(name);
    }

    public SystemMaintenance() {
    }

    @Override
    public void run() {
        try {
            for (int i = 5;i>0;i--){
                System.out.println("系统升级维护中，还有"+i+"秒，请稍等......");
                Thread.sleep(1000);
            }
            System.out.println("系统维护成功，欢迎使用");
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
