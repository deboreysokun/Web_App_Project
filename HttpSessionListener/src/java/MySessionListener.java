
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author sath_
 */
public class MySessionListener implements HttpSessionListener{
    int count = 0;
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        count++;
        System.out.println("Session created----- Active "+count);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        count--;
        System.out.println("Session Destroyed-- Active "+count);
    }
    
}
