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
    
    <meta name="description" content="DDUGU BCA - Discussion Forum for the students and teachers of Deen Dayal 
    									Upadhyaya Gorakhpur University. Create new threads and reply to existing ones.">

	<meta name="keywords" content="Deen Dayal Upadhyaya Gorakhpur University, BCA, DDUGU BCA - Discussion Forum, 
									Create a thread, reply to threads">
			
    <meta name="author" content="Atul Singh">
    
    <link rel="stylesheet" type="text/css" href="../css/forum_style.css">
    <script src = "../js/click.js"> </script>
    <script src = "../js/ask_question.js"> </script>
    
    <title>DDUGU BCA - Discussion Forum for Deen Dayal Upadhyaya Gorakhpur University</title>

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
  	
  	<div class = "ques">
  		<h2>Forum - Questions</h2>
  		
  				<p class = "message" style = "color:black;">
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
				
			<div class = "block">
				<%
					try 
					{
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con = DriverManager.getConnection("jdbc:mysql://mydbinstance.cjuzyx0kh94e.ap-south-1.rds.amazonaws.com:3306/ddugu_bca", "root", "iamatul002");
						Statement st= con.createStatement();
						ResultSet rs=st.executeQuery("select * from question order by qid desc");
						
						while(rs.next()){ 
						%>
				<div class = "q">
					<p class = asked_by>
						<i class="fa fa-user"></i> <%out.print(rs.getString("qby"));%>
					</p>
					
					<p class = question>
						<i class="fa fa-quora"></i>
						<a href = "thread.jsp?ques=<%out.print(rs.getString("ques"));%>&qid=<%out.print(rs.getString("qid"));%>"> <%out.print(rs.getString("ques"));%></a>
					</p>
					
					<p class = date_time>
					<i class="fa fa-clock-o"></i> <%out.print((rs.getString("date"))+" "+(rs.getString("time")));%>
					</p>
					
					
				</div>
				<%
				}
				con.close();
				
				} 
				
				catch (Exception e) 
				{
					System.out.println(e);
					response.sendRedirect("error_404.jsp");
		
				}
				%>
				
			</div>
  	</div>
  	
  	<div class = "account">
  		<h2>Profile</h2>
  		
  		<div class = "data">
  					<p><i class="fa fa-user icon"></i> Name : <%
		 				String sname = (String)session.getAttribute("name");
		 				out.print(sname);
		 			%></p>
		 			
		 			<p><i class="fa fa-venus-mars icon" ></i> Gender : <%
		 				String gender = (String)session.getAttribute("gender");
		 				out.print(gender);
		 			%></p>
		 					 			
		 			<p><i class="fa fa-university icon" ></i> College : <%
		 				String college = (String)session.getAttribute("college");
		 				out.print(college);
		 			%></p>
		 			
		 			<% if(utype!=null) {
		 				if(utype.equals("Teacher")) {%>
		 			<p><i class="fa fa-graduation-cap icon" ></i> Designation : <%
	    				String professor = (String)session.getAttribute("professor");
	    				out.print(professor);
	    			} 
		 				}%>
	    			</p>
	    			
	    			<% if(utype!=null) {
	    				if(utype.equals("Student")){ %>
	    			<p><i class="fa fa-graduation-cap icon" ></i> Semester : <%
	    				String semester = (String)session.getAttribute("semester");
	    				out.print(semester);
	    			} 
	    				}%>
	    			</p>
	    			
	    	</div>
  	</div>
  	
  	<div class = "ask">
  		<h2>Ask Question</h2>
	  		
	  		<div class = "container">
	  		<form name = "AskQuestion" action="../AskQuestion" onsubmit="return validate()" method = "post">
						       		
			          <label for="question">Question</label>
			          <textarea id="question" name="question" placeholder="Question body..." style="height:100px"></textarea>
			
			  		  <button type="submit" class="btn"> Submit </button>		        
			</form>
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
        <button class="button" onclick="window.location.href = '../jsp/about.jsp';"><i class="fa fa-info"></i> About</button>
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