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
    
    <meta name="description" content="DDUGU BCA - Deen Dayal Upadhyaya Gorakhpur University, Contact the developers
    									of DDUGU BCA">

	<meta name="keywords" content="Deen Dayal Upadhyaya Gorakhpur University, DDUGU BCA, Contact Developers">
			
    <meta name="author" content="Atul Singh">
    
    <link rel="stylesheet" type="text/css" href="../css/contact_style.css">
    <script src = "../js/click.js"> </script>
    
    <title>DDUGU BCA - Contact Developers</title>

</head>

<body>
<div class="grid-container">
  <div class="header">
    <div class="logo">
      <a href="../index.jsp">
        <img src="../images/ddugubca.png">
      </a>
    </div>
  
    <div class="topnav" id="myTopnav">
      <a href="../index.jsp" ><i class="fa fa-home" ></i> Home</a>
      <a href="../jsp/contact.jsp" class="active"><i class="fa fa-envelope" ></i> Contact</a>
      <a href="../jsp/about.jsp"><i class="fa fa-info" ></i> About</a>
    
      <a href="javascript:void(0);" class="icon" onclick="myFunction()">
        <i class="fa fa-bars"></i>
      </a>
    </div>
  </div>
  
	
	<div class = "middle">
					
		<div class = "devs">
			
			<h1>Developers</h1>
				
			<div class = "one">
				<img alt="atul singh" src="../images/atul.jpeg">
			
				<h3>Atul Singh</h3>
				<p>
					<span><i class="fa fa-long-arrow-right"></i> Project Manager</span> <br>
					<span><i class="fa fa-long-arrow-right"></i> Full Stack Developer</span>					
				</p>
				
			</div>
			
			<div class = "two">
				<img alt="astha rai" src="../images/astha.jpg">
			
				<h3>Astha Rai</h3>
				<p>
					<span><i class="fa fa-long-arrow-right"></i> Back-end Developer</span> <br>
					<span><i class="fa fa-long-arrow-right"></i> Information Architect</span> <br>
				</p>
				
				
			</div>
			
			<div class = "three">
				<img alt="munazza safdar" src="../images/munazza.jpeg">
				<h3>Munazza Safdar</h3>
				<p>
					<span><i class="fa fa-long-arrow-right"></i> FullStack Developer</span> <br>
					<span><i class="fa fa-long-arrow-right"></i> Content Contributor</span> <br>
					
				</p>
				
			</div>
			
			<div class = "four">
				<img alt="shikha gupta" src="../images/shikha.jpeg">
				<h3>Shikha Gupta</h3>
				<p>
					<span><i class="fa fa-long-arrow-right"></i> UI/UX Designer</span> <br>
					<span><i class="fa fa-long-arrow-right"></i> Content Editor</span> <br>
				</p>
				
			</div>
			
			<div class = "five">
				<img alt="aman kumar" src="../images/aman.jpeg">
				<h3>Aman Kumar</h3>
				<p>
					<span><i class="fa fa-long-arrow-right"></i> Q/A Specialist</span> <br>
					<span><i class="fa fa-long-arrow-right"></i> Tester</span> <br>
				</p>
			</div>
			
			<div class = "six">
				<img alt="shivam singh" src="../images/shivam.jpeg">
				<h3>Shivam Singh</h3>
				<p>
					<span><i class="fa fa-long-arrow-right"></i> Tester</span> <br>
				</p>
			</div>	
		</div>
		
		<div class = "contact">
			<div class = "message">
				<h1><i class="fa fa-comment-o"></i> Drop a Message</h1>
									
					<p style = "color:white;">
					
					<%
					String message = (String)session.getAttribute("message");
					
					if(message == null)
					{
						out.println(" ");
					}
					
					else
					{
						out.println(message);
						session.setAttribute("message", null);
					}
					
		
				%>
				</p>				
	
			<div class="container">
			
				  <form action="../ContactDevelopers">
				    <label for="name">Your Name</label>
				    <input type="text" id="name" name="name" placeholder="Your name.." required>
				    
				    <label for="subject">Subject</label>
				    <input type="text" id="subject" name="subject" placeholder="Subject" required>
					
				    <label for="to">To</label>
				    <select id="to" name="to">
				      <option value="atul singh">Atul Singh</option>
				      <option value="astha rai">Astha Rai</option>
				      <option value="aman kumar">Aman Kumar</option>
				      <option value="shikha gupta">Shikha Gupta</option>
				      <option value="munazza safdar">Munazza Safdar</option>
				      <option value="shivam singh">Shivam Singh</option>
				      <option value="all">All Team Members</option>
				    </select>
				
				    <label for="message">Message</label>
				    <textarea id="message" name="message" placeholder="Write your message.." style="height:200px" required></textarea>
				
	  				<button type="submit" class="btn"><b>Send Message <i class="fa fa-paper-plane"></i></b></button>	  
				  </form>
				</div>
		
				
				
			</div>
			
			<div class = "details">
				<h1><i class = "fa fa-envelope-o"></i> Contact Us</h1>
				<p>
					If you have any questions, requests or queries, feel free to drop us a mail or text.
                	We will try to respond to you as soon as we can within few business days.
               		<br><br>Also if you like and want to appreciate our  work, do contact us and tell us how you feel.
				</p>
				
				<p class="credentials">
		          <i class="fa fa-mobile"></i> +91-8181821103
		          <br><br><i class="fa fa-whatsapp"></i> +91-8840823340
		          <br><br><i class="fa fa-envelope-o pr-10"></i> ddugubca@gmail.com
		        </p>
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