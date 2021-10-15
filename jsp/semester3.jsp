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
    
    <meta name="description" content="Deen Dayal Upadhyaya Gorakhpur University, BCA Semester 3 Notes, Previous Year Papers,
    									Video Lectures. Operating System, Computer Oriented Mathematics, Data Structure 
    									Computer Organization and Architecture.">

	<meta name="keywords" content="Deen Dayal Upadhyaya Gorakhpur University, BCA, DDUGU BCA - Semester 3, Notes, 
									Previous Year Papers, Video Lectures, MCQ QUiz.">
			
    <meta name="author" content="Atul Singh">
       
    <link rel="stylesheet" type="text/css" href="../css/semester_style.css">
    <script src = "../js/click.js"> </script>
    
    <title>DDUGU BCA - Notes, Previous Year Papers, Lectures | Semester 3</title>

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
	<h1>Semester 3</h1>
	
	<div class = "semesters">
		<div class = "bca01">
			
			<div class = "images01">
				<img alt="bca301" src="../images/operating_system.png">
				<h3>BCA 301: Operating System</h3>
			</div>
	
			  <div class = "papers01">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=1Bxr7XklGEA8ZdwBexFomsR743dNB_esr">2020</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1XB-ZMl3Q7cqSi_fklLUGa_tNYfDvZs4a">2019</a>

			  </div>
				
			  <div class = "notes01">
				<h3>Notes</h3>
				
				<a target = "blank" href = "https://drive.google.com/open?id=10s3T6BPMfxa5QT2Ztvy04Nj-etqSX8kT">
				Operating System</a>
				
			  </div>
			 
			  <div class = "videos01">
			  	<h3>Videos</h3>
			  	
			  	
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLBlnK6fEyqRiVhbXDGLXDk_OQAeuVcp2O">
				Neso Academy</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLxCzCOWd7aiGz9donHRrE9I3Mwn6XdP8p">
				Gate Smasher</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLrjkTql3jnm9U1tSPnPQWQGIGNkUwBFv-">
				Education 4U</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLWPirh4EWFpGkHH9JTKH9KsnfAA471Fhy">
				Tutorials Point</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLV8vIYTIdSnZ67NQObdXE0gFjrzPrNKHp">
				Easy Engineering Classes</a>
			  </div>	
			  
			  <div class = "mcq01">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=301">MCQs</a>
			  </div>
		
		</div>
		
		<div class = "bca02">
			<div class = "images02">
				<img alt="bca302" src="../images/computer_oriented_mathematics.png">
				<h3>BCA 302: Computer Oriented Mathematics</h3>
			</div>
	
			  <div class = "papers02">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=1pqDRREcYbrdgWka_pB5CeiqnKobxTitz">2020</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1KKqZdwB97ZcUz7wmmtkL7lFk2S3F85u-">2019</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1Xx1CHOSnJRKEUZQZchVUE-29CTEJ681x">2018</a>
	
			  </div>
				
			  <div class = "notes02">
				<h3>Notes</h3>
				
				<a href = "#">Unit 1</a>
				<a href = "#">Unit 2</a>
				<a href = "#">Unit 3</a>
				<a href = "#">Unit 4</a>
				<a href = "#">Unit 5</a>
			  </div>
			 
			  <div class = "videos02">
			  	<h3>Videos</h3>
			  	
			  	
				<a href = "#">Link 1</a>
				<a href = "#">Link 2</a>
				<a href = "#">Link 3</a>
			  
			  </div>	
			  
			  <div class = "mcq02">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=302">MCQs</a>
			  </div>
		</div>
		
		<div class = "bca03">
			<div class = "images03">
				<img alt="bca303" src="../images/data_structure.png">
				<h3>BCA 303: Data Structure</h3>
			</div>
	
			  <div class = "papers03">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=1ke9FZ2S31E-GaGOEjPG6er4Dxq6MrP7g">2020</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1XWWR-hnComgPcK4juy63-hoq9eks7hs3">2019</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1ZktWWJeMN6cqx1w1w3HRStH-GqKXj1qF">2018</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1C2cmIxEacZCLEqBokyqb-5s6QKtlpR7o">2016</a>

			  </div>
				
			  <div class = "notes03">
				<h3>Notes</h3>
				
				<a href = "#">Unit 1</a>
				<a href = "#">Unit 2</a>
				<a href = "#">Unit 3</a>
				<a href = "#">Unit 4</a>
				<a href = "#">Unit 5</a>
			  </div>
			 
			  <div class = "videos03">
			  	<h3>Videos</h3>
			  	
			  	
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLWPirh4EWFpG49yASGCmvOwXwVvgnm6Jt">
				Tutorials Point</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLBlnK6fEyqRhX6r2uhhlubuF5QextdCSM">
				Neso Academy</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLsFNQxKNzefJNztGGoQC-59UhSwIaiIW3">
				Saurabh Shukla</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLrjkTql3jnm8ikiQIeIHrMYCaBfkBkfYR">
				Education 4U</a>
				
				
			  </div>	
			  
			  <div class = "mcq03">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=303">MCQs</a>
			  </div>
		</div>
		
		<div class = "bca04">
			
			<div class = "images04">
				<img alt="bca304" src="../images/computer_organization_and_architecture.png">
				<h3>BCA 304: Computer Organization and Architecture</h3>
			</div>
	
			  <div class = "papers04">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=1YGlpFA3EmqajlkaaERWk1slnpb_NCgy_">2020</a>
				
			  </div>
				
			  <div class = "notes04">
				<h3>Notes</h3>
				
				<a href = "#">Unit 1</a>
				<a href = "#">Unit 2</a>
				<a href = "#">Unit 3</a>
				<a href = "#">Unit 4</a>
				<a href = "#">Unit 5</a>
			  </div>
			 
			  <div class = "videos04">
			  	<h3>Videos</h3>
			  	
			  					
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLrjkTql3jnm8AcFgkc5TE_yQgeHEuKYrG">
				Education 4U</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLV8vIYTIdSnar4uzz-4TIlgyFJ2m18NE3">
				Easy Engineering Classes</a>
				
			  </div>	
			  
			  <div class = "mcq04">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=304">MCQs</a>
			  </div>
		</div>
		
		<div class = "bca05">
			
			<div class = "images05">
				<img alt="bca305" src="../images/data_structure.png">
				<h3>BCA 305: Practical 3</h3>
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