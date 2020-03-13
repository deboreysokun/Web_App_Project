
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author sokun
 */
public class MyServletContextAttributeListener implements ServletContextAttributeListener{

    @Override
    public void attributeAdded(ServletContextAttributeEvent event) {
        System.out.println("A new Attribute to Context"+event.getName());
    }

    @Override
    public void attributeRemoved(ServletContextAttributeEvent event) {
        System.out.println("A new servletremoved from context"+event.getName());
    }

    @Override
    public void attributeReplaced(ServletContextAttributeEvent arg0) {
        System.out.println("A new Attribute modified from the context");
    }
    
}
