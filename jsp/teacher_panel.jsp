<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>    

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Spectral&display=swap" rel="stylesheet">
	<link rel="shortcut icon" href="../images/favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
    
    <meta name="description" content="DDUGU BCA - Teacher Panel, access your profile, view student queries, access bca 
    									study materials, contact students, all in one place for teachers of Deen Dayal
    									Upadhyaya Gorakhpur University">

	<meta name="keywords" content="Deen Dayal Upadhyaya Gorakhpur University, BCA, DDUGU BCA - Teacher Panel, 
									Teacher Account, Student Queries, BCA study materials, contact students">
			
    <meta name="author" content="Atul Singh">  
    
     
    <link rel="stylesheet" type="text/css" href="../css/panel_style.css">
    <script src = "../js/click.js"> </script>
    <script src = "../js/contact_students.js"> </script>
    
    <title>DDUGU BCA - Teacher Panel, Profile, Queries, BCA Study Material, Contact Students</title>

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
		
	}
	
	else
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
      <a href="../jsp/crud_mcqs.jsp"><i class="fa fa-question-circle"></i> MCQs</a>
      <a href="../Logout"><i class="fa fa-power-off"></i> Logout</a>

    
      <a href="javascript:void(0);" class="icon" onclick="myFunction()">
        <i class="fa fa-bars"></i>
      </a>
    </div>
  </div>
  
  	<div class = "middle">
  		<h2>Teacher Panel - Dashboard</h2>
  		
	  	<div class = "dashboard">	
	  	
	  		<div class = "about">
	  			<h3>Profile</h3>
	  			
	  			<div class = "account">
	  				
	  			
					  	<p style = "color: black;">
						<%
							String email_changed = (String)session.getAttribute("message");
							
							if(email_changed == null)
							{
								out.println(" ");
							}
							
							else
							{
								out.println("**"+email_changed);
								session.setAttribute("message", null);
							}
							
				
						%>
						</p>
						
						
						
			  		<p><i class="fa fa-user icon"></i> Name : <%
		 				String sname = (String)session.getAttribute("name");
		 				out.print(sname);
		 			%></p>
		 			
		 			<p><i class="fa fa-venus-mars icon" ></i> Gender : <%
		 				String gender = (String)session.getAttribute("gender");
		 				out.print(gender);
		 			%></p>
		 			
		 			<p><i class="fa fa-birthday-cake icon" ></i> Date of Birth : <%
		 				String bday = (String)session.getAttribute("bday");
		 				out.print(bday);
		 			%></p>
		 			
		 			<p><i class="fa fa-university icon" ></i> College : <%
		 				String college = (String)session.getAttribute("college");
		 				out.print(college);
		 			%></p>
		 			
		 			<p><i class="fa fa-graduation-cap icon" ></i> Designation : <%
	    				String professor = (String)session.getAttribute("professor");
	    				out.print(professor);
	    			%>
	    			</p>
		 			
		 			<p><i class="fa fa-phone-square icon"></i> Mobile Number : <%
		 				String mobile = (String)session.getAttribute("mobile");
		 				out.print(mobile);
		 			%></p>
		 			
		 			<p><i class="fa fa-envelope icon"></i> Email address : <%
		 				String email = (String)session.getAttribute("email");
			 			if(email!=null)
		 				{
							email = email.substring(0, 5);
			 				out.print(email+"*******");
		 				}
		 			%></p>
						
		 			<p><i class="fa fa-key icon"></i> Password : <%
		 				String password = (String)session.getAttribute("password");
			 			if(password!=null)
						{
							password = password.substring(0, 2);
			 				out.print(password+"******");	
						}
		 			%></p>
 			
	  			</div>
	  			
	  			<button class="button" onclick="window.location.href = '../jsp/change_email.jsp';">Change Email <i class="fa fa-envelope-o"></i> </button>
	  			<button class="button" onclick="window.location.href = '../jsp/change_password.jsp';">Change Password <i class="fa fa-key"></i> </button>
	  			
	  		</div>
	  		
	  		<div class = "notice">
	  			<h3>Student's Queries</h3>
	  			 
	  			 	
	  			 	
				<%
				try 
				{
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://mydbinstance.cjuzyx0kh94e.ap-south-1.rds.amazonaws.com:3306/ddugu_bca", "root", "iamatul002");
					Statement st= con.createStatement();
					ResultSet rs=st.executeQuery("select * from notices where utype = 'Student' order by nid desc");
					
					while(rs.next()){ 
					%>
					<!-- <tr>
					<td><%=rs.getString("nfrom") %></td>
					<td><%=rs.getString("nbody") %></td>
					<td><%=rs.getString("nto") %></td>
					<td><%=rs.getString("date") %></td>
					</tr> -->
					
					
					
						<div class="notices">
						<div class = "to"><b>For :</b> <%out.print(rs.getString("nto"));%>
						</div>
						
						<div class = "date"><b>Date :</b> <%out.print(rs.getString("date"));%>
						</div>
						
						<div class = "head"><b>Subject : <%out.print(rs.getString("subject"));%></b>
						</div>
						
						<div class = "nbody"><%out.print(rs.getString("nbody"));%>
						</div>
						
						<div class = "from"><b>From :</b> <%out.print(rs.getString("nfrom"));%>
						</div>
			    		</div>
					
					<%
					}
					con.close();
					
					} 
					
					catch (Exception e) 
					{
					System.out.println(e);
					}
				%>


	  			 	
	  			 		  			
	  		</div>
	  		
	  		<div class = "sem">
	  			<h3>Semester Panel</h3>
	  			
	  			<div class = "semesters">
		  			<div class = "one">
			  			<div class = "images">
			  				<a href = "../jsp/semester1.jsp">
			  				<img alt="semester1" src="../images/1.jpg">
			  				</a>
			  			</div>
			  			
			  			<div class = "title">
			  				<p><a href = "../jsp/semester1.jsp">1st Semester</a></p>
			  			</div>
		  			</div>
		  			
		  			<div class = "two">
			  			<div class = "images">
			  				<a href = "../jsp/semester2.jsp">
			  				<img alt="semester2" src="../images/2.jpg">
			  				</a>
			  			</div>
			  			
			  			<div class = "title">
			  				<p><a href = "../jsp/semester2.jsp">2nd Semester</a></p>
			  			</div>
		  			</div>
		  			
		  			<div class = "three">
		  				<div class = "images">
			  				<a href = "../jsp/semester3.jsp">
				  			<img alt="semester3" src="../images/3.jpg">
				  			</a>
			  			</div>
			  			
			  			<div class = "title">
			  				<p><a href = "../jsp/semester3.jsp">3rd Semester</a></p>
			  			</div>
		  			</div>
		  			
		  			<div class = "four">
		  				<div class = "images">
		  					<a href = "../jsp/semester4.jsp">
			  				<img alt="semester4" src="../images/4.jpg">
			  				</a>
			  			</div>
			  			
			  			<div class = "title">
			  				<p><a href = "../jsp/semester4.jsp">4th Semester</a></p>
			  			</div>
		  			</div>
		  			
		  			<div class = "five">
		  				<div class = "images">
		  					<a href = "../jsp/semester5.jsp">
			  				<img alt="semester5" src="../images/5.jpg">
			  				</a>
			  			</div>
			  			
			  			<div class = "title">
			  				<p><a href = "../jsp/semester5.jsp">5th Semester</a></p>
			  			</div>
		  			</div>
		  			
		  			<div class = "six">
		  				<div class = "images">
		  					<a href = "../jsp/semester6.jsp">
			  				<img alt="semester6" src="../images/6.jpg">
			  				</a>
			  			</div>
			  			
			  			<div class = "title">
			  				<p><a href = "../jsp/semester6.jsp">6th Semester</a></p>
			  			</div>
		  			</div>
		  		</div>
	  		</div>
	  		
	  		<div class = "contact">
	  			<h3>Contact Students</h3>
	  			
	  			<div class="container">
      
				<form name = "ContactStudents" action="../ContactStudents" onsubmit="return validate_notice()">
		        
		        <p style = "color:black;">
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
				
		          <label for="from">From</label>
		          <input type="text" id="from" name="from" placeholder="<%
			    				String name = (String)session.getAttribute("name");
			    				out.print(name);
			    			%>"disabled>
		
		          <label for="subject">Subject</label>
		          <input type="text" id="subject" name="subject" placeholder="Message Regarding...">
		
		          <label for="Semester">Semester</label>
		          <select id="semester" name="semester">
		            <option value="Semester 1">Semester 1</option>
		            <option value="Semester 2">Semester 2</option>
		            <option value="Semester 3">Semester 3</option>
		            <option value="Semester 4">Semester 4</option>
		            <option value="Semester 5">Semester 5</option>
		            <option value="Semester 6">Semester 6</option>
		            <option value="All Semesters">All Semesters</option>
		          </select>
		
		          <label for="notice">Notice</label>
		          
		          <textarea id="notice" name="notice" placeholder="Notice body..." style="height:200px"></textarea>
		
				
		  		  <button type="submit" class="btn"> Send Notice </button>
					
		
				 
		        </form>
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
        <button class="button" onclick="window.location.href = '../jsp/crud_mcqs.jsp';"><i class="fa fa-question-circle"></i> MCQs</button>
        <button class="button" onclick="window.location.href = '../Logout';"><i class="fa fa-power-off"></i> Logout</button>
        
         
       </div>

       <div class="copyright"><b>Copyright ? 2020 | DDUGU BCA</b> 
          <br>All rights reserved.
        </div>
          
    </div>
        
  </div>

</body>
</html>