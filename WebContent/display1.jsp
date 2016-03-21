<!--  
Student Name: Yael Yana Reinus   
Assignment # 3   
Class: CIS 4160
 -->
<%
if(request.getSession().getAttribute("user")==null){// if user is null- erro massage- prevent a sneaky user to access 

	response.sendRedirect("loginerror.jsp");
	
}
String userr= (String)request.getSession().getAttribute("user");// getting user id through session 





%>
<%@ page import="java.sql.*" %>

<!--head.html include Goes Here -->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>Baruch College</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link REL="icon" href="http://www.baruch.cuny.edu/favicon.ico">
<link rel="stylesheet" type="text/css" href="http://www.baruch.cuny.edu/css/baruch_interior.css" />
<link rel="stylesheet" type="text/css" href="http://www.baruch.cuny.edu/css/application.css" />
<link href="schedule.css" rel="stylesheet" type="text/css" />
<!--HEAD Include Ends -->
<!--body.html include Goes Here -->
<!--BODY Include Begins -->
</head>

<body>
<!-- wrapper -->
<div id="wrapper">

<!-- banner -->
<div id="banner"><a href="http://www.baruch.cuny.edu"><img src="http://www.baruch.cuny.edu/images/logo_baruch.gif" alt="Baruch College" name="logo" width="201" height="68" border="0" id="logo" /></a></div>
<!-- /banner -->
<!-- main -->
<div id="main">
<!--BODY Include ENDS -->


<!--head.html include Goes Here -->
<!--body.html include Goes Here -->
<center>
<h1>Password changed successfully</h1>
</center>


<p align="left">
	 <b>
	 <!--user must log out to destroy the session -->
	 <a href="logout.jsp"><font size="5">Log out</font></a> </b>&nbsp;<br>  

<br>
</p>
<center>

	  <%
	  
	  
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
	      Statement stmt = conn.createStatement();

	      // 5. Execute a query
	      
	
	      ResultSet rs = stmt.executeQuery("SELECT password from admin_user_sr where user_name='" + userr + "'");

	      out.println("Hello " + userr);  
	     
	      //column names and Data types has to match Db columns
	     
	    	 if (rs.next()) 
	      	{
	          	 
	               
	               out.println( "your new passsword is:" + rs.getString("password"));
	              
	  
	   }
	   
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
	  
	  %>

</center>


<!--FOOT Include Begins -->
</div>
<!-- /main -->
</div>
<!-- /wrapper -->
</body>
</html>
<!--FOOT Include Ends -->


