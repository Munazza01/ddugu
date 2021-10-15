<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Spectral&display=swap" rel="stylesheet">
	<link rel="shortcut icon" href="../images/favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
   
   	<meta name="description" content="DDUGU BCA -  Deen Dayal Upadhyaya Gorakhpur University, Change password of
    									your user account of DDUGU BCA">

	<meta name="keywords" content="Deen Dayal Upadhyaya Gorakhpur University, BCA, DDUGU BCA - Change password">
			
    <meta name="author" content="Atul Singh">
    
    
    <link rel="stylesheet" type="text/css" href="../css/change_style.css">
    <script src = "../js/click.js"> </script>
    <script src = "../js/change_password.js"> </script>
    
    <title>DDUGU BCA - Change Password</title>

</head>
<body>
<%

	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	
	response.setHeader("Pragma", "no-cache");
	
	response.setHeader("Expires", "0");

	
	
	String utype = (String) session.getAttribute("utype");
	if(utype==null)
	{
		response.sendRedirect("login.jsp");

	}
%>

<div class="grid-container">
  <div class="header">
    <div class="logo">
      <a href="../index.jsp">
        <img src="../images/ddugubca.png">
      </a>
    </div>
  
    <div class="topnav" id="myTopnav">
      <a href="../index.jsp"><i class="fa fa-home" ></i> Home</a>
      <a href="../jsp/contact.jsp"><i class="fa fa-envelope" ></i> Contact</a>
      <a href="../jsp/about.jsp"><i class="fa fa-info" ></i> About</a>
      <%	
      if(utype!=null)
      {
    	  if(utype.equals("Teacher") )
      
		{%>
	        <a href="../jsp/crud_mcqs.jsp"><i class="fa fa-question-circle"></i> MCQs</a>
	  <% 
		}
    	  }	
 	  %>
      <a href="../Logout"><i class="fa fa-power-off"></i> Logout</a>
    
      <a href="javascript:void(0);" class="icon" onclick="myFunction()">
        <i class="fa fa-bars"></i>
      </a>
    </div>
  </div>
 
 
    <div class="middle">
      <div class="login">
		<h1><b>Change Password</b></h1>

		<form name = "change_password" action="../ChangePassword" onsubmit="return validate()" method = "post">
	   
		<p style = "color:white;">
		<%
			String message = (String)session.getAttribute("message");
			
			if(message == null)
			{
				out.println(" ");
			}
			
			else
			{
				out.println("**"+message);
				session.setAttribute("message", null);
			}
			

		%>
		</p>
			
		  <% String email = (String) session.getAttribute("email");
		  	 String password = (String) session.getAttribute("password");
		  %>
	
		  
		  <div class="input-container">
		    <i class="fa fa-envelope icon"></i>
		    <input class="input-field" type="email" placeholder="<%out.print(email);%>" name="email" disabled>
		  </div>
		  
		  
		  <div class="input-container">
		    <i class="fa fa-key icon"></i>
		    
		    <input class="input-field" type="password" placeholder="
		    <%	if(password!=null)
		    	{
		    		out.print(password.substring(0, 2)+"*****");
		    	} %>"
		    	
		     name="old_password" disabled>
		  </div>

	 	 <div class="input-container">
		    <i class="fa fa-key icon"></i>
		    <input class="input-field" type="password" placeholder="Enter New Password" name="new_password1">
		  </div>
	 	
	 	 <div class="input-container">
		    <i class="fa fa-key icon"></i>
		    <input class="input-field" type="password" placeholder="Confirm New Password" name="new_password2">
		  </div>
	 	
			
		  <button type="submit" class="btn"><b><i class="fa fa-check"></i> Update</b></button>	  
	  

	</form>
      
   </div>
  </div>
    
    
<div class="footer">
        <div class="location">
          <h3> <i class="fa fa-location-arrow"></i> Address </h3>
          <p> <i class="fa fa-map-marker"></i> Civil Lines,
          <br> Gorakhpur,
          <br> Uttar Pradesh <br> 273009 <br> </p>
          <i class="fa fa-map-o"></i> 
          <a href="https://goo.gl/maps/DUJ9QjfyADNMvAxZ9" target="blank"> Google Map location</a>
     </div>

       <div class="links">
         <h3><i class="fa fa-bookmark"></i> Important Links</h3> 
         
        <button class="button" onclick="window.location.href = '../index.jsp';"><i class="fa fa-home"></i> Home</button>
        <button class="button" onclick="window.location.href = '../jsp/contact.jsp';"><i class="fa fa-envelope"></i> Contact</button><br>
        <button class="button" onclick="window.location.href = '../jsp/about.jsp';"><i class="fa fa-info"></i> About</button>
        <button class="button" onclick="window.location.href = '../jsp/student_panel.jsp';"><i class="fa fa-desktop"></i> Dashboard</button><br>
        <%	
      if(utype!=null)
      {
    	  if(utype.equals("Teacher") )
      
		{%>
 	 		 <button class="button" onclick="window.location.href = '../jsp/crud_mcqs.jsp';"><i class="fa fa-question-circle"></i> MCQs</button>
	  <% 
		}
    	  }	
 	  %>
 	  <button class="button" onclick="window.location.href = '../Logout';"><i class="fa fa-power-off"></i> Logout</button>
        
         
       </div>

       <div class="copyright"><b>Copyright © 2020 | DDUGU BCA</b> 
          <br>All rights reserved.
        </div>
          
    </div>
        
  </div>

</body>
</html>