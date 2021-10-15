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
    
    <meta name="description" content="Deen Dayal Upadhyaya Gorakhpur University, BCA Semester 4 Notes, Previous Year Papers,
    									Video Lectures. Introduction to  DBMS, Operation Research, Computer Graphics,
    									Software Engineering.">

	<meta name="keywords" content="Deen Dayal Upadhyaya Gorakhpur University, BCA, DDUGU BCA - Semester 4, Notes, 
									Previous Year Papers, Video Lectures, MCQ QUiz.">
			
    <meta name="author" content="Atul Singh">
    
        
    <link rel="stylesheet" type="text/css" href="../css/semester_style.css">
    <script src = "../js/click.js"> </script>
    
    <title>DDUGU BCA - Notes, Previous Year Papers, Lectures | Semester 4</title>

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
	<h1>Semester 4</h1>
	
	<div class = "semesters">
		<div class = "bca01">
			
			<div class = "images01">
				<img alt="bca401" src="../images/introduction_to_dbms.png">
				<h3>BCA 401: Introduction to Database Management System</h3>
			</div>
	
			  <div class = "papers01">
			  	<h3>Papers</h3>
			  	
				
				<a target = "blank" href = "https://drive.google.com/open?id=1hrjJJOMlfjQjrDn0alOeCnw49GmmfQ0O">2019</a>
				
			  </div>
				
			  <div class = "notes01">
				<h3>Notes</h3>
				
				<a href = "#">Unit 1</a>
				<a href = "#">Unit 2</a>
				<a href = "#">Unit 3</a>
				<a href = "#">Unit 4</a>
				<a href = "#">Unit 5</a>
			  </div>
			 
			  <div class = "videos01">
			  	<h3>Videos</h3>
			  	
			  	
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLxCzCOWd7aiFAN6I8CuViBuCdJgiOkT2Y">
				Gate Smasher</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLrjkTql3jnm-CLxHftqLgkrZbM8fUt0vn">
				Education 4U</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLWPirh4EWFpHMw9bRo47tn4aknBUvuXNU">
				Tutorials Point</a>
			  </div>	
			  
			  <div class = "mcq01">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=401">MCQs</a>
			  </div>
		
		</div>
		
		<div class = "bca02">
			<div class = "images02">
				<img alt="bca402" src="../images/operation_research.png">
				<h3>BCA 402: Operation Research</h3>
			</div>
	
			  <div class = "papers02">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=1lV-WIollMXXwI8495twLU5W2utbHg6ky">2019</a>
				
			  </div>
				
			  <div class = "notes02">
				<h3>Notes</h3>
				
				<a target = "blank" href = "https://drive.google.com/open?id=10Ahu93WmfJlPgC37gLTFaNEthX4M7QQL">
				Reference Book</a>
				
				<a target = "blank" href = "https://drive.google.com/open?id=10YIkmoM4pY9wfWSmuPMxj2MhbhY2z1oE">
				Class Notes</a>
				
			  </div>
			 
			  <div class = "videos02">
			  	<h3>Videos</h3>
			  	
			  	
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLdM-WZokR4tbo8i55idpkceq3cKxmrNIF">
				Operation Research</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLabr9RWfBcnoLyXr4Y7MzmHSu3bDjLvhu">
				Kauser Wise</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLjc8ejfjpgTf0LaDEHgLB3gCHZYcNtsoX">
				Operation Research</a>
			  </div>	
			  
			  <div class = "mcq02">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=402">MCQs</a>
			  </div>
		</div>
		
		<div class = "bca03">
			<div class = "images03">
				<img alt="bca403" src="../images/computer_graphics.png">
				<h3>BCA 403: Computer Graphics</h3>
			</div>
	
			  <div class = "papers03">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=10bmKA8gDgABpEUV0tlycqOulC7jOmM09">2019</a>
				
			  </div>
				
			  <div class = "notes03">
				<h3>Notes</h3>
				
				<a href = "https://drive.google.com/open?id=10YKzECa1au0_8VVwL_GNwIs33_nBE9-U">
				Computer Graphics Notes</a>
				
				<a href = "https://drive.google.com/open?id=11AXK_jTwwqm3nM9AgJLvtYyBLCA1Q4br">
				Reference Book</a>
				
			  </div>
			 
			  <div class = "videos03">
			  	<h3>Videos</h3>
			  	
			  	
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLV8vIYTIdSnaTVCcd954N14bVOOgYh-2V">
				Easy Engineering Classes</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLrjkTql3jnm9cY0ijEyr2fPdwnH-0t8EY">
				Education 4U</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLL8qj6F8dGlScni_9ZmeOMoRodrwzhvTq">
				Tutorials Space</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PL58YSwlpvFr0RTFpMri7d-haW_q1kivx6">
				Quick CS</a>
			
			  </div>	
			  
			  <div class = "mcq03">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=403">MCQs</a>
			  </div>
		</div>
		
		<div class = "bca04">
			
			<div class = "images04">
				<img alt="bca404" src="../images/software_engineering.png">
				<h3>BCA 404: Software Engineering</h3>
			</div>
	
			  <div class = "papers04">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=1fMJx7bISSvWU8aGFkN5Ft_19Ps_-E6oc">2019</a>
				
				
			  </div>
				
			  <div class = "notes04">
				<h3>Notes</h3>
				
				<a target = "blank" href = "https://drive.google.com/open?id=10UKANXRtWMohhLBJC7J5rEH_5iwh05qn">
				Software Engineering Class Notes</a>
				
			  </div>
			 
			  <div class = "videos04">
			  	<h3>Videos</h3>
			  	
			  	
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLWPirh4EWFpG2b1L3CL-OAPYcM25jLjXH">
				Tutorials Point</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLV8vIYTIdSnat3WCO9jfehtZyjnxb74wm">
				Easy Engineering Classes</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLrjkTql3jnm9b5nr-ggx7Pt1G4UAHeFlJ">
				Education 4U</a>
				
				
			  </div>	
			  
			  <div class = "mcq04">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=404">MCQs</a>
			  </div>
		</div>
		
		<div class = "bca05">
			
			<div class = "images05">
				<img alt="bca405" src="../images/introduction_to_dbms.png">
				<h3>BCA 405: Practical 4</h3>
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