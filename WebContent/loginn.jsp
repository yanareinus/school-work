<!--  
 
Student Name: Yael Yana Reinus   
Assignment # 4   
Class: CIS 4160
log in page- user enters useID and password- 
 -->
	
 
<%@ page import="java.sql.*"%>
<!--  copied from login.html -->



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
<BODY BGCOLOR="white">
	<!-- <center>  -->
	<div style="text-align:center">
	
		<H2>Please Enter your User ID and Password</H2>
		<br>
		<!--  servlet for validation with user id,  -->
		<FORM name= "login" method="post" ACTION="verificationServlet">	
			
			User ID: <INPUT TYPE="TEXT" NAME="userId" VALUE="">
			<p>
		   Password: <INPUT TYPE="password" NAME="password" VALUE="">
			<p>
				
			<P>
			<Input type ="hidden" name="session" value="" > 
				<INPUT TYPE="SUBMIT" value="Log In">
				<!-- Press this button to submit form -->
			
		</FORM>
		</div>
		<!--FOOT Include Begins -->
</div>
<!-- /main -->
</div>
<!-- /wrapper -->
</body>
</html>
<!--FOOT Include Ends -->
	<!--</CENTER>   -->
