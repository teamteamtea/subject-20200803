package util;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.sun.glass.ui.Application;

/**
 * Application Lifecycle Listener implementation class AddcontextPathListener
 *
 */

public class AddcontextPathListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public AddcontextPathListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         ServletContext application =sce.getServletContext();
         String path =application.getContextPath();
    	application.setAttribute("ctxpath",path);
    }
	
}
