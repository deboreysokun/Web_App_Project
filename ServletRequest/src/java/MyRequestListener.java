
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;

public class MyRequestListener implements ServletRequestListener{
     static int count = 0;
    @Override
    public void requestDestroyed(ServletRequestEvent sre) {
        System.out.println("Request Destroyed...");
    }

    @Override
    public void requestInitialized(ServletRequestEvent sre) {
        count++;
        System.out.println("Request created...");
        System.out.println(count);
    }
    
}
