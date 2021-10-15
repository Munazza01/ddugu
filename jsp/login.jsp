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
    
    <meta name="description" content="DDUGU BCA - Deen Dayal Upadhyaya Gorakhpur University, Login to your user account
    									to access study material, notes, previous year papers, video lectures, etc.">

	<meta name="keywords" content="Deen Dayal Upadhyaya Gorakhpur University, BCA, DDUGU BCA - Login to your account">
			
    <meta name="author" content="Atul Singh">
    
    
    <link rel="stylesheet" type="text/css" href="../css/login_style.css">
    <script src = "../js/click.js"> </script>
    <script src = "../js/login.js"></script>
    
    
    <title>DDUGU BCA - Login to your account</title>

</head>
<body>

<%	
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");

	
	String utype = (String) session.getAttribute("utype");
	
	if(utype!=null)
	{
				
		if(utype.equals("Student"))
		{
			response.sendRedirect("student_panel.jsp");
			
		}
		
		if(utype.equals("Teacher"))
		{
			response.sendRedirect("teacher_panel.jsp");
		}
		
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
      <a href="../jsp/about.jsp" ><i class="fa fa-info" ></i> About</a>
    
      <a href="javascript:void(0);" class="icon" onclick="myFunction()">
        <i class="fa fa-bars"></i>
      </a>
    </div>
  </div>
  
  
      <div class="middle">
      <div class="login">
		<h1><b>Login</b></h1>

	<form name = "login" action="../Login" onsubmit="return validate()" method = "post"  >
	   
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
	  <div class="input-container">
	    <i class="fa fa-envelope icon"></i>
	    <input class="input-field" type="email" placeholder="Email Address" name="email" >
	  </div>
	  
	  <div class="input-container">
	    <i class="fa fa-key icon"></i>
	    <input class="input-field" type="password" placeholder="Password" name="password" >
	  </div>

	 
		
	  <button type="submit" class="btn"><b><i class="fa fa-sign-in"></i> Login</b></button>	  
	  

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
         
         <button class="button" onclick="window.location.href = '../index.jsp';">
         <i class="fa fa-home"></i> Home</button>
         
         <button class="button" onclick="window.location.href = '../jsp/login.jsp';">
         <i class="fa fa-sign-in"></i> Login</button><br>
         
         <button class="button" onclick="window.location.href = '../jsp/register.jsp';">
         <i class="fa fa-user-plus"></i> Register</button>
         
         <button class="button" onclick="window.location.href = '../jsp/contact.jsp';">
         <i class="fa fa-envelope"></i> Contact</button><br>
         
         <button class="button" onclick="window.location.href = '../jsp/about.jsp';">
         <i class="fa fa-info"></i> About</button>
         
       </div>

       <div class="copyright"><b>Copyright © 2020 | DDUGU BCA</b> 
          <br>All rights reserved.
        </div>
          
    </div>
        
  </div>

</body>
</html>