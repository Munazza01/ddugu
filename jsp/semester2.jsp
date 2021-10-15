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
    
    
    <meta name="description" content="Deen Dayal Upadhyaya Gorakhpur University, BCA Semester 2 Notes, Previous Year Papers,
    									Video Lectures. Discrete Mathematics, Accounting and Financial Management, Digital
    									Circuit and Logic Design, C++.">

	<meta name="keywords" content="Deen Dayal Upadhyaya Gorakhpur University, BCA, DDUGU BCA - Semester 2, Notes, 
									Previous Year Papers, Video Lectures, MCQ QUiz.">
			
    <meta name="author" content="Atul Singh">
    
    
    <link rel="stylesheet" type="text/css" href="../css/semester_style.css">
    <script src = "../js/click.js"> </script>
    
    <title>DDUGU BCA - Notes, Previous Year Papers, Lectures | Semester 2</title>

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
	<h1>Semester 2</h1>
	
	<div class = "semesters">
		<div class = "bca01">
			
			<div class = "images01">
				<img alt="bca201" src="../images/discrete_mathematics.png">
				<h3>BCA 201: Discrete Mathematics</h3>
			</div>
	
			  <div class = "papers01">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=1x_jJKYFPhYmgLwhtUn08g4Ztqs6WCOXY">2016</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1XwhEyBq4pNKE1IbrfcPif-txG0Al5rRu">2017</a>
				
				
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
			  	
			  	
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLBlnK6fEyqRhqJPDXcvYlLfXPh37L89g3">
				Neso Academy</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLrjkTql3jnm_GEUWTjAS38-hgtT3Dzuag">
				Education 4U</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLV8vIYTIdSnZjLhFRkVBsjQr5NxIiq1b3">
				Easy Engineering Classes</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLV8vIYTIdSnboDLLXli062s6BQk51Fxsy">
				Easy Engineering Classes - Graph Theory</a>
			  </div>	
			  
			  <div class = "mcq01">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=201">MCQs</a>
			  </div>
		
		</div>
		
		<div class = "bca02">
			<div class = "images02">
				<img alt="bca202" src="../images/accounting_and_financial_management.png">
				<h3>BCA 202: Accounting and Financial Management</h3>
			</div>
	
			  <div class = "papers02">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=10ZwQYAZRqdytsbDNFaMZEsEPegN4MUJL">2017</a>

			  </div>
				
			  <div class = "notes02">
				<h3>Notes</h3>
				
				<a target = "blank" href = "https://drive.google.com/open?id=10hP0WYAoJ761u9NWa8nAsEn5iN9YRtEB">
				Share Capital</a>
				
				<a target = "blank" href = "https://drive.google.com/open?id=10al0NebDAJ5OmaiHD4GgJBEaU9qIP-PX">
				Management Accounting</a>
				
				<a target = "blank" href = "https://drive.google.com/open?id=105CWsZubh8bNlp_yoeLGoyasNFU9cMsR">
				Sources of Raising Funds</a>
				
				<a target = "blank" href = "https://drive.google.com/open?id=10ZwGOX3saJZywfZFfM1HjHS8HPJ8TbYK">
				Role of Computer in Accounting</a>
			  </div>
			 
			  <div class = "videos02">
			  	<h3>Videos</h3>
			  	
			  	
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLLhSIFfDZcUUwKluDIB2exPUYc75Va37x">
				Financial Accounting</a>
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PL6FLLL4QsBGXZTI9LWs-fKIwluNZzRFBb">
				Accounting and Financial Management</a>
			  </div>	
			  
			  <div class = "mcq02">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=202">MCQs</a>
			  </div>
		</div>
		
		<div class = "bca03">
			<div class = "images03">
				<img alt="bca203" src="../images/digital_circuit_and_logic_design.png">
				<h3>BCA 203: Digital Circuit and Logic Design</h3>
			</div>
	
			  <div class = "papers03">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=12a6PxNaw57MTcIgEXwglf3JS4VPbC1j-">2018</a>

			  </div>
				
			  <div class = "notes03">
				<h3>Notes</h3>
				
				<a target = "blank" href = "https://drive.google.com/open?id=10SritnBzxwcvvvJHfQAZE7fEMxK2YU2M">
				Flip Flop</a>
				
				<a target = "blank" href = "https://drive.google.com/open?id=10ETJUXhf6CRPAH_JgEKvhIWeR9LfMV1x">
				K-Map</a>
				
				<a target = "blank" href = "https://drive.google.com/open?id=10UCIVUgL9hDYtwXkOBP6bzhZkFCJHDjN">
				Counter and Register</a>
				
				<a target = "blank" href = "https://drive.google.com/open?id=10Jf2ijJaLlyqz5YuXD1qESramn-UVZLB">
				Combinational Logic Circuits</a>
				
				<a target = "blank" href = "https://drive.google.com/open?id=10A4RJEwTCJmBmW4jsjNIFimvQkSjoDic">
				Boolean Algebra</a>
				
				<a target = "blank" href = "https://drive.google.com/open?id=10VwGRdAE8KefSXEIgY8R5THsAxyHd0BJ">
				Number System</a>
				
				<a target = "blank" href = "https://drive.google.com/open?id=103KiDwzZrNECYcjUnAvmnr1SxkfTcMF5">
				Logic Gates</a>
				
			  </div>
			 
			  <div class = "videos03">
			  	<h3>Videos</h3>
			  	
			  	
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLBlnK6fEyqRjMH3mWf6kwqiTbT798eAOm">
				Neso Academy</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLV8vIYTIdSnbGkyXPCpW9Evwu0kxd9EjB">
				Easy Engineering Classes</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLWPirh4EWFpF-MvxXBIfX8vCIb8kBXcbd">
				Sequential Circuit Design</a>
			  </div>	
			  
			  <div class = "mcq03">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=203">MCQs</a>
			  </div>
		</div>
		
		<div class = "bca04">
			
			<div class = "images04">
				<img alt="bca204" src="../images/introduction_to_object_oriented_programming_and_c++.png">
				<h3>BCA 204: Introduction to Object Oriented Programming and C++</h3>
			</div>
	
			  <div class = "papers04">
			  	<h3>Papers</h3>
			  	
			  	
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=1VOhSnrsf8hYXmg7hROIJM7DKZLlOvGAr">2014</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1VKrY_yQmTVgrWSTawDIlUzmWqJE4vhxU">2015</a>
				<a target = "blank" href = "https://drive.google.com/open?id=12Ctk36S47I8qvYmY1e1CCSncmYnXdDOW">2015</a>
				
			  </div>
				
			  <div class = "notes04">
				<h3>Notes</h3>
				
				<a target = "blank" href = "https://drive.google.com/open?id=11uSEzf9FXqbTUxd_rUshu_liMUYo5GEa">
				C++ and OOP</a>
				
			  </div>
			 
			  <div class = "videos04">
			  	<h3>Videos</h3>
			  	
			  	
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLWPirh4EWFpGDG3--IKMLPoYrgfuhaz_t">
				Tutorials Point</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLrjkTql3jnm-Voi7giH4JITCi6cuZSN42">
				Education 4U</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLV8vIYTIdSnYagLuQQzCgNnjQZwJbQk3s">
				Easy Engineering Classes</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLLYz8uHU480j37APNXBdPz7YzAi4XlQUF">
				Saurabh Shukla</a>
			  </div>	
			  
			  <div class = "mcq04">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=204">MCQs</a>
			  </div>
		</div>
		
		<div class = "bca05">
			
			<div class = "images05">
				<img alt="bca205" src="../images/introduction_to_object_oriented_programming_and_c++.png">
				<h3>BCA 205: Practical 2</h3>
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