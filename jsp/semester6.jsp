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
    
    <meta name="description" content="Deen Dayal Upadhyaya Gorakhpur University, BCA Semester 6 Notes, Previous Year Papers,
    									Video Lectures. Advance Networks and Network Security, Web Development Tools and 
    									Techniques.">

	<meta name="keywords" content="Deen Dayal Upadhyaya Gorakhpur University, BCA, DDUGU BCA - Semester 6, Notes, 
									Previous Year Papers, Video Lectures, MCQ QUiz.">
			
    <meta name="author" content="Atul Singh">
      
    <link rel="stylesheet" type="text/css" href="../css/semester_style.css">
    <script src = "../js/click.js"> </script>
    
    <title>DDUGU BCA - Notes, Previous Year Papers, Lectures | Semester 6</title>

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
  
<div class = "middle">
	<h1>Semester 6</h1>
	
	<div class = "semesters">
		<div class = "bca01">
			
			<div class = "images01">
				<img alt="bca601" src="../images/advance_networks_and_security.png">
				<h3>BCA 601: Advance Networks and Network Security</h3>
			</div>
	
			  <div class = "papers01">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=1fTZOXx9jEkK3dp1GlcBh5YKhYejqYnX6">2019</a>
		
			  </div>
				
			  <div class = "notes01">
				<h3>Notes</h3>
				
				<a target = "blank" href = "https://drive.google.com/open?id=10eCrSPG-fHnMsxEn8_QjA8PWGMLTH8qJ">
				Advance Networks and Network Security</a>
			
			  </div>
			 
			  <div class = "videos01">
			  	<h3>Videos</h3>
			  	
			  	
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLV8vIYTIdSnYazIVgQkws7MqhiMaW-ocN">
				Network Security</a>
				
				<a href = "#">Link 2</a>
				<a href = "#">Link 3</a>
			  </div>	
			  
			  <div class = "mcq01">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=601">MCQs</a>
			  </div>
		
		</div>
		
		<div class = "bca02">
			<div class = "images02">
				<img alt="bca602" src="../images/web_development_tools_and_techniques.png">
				<h3>BCA 602: Web Development Tools and Techniques</h3>
			</div>
	
			  <div class = "papers02">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=1oib6ORraN9HcpxVLCvCA8zkg6PzrFtBd">2019</a>
				
			  </div>
				
			  <div class = "notes02">
				<h3>Notes</h3>
				
				<a target = "blank" href = "https://drive.google.com/open?id=10AGwBmWe9hz0oZW0hBN57ho_74O27W4F">
				Web Development Tools and Techniques</a>
				
			  </div>
			 
			  <div class = "videos02">
			  	<h3>Videos</h3>
			  	
			  	
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLrjkTql3jnm8d1ddpVKifXO_fPjSKATCp">
				Education 4U</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLV8vIYTIdSnbTTa5O4YUl7ttihyGKsm06">
				Easy Engineering Classes</a>
			  </div>	
			  
			  <div class = "mcq02">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=602">MCQs</a>
			  </div>
		</div>
		
		
		<div class = "bca05">
			
			<div class = "images05">
				<img alt="bca605" src="../images/web_development_tools_and_techniques.png">
				<h3>BCA 605: Practical 6</h3>
			</div>
			
		  <div class = "asg">
		  	<h3>Assignment</h3>
		  		<a href = "#">Programs</a>
	      </div>
		</div>
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
        <button class="button" onclick="window.location.href = '../jsp/forum.jsp';"><i class="fa fa-list-alt"></i> Forum</button>
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