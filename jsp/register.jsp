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
    
    
    <meta name="description" content="DDUGU BCA - Deen Dayal Upadhyaya Gorakhpur University. Create a new user account to
    									access BCA study material, notes, previous year papers, video lectures, etc.">

	<meta name="keywords" content="Deen Dayal Upadhyaya Gorakhpur University, BCA, DDUGU BCA - Create a new user account">
			
    <meta name="author" content="Atul Singh">
    
    
    <link rel="stylesheet" type="text/css" href="../css/register_style.css">
    <script src = "../js/click.js"> </script>
    <script src = "../js/registration.js"></script>
    <script src = "../js/check.js"></script>
  

  <title>DDUGU BCA - Create a new user account</title>
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
   <div class="register">
      <h1>Register</h1>



<form name = "registration" action="../Register" onsubmit="return validate()">
  
 

  <div class="input-container">
    <i class="fa fa-user-circle-o icon"></i>
    	<select name = "utype" onchange = "check(this);">
    		<option value = "null">-- Select user type --</option>    		
    		<option value = "Student">Student</option>
    		<option value = "Teacher">Teacher</option>
    	</select>
  </div>

	<div class="input-container" id = "student_name" style = "display:none;">
    	<i class="fa fa-user icon"></i>
    	<input class="input-field" type="text" placeholder="Student's Name" id = "s_name" name="s_name" >
  </div>
  
  <div class="input-container" id = "teacher_name" style = "display:none;">
    <i class="fa fa-user icon"></i>
    <input class="input-field" type="text" placeholder="Teacher's Name" id = "t_name" name="t_name" >
  </div>
  
  <div class="input-container">
    <i class="fa fa-venus-mars icon" ></i>
    
    <select name="gender" >
        <option value="Male">Male</option>
        <option value="Female">Female</option>
        <option value="Other">Other</option>
    </select> 

  </div>
  

  <div class="input-container">
    <i class="fa fa-birthday-cake icon"></i>
  	<input type="date" name="bday">
  </div>

  <div class="input-container">
    <i class="fa fa-university icon" ></i>
    
    <select name="college" >
        <option value="DDU">DDU</option>
        <option value="BIT">BIT</option>
        <option value="ITM">ITM</option>
        <option value="Other">Other</option>

    </select> 

  </div>

  <div class="input-container" id = "student_semester" style = "display:none;">
    <i class="fa fa-graduation-cap icon" ></i>
    
    <select name="semester" >
        <option value="1">Semester 1</option>          
        <option value="2">Semester 2</option>          
        <option value="3">Semester 3</option>          
        <option value="4">Semester 4</option>          
        <option value="5">Semester 5</option>          
        <option value="6">Semester 6</option>          
    </select> 

  </div>
  
  <div class="input-container" id = "teacher_professor" style = "display:none;">
    <i class="fa fa-graduation-cap icon" ></i>
    
    <select name="professor" >
        <option value="Assistant Professor">Assistant Professor</option>          
        <option value="Associate Professor">Associate Professor</option>          
        <option value="Professor">Professor</option>          
        <option value="Research Scholar">Research Scholar</option>          
        <option value="Other">Other</option>                    
    </select> 

  </div>
 
 <div class="input-container">
    <i class="fa fa-mobile icon"></i>
    <input class="input-field" type="tel" placeholder="Mobile Number(8840xxxxxx)" name="mobile">
    </div>
    
    <p style = "color:white;">
		<%
			String mobile = (String)session.getAttribute("mobile");
			
			if(mobile == null)
			{
				out.println(" ");
			}
			
			else
			{
				out.println(mobile);
				session.setAttribute("mobile", null);
			}
		%>
	</p>
 
  
 
  <div class="input-container">
    <i class="fa fa-envelope icon"></i>
    <input class="input-field" type="email" placeholder="Email Address" name="email" >
        </div>
        <p style = "color:white;">
		<%
			String email = (String)session.getAttribute("email");
			
			if(email == null)
			{
				out.println(" ");
			}
			
			else
			{
				out.println(email);
				session.setAttribute("email", null);
			}
		%>
	</p>
  
  
  <div class="input-container" id = "code">
    <i class="fa fa-lock icon"></i>
    <input class="input-field" type="password" placeholder="College Code: 27xxxx" name="code" >
  </div>
  
  	<p style = "color:white;">
		<%
			String code = (String)session.getAttribute("code");
			
			if(code == null)
			{
				out.println(" ");
			}
			
			else
			{
				out.println(code);
				session.setAttribute("code", null);
			}
		%>
	</p>
  
    
  <div class="input-container">
    <i class="fa fa-key icon"></i>
    <input class="input-field" type="password" placeholder="Password" name="password" >
  </div>

  <div class="input-container">
    <i class="fa fa-key icon"></i>
    <input class="input-field" type="password" placeholder="Confirm Password" name="password2" >
  </div>

  <button type="submit" class="btn" ><b><i class="fa fa-user-plus" ></i> Register</b></button>

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