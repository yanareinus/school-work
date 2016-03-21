<!--  
Student Name: Yael Yana Reinus   
Assignment # 3   
Class: CIS 4160
Features Included:

user enters old password, new password and confirmed password 

 -->
 
 
<%
if(request.getSession().getAttribute("user")==null){// if user is null- erro massage- prevent a sneaky user to access 

	response.sendRedirect("loginerror.jsp");
	
}


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
<center>



<br>

<FORM ACTION="update1.jsp" >
  
	

<center>
<h1>Change password Baruch college</h1>
</center>


<br>

<FORM name= "login" method="post" ACTION="update1.jsp">	
  
	

<%out.println("<TABLE CELLSPACING=\"0\" CELLPADDING=\"10\" BORDER=\"0\">");%>


<tr>
<td>OLD PASSWORD</td>
<TD><input name="oldpassword" TYPE="password" id="OLDpwd" size="20"></td>
</tr>

<td>NEW PASSWORD</td>
<TD><input name="newpassword" TYPE="password" id="NEWpwd" size="20"></td>
</tr>
<td>CONFIRM PASSWORD</td>
<TD><input name="conPassword" TYPE="password" id="CONpwd" size="20"></td>
</tr>




<tr>
<td>&nbsp;</td>
<td><input type="submit" name="Submit" value="Save"></td>
</tr>

</table>
</form>
<!--FOOT Include Begins -->
</div>
<!-- /main -->
</div>
<!-- /wrapper -->
</body>
</html>
<!--FOOT Include Ends -->



</center>





