
<!--  
Student Name: Yael Yana Reinus   
Assignment # 3   
Class: CIS 4160
 -->




<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>

<%


if(request.getSession().getAttribute("user")==null){

	response.sendRedirect("loginerror.jsp");
	
}
String userr= (String)request.getSession().getAttribute("user");// getting user id. 




%>

<% 
String old = request.getParameter("OldPassword");
String neww = request.getParameter("newpassword") ;
String con = request.getParameter("conPassword") ;




if (!neww.equals(con))// if user new password doesnt match the confirmed password, it redirects him to error page that asks him to enter password again
{
	response.sendRedirect("Error.jsp");
}

else// otherwise, it connects to the database, and update his new password
{

Connection conn = null;
try
{
   
	   String driver = "oracle.jdbc.OracleDriver";
	   // 1. Load the driver
	   Class.forName(driver);

	   // 2. Define the connection URL
	   String url = "jdbc:oracle:thin:@localhost:1521:XE"; //orcl is the SID
	   String myusername = "hello"; // Your DB login ID
	   String mypassword = "hello"; //Your Db pass

	   // 3. Establish the connection
	// 3. Establish the connection
	conn = DriverManager.getConnection(url, myusername,mypassword);       
   // 4. Create a statement object
      String updateString = "UPDATE admin_user_sr SET password=? WHERE user_name=?";
     
   PreparedStatement stmt = conn.prepareStatement(updateString);
   
   stmt.setString(1, neww);
   stmt.setString(2, userr);
   
   //step 5
   stmt.executeUpdate();
   conn.commit();
   
   
   String redirectURL = "display1.jsp";//http://stackoverflow.com/questions/4967482/redirect-pages-in-jsp. redirect to a display page where the user can see his new password.
   response.sendRedirect(redirectURL);
	      

}    

   catch(SQLException e)
   {
      // Do exception catch such as if connection is not made or 
      // query is not set up properly
      out.println("SQLException: " + e.getMessage() + "<BR>");
      while((e = e.getNextException()) != null)
         out.println(e.getMessage() + "<BR>");
   }
   catch(ClassNotFoundException e)
   {
      out.println("ClassNotFoundException: " + e.getMessage() + "<BR>");
   }
   finally
   {
// 7. Close connection; Clean up resources
      if(conn != null)
      {
         try
         {
            conn.close();
         }
         catch (Exception ignored) {}
      }
   } 	
}
%>