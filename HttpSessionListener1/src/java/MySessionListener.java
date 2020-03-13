
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;


public class MySessionListener implements HttpSessionListener{
    int count = 0;
    @Override
    public void sessionCreated(HttpSessionEvent se) {
       count++;
        System.out.println("Session Created..."+count);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        count--;
        System.out.println("Session Destroyed..."+count);
        
    }
    
}
