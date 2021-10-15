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
    
    
    <meta name="description" content="Deen Dayal Upadhyaya Gorakhpur University, BCA Semester 5 Notes, Previous Year Papers,
    									Video Lectures. JAVA Programming, ORACLE and PL/SQL, Computer Networks,
    									Software Project Management.">

	<meta name="keywords" content="Deen Dayal Upadhyaya Gorakhpur University, BCA, DDUGU BCA - Semester 5, Notes, 
									Previous Year Papers, Video Lectures, MCQ QUiz.">
			
    <meta name="author" content="Atul Singh">
    
    <link rel="stylesheet" type="text/css" href="../css/semester_style.css">
    <script src = "../js/click.js"> </script>
    
    <title>DDUGU BCA - Notes, Previous Year Papers, Lectures | Semester 5</title>

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
	<h1>Semester 5</h1>
	
	<div class = "semesters">
		<div class = "bca01">
			
			<div class = "images01">
				<img alt="bca501" src="../images/internet_and_java_programming.png">
				<h3>BCA 501: Internet and Java Programming</h3>
			</div>
	
			  <div class = "papers01">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=1qcTR0kmPrutrw8dUPKhat3eaaPEf5nA4">2020</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1lSLLSo8BkavElGrHN5ZnjWeMWjL6BaYs">2019</a>
		
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
			  	
			  	
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLBlnK6fEyqRjKA_NuK9mHmlk0dZzuP1P5">
				Neso Academy</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLWPirh4EWFpH79B3fG8eK4S53TUDaxYNE">
				Tutorials Point</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLV8vIYTIdSnbL_fSaqiYpPh-KwNCavjIr">
				Easy Engineering Classes</a>
				
				
			  </div>	
			  
			  <div class = "mcq01">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=501">MCQs</a>
			  </div>
		
		</div>
		
		<div class = "bca02">
			<div class = "images02">
				<img alt="bca502" src="../images/oracle_and_plsql.png">
				<h3>BCA 502: Oracle and PL/SQL</h3>
			</div>
	
			  <div class = "papers02">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=1qrpbKMMZGT01MgjPhgIApExjUlXwWozw">2020</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1DnmDl_S9DUnr9lr6_yDrlguz3SaabQ7b">2019</a>
				<a target = "blank" href = "https://drive.google.com/open?id=13M8gno4kOhzRASTkjAln2lAxPsC5DS5e">2018</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1Zmc46SoLSvo5Ii9bMmbc4VeQjZ9FdCw3">2017</a>
				
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
			  	
			  	
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLWPirh4EWFpGKVoAXc4EjgaV4jbAyLrxe">
				Oracle SQL</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLWPirh4EWFpHDEBxaybcsD_BP1iEwDr0D">
				Oracle DB</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLV8vIYTIdSnadFpRMvtA260-3-jkIDFaG">
				PL/SQL</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLV8vIYTIdSnb7av5opUF2p3Xv9CLwOfbq">
				SQL</a>
			  </div>	
			  
			  <div class = "mcq02">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=502">MCQs</a>
			  </div>
		</div>
		
		<div class = "bca03">
			<div class = "images03">
				<img alt="bca503" src="../images/computer_networks.png">
				<h3>BCA 503: Computer Networks</h3>
			</div>
	
			  <div class = "papers03">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=1yPUckqwtL4Oa0YrnUXQAQ5eVLL4hLpz5">2020</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1RnR7zudnKrZovW4wGgxC9RbGIUEIpSb9">2019</a>
				
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
			  	
			  	
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLBlnK6fEyqRgMCUAG0XRw78UA8qnv6jEx">
				Neso Academy</a>
				
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLWPirh4EWFpHJrW1D9UB24wsbM3zx7QMx">
				Tutorials Point</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLxCzCOWd7aiGFBD2-2joCpWOLUrDLvVV_">
				Gate Smasher</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLV8vIYTIdSnYgxRYBC7blHaVUGFHUXLns">
				Easy Engineering Classes</a>
				
			  </div>	
			  
			  <div class = "mcq03">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=503">MCQs</a>
			  </div>
		</div>
		
		<div class = "bca04">
			
			<div class = "images04">
				<img alt="bca504" src="../images/software_project_management.png">
				<h3>BCA 504: Software Project Management</h3>
			</div>
	
			  <div class = "papers04">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=1hHDRndzM1nA9QDBdI0BrpEmaiOvgSbIW">2020</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1kz29kU-Jl1E1AXXW9lvlBAt_BqB5LISA">2019</a>
				
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
			  	
			  	
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PL90ak0TbaGISVoUm5vR6EGwj9GN3Vv_xC">
				Software Project Management</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLI0WdhayQoFC3JUXMzakqmst7l9W0LjwN">
				Software Project Management</a>
				
			  </div>	
			  
			  <div class = "mcq04">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=504">MCQs</a>
			  </div>
		</div>
		
		<div class = "bca05">
			
			<div class = "images05">
				<img alt="bca505" src="../images/oracle_and_plsql.png">
				<h3>BCA 505: Practical 5</h3>
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