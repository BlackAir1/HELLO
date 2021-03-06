package org.fkit.system;


	import javax.servlet.http.HttpSessionEvent;
	   
	import javax.servlet.http.HttpSessionListener;
	   
	public class SessionListener implements HttpSessionListener {
	  private static int count = 0;
	   
	  public void sessionCreated(HttpSessionEvent se) {
	    count++;
	    System.out.println("session创建：" + new java.util.Date());
	    se.getSession().getServletContext().setAttribute("count", count);

	  }
	   
	  public void sessionDestroyed(HttpSessionEvent se) {
	    count--;
	    System.out.println("session销毁：" + new java.util.Date());
	    se.getSession().getServletContext().setAttribute("count", count);

	  }
	   
	  public static int getCount() {
		    return count;
		  }
	}

