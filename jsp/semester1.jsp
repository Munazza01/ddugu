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
    
    <meta name="description" content="Deen Dayal Upadhyaya Gorakhpur University, BCA Semester 1 Notes, Previous Year Papers,
    									Video Lectures. IT Tools and Applications, Principles of Mathematics, Functional
    									English, Programming in C.">

	<meta name="keywords" content="Deen Dayal Upadhyaya Gorakhpur University, BCA, DDUGU BCA - Semester 1, Notes, 
									Previous Year Papers, Video Lectures, MCQ QUiz.">
			
    <meta name="author" content="Atul Singh">
    
    <link rel="stylesheet" type="text/css" href="../css/semester_style.css">
    <script src = "../js/click.js"> </script>
    
    <title>DDUGU BCA - Notes, Previous Year Papers, Lectures | Semester 1</title>

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
	<h1>Semester 1</h1>
	
	<div class = "semesters">
		<div class = "bca01">
			
			<div class = "images01">
				<img alt="bca101" src="../images/it_tools_and_applications.jpg">
				<h3>BCA 101: IT Tools and Applications</h3>
			</div>
	
			  <div class = "papers01">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=1Mm5pJUt76Fii3HOkkl2DQJ9vRLNnN3wr">2019</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1bfPwiT9b-02pSn3dqrf4doYvIAcmpkC8">2018</a>
				<a target = "blank" href = "https://drive.google.com/open?id=12qe3ZzggD1__Bwj3pnANdnVDV_DirksT">2017</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1NnPr_w0CipaGQMixpG9L7AAovvqwl-hE">2016</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1Yl7R06vLXAEGZ1GYLvZ8itbuIb9TM46_">2015</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1fbae3jJIgZH3q2aOOOOvgTUVG2Zy2Blv">2014</a>
			  </div>
				
			  <div class = "notes01">
				<h3>Notes</h3>
				
				<a target = "blank" href = "https://drive.google.com/open?id=10i9626KE047m3cpznrsuMRKDuZUgQHW-">IT Tools and Applications</a>
				
			  </div>
			 
			  <div class = "videos01">
			  	<h3>Videos</h3>
			  	
			  	
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLWPirh4EWFpF_2T13UeEgZWZHc8nHBuXp">
				Tutorials Point</a>
				<a href = "#">Link 2</a>
				<a href = "#">Link 3</a>
			  </div>	
			  
			  <div class = "mcq01">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=101">MCQs</a>
			  </div>
		
		</div>
		
		<div class = "bca02">
			<div class = "images02">
				<img alt="bca102" src="../images/principles_of_mathematics.jpeg">
				<h3>BCA 102: Principles of Mathematics</h3>
			</div>
	
			  <div class = "papers02">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=1MxZ8tmTjdTNYyCPUXGGQlEa5Yvi_MJAy">2019</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1T4AciSei7k_LxrwcvvdZOil9Ea2-_fLg">2018</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1I-15x_41GmBGnjvCX_TwWv4CatmXGBK1">2017</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1PN4OMPdD5kRxDpvFypSMawPPrctDgz-Z">2016</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1mMsBT55T79wpmvJ0nrSRizqHTiwBicB7">2015</a>
				
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
			  		<a href = "../Mcqs?subcode=102">MCQs</a>
			  </div>
		</div>
		
		<div class = "bca03">
			<div class = "images03">
				<img alt="bca103" src="../images/functional_english.jpeg">
				<h3>BCA 103: Functional English</h3>
			</div>
	
			  <div class = "papers03">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=14JhCyiC1Z1PiG5nJipT7cKZ-ck8KzZrj">2019</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1OAtYrpsaPuf3k6KOnkDiUw_7SEPaQcWr">2018</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1ZhTCbaarloe3NymwhR0p9ztt0jirM4aR">2017</a>
				
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
			  	
				<a href = "#">Link 1</a>
				<a href = "#">Link 2</a>
				<a href = "#">Link 3</a>
			  </div>	
			  
			  <div class = "mcq03">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=103">MCQs</a>
			  </div>
		</div>
		
		<div class = "bca04">
			
			<div class = "images04">
				<img alt="bca104" src="../images/introduction_to_computer_programming_in_c.png">
				<h3>BCA 104: Introduction to Computer Programming in 'C'</h3>
			</div>
	
			  <div class = "papers04">
			  	<h3>Papers</h3>
			  	
				<a target = "blank" href = "https://drive.google.com/open?id=1dipLJj8V8ge3IrHDC7wNFIOnUSDla5WE">2019</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1_6XjRWeXpUOpl_5BxpwKLkAO9usfD8oz">2018</a>
				<a target = "blank" href = "https://drive.google.com/open?id=1xgtyYPMJxxpYCEBQqXmXXKEEmYFC__fY">2017</a>
				<a target = "blank" href = "https://drive.google.com/open?id=144s3Tv8--aZCAR_rXl6Lw0RtiIiKSdYm">2015</a>
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
			  	
			  	
				<a target  ="blank" href = "https://www.youtube.com/playlist?list=PLV8vIYTIdSnY_HEjGwiHz5T9sAs9tbHwm">
				Easy Engineering Classes</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PLrjkTql3jnm8qUkBwLGqqQ2iZd7HdSIEe">
				Education 4U</a>
				
				<a target = "blank" href = "https://www.youtube.com/playlist?list=PL7ersPsTyYt2Q-SqZxTA1D-melSfqBRMW">
				Saurabh Shukla</a>
				
			  </div>	
			  
			  <div class = "mcq04">
			  	<h3>MCQs</h3>
			  		<a href = "../Mcqs?subcode=104">MCQs</a>
			  </div>
		</div>
		
		<div class = "bca05">
			
			<div class = "images05">
				<img alt="bca105" src="../images/introduction_to_computer_programming_in_c.png">
				<h3>BCA 105: Practical 1</h3>
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