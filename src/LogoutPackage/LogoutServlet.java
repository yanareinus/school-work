/*
 
Student Name: Yael Yana Reinus   
Assignment # 4  
Class: CIS 4160
Features Included:

-servlet for logout to destroy session.
 
 */


package LogoutPackage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
 

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//session object is destroyed 
		request.getSession().invalidate();
		
        response.sendRedirect("loginn.jsp");
	}

	
	
}
