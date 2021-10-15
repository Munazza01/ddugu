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
    
    
    <meta name="description" content="DDUGU BCA - Discussion Thread for the students and teachers of Deen Dayal 
    									Upadhyaya Gorakhpur University. View threads and reply to existing ones.">

	<meta name="keywords" content="Deen Dayal Upadhyaya Gorakhpur University, BCA, DDUGU BCA - Discussion Thread, 
									view and reply to threads.">
			
    <meta name="author" content="Atul Singh">
    
    <link rel="stylesheet" type="text/css" href="../css/thread_style.css">
    <script src = "../js/click.js"> </script>
    <script src = "../js/comment.js"> </script>
    
    <title>DDUGU BCA - Thread for discussion</title>

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
  	<div class = "thread">
  		<h2>Thread Discussion</h2>
  		
		<%
			String ques = request.getParameter("ques");
			String qid = request.getParameter("qid");
			
			session.setAttribute("ques", ques);
			session.setAttribute("qid", qid);
		%>
		<h3><i class="fa fa-quora"></i>	<%out.print(ques);%></h3>
				
  		<%
			try 
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://mydbinstance.cjuzyx0kh94e.ap-south-1.rds.amazonaws.com:3306/ddugu_bca", "root", "iamatul002");
				Statement st= con.createStatement();
				ResultSet rs=st.executeQuery("select * from reply where qid = '"+qid+"' order by rid asc");
						
				while(rs.next()){ 
				%>
					<div class = "block">
						<p class = "user">
							<i class="fa fa-user"></i> <%out.print(rs.getString("rby"));%>
						</p>
						
						<p class = "reply">
							<i class="fa fa-comment"></i> <%out.print(rs.getString("rply"));%>
						</p>
						
						<p class = "date-time">
							<i class="fa fa-clock-o"></i> <%out.print((rs.getString("date"))+" "+rs.getString("time"));%>
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
			
			<div class = "comment">
				<div class = "container">
		  		<form name = "Comment" action="../Comment" onsubmit="return validate()" method = "post">
							       		
				          <textarea id="comment" name="comment" placeholder="Add your comment..." style="height:100px"></textarea>
				
				  		  <button type="submit" class="btn"> Submit </button>		        
				</form>
				</div>
			</div>
  	</div>
  	
  	
  	<div class = "ques">
  		<h2>Latest Threads</h2>
  		
  		<div class = "questions">
  		
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
					<p>
						<i class="fa fa-quora"></i>
						<a href = "thread.jsp?ques=<%out.print(rs.getString("ques"));%>&qid=<%out.print(rs.getString("qid"));%>"> <%out.print(rs.getString("ques"));%></a>
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