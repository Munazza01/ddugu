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
    
    <meta name="description" content="DDUGU BCA - Deen Dayal Upadhyaya Gorakhpur University. Play MCQ Quiz Online,
    									answer questions related to your BCA academics and learn new things.">

	<meta name="keywords" content="Deen Dayal Upadhyaya Gorakhpur University, BCA, DDUGU BCA, Online MCQ Quiz">
			
    <meta name="author" content="Atul Singh">
    
    <link rel="stylesheet" type="text/css" href="../css/mcqs_style.css">
    <script src = "../js/click.js"> </script>
    
    <title>DDUGU BCA - Play MCQ Quiz Online</title>
</head>
<body>
<%

	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	
	response.setHeader("Pragma", "no-cache");
	
	response.setHeader("Expires", "0");

	if(session.getAttribute("name")==null)
	{
		response.sendRedirect("login.jsp");
	}	
	
	
	 String subcode = (String)session.getAttribute("subcode");

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
    
      <a href="javascript:void(0);" class="icon" onclick="myFunction()">
        <i class="fa fa-bars"></i>
      </a>
    </div>
  </div>
  
  
    <div class="middle">
      
        <h1><i class="fa fa-question-circle-o"></i> MCQ QnA</h1>
        <h2><%out.print(session.getAttribute("subname")); %></h2>

		
		<p>
		<%
			String score = (String)(session.getAttribute("score"));
			String answers[] = (String[])(session.getAttribute("answers"));
			if(score == null)
			{
				out.println(" ");
			}
			
			else
			{
				out.print("Your Score : "+score+" out of "+session.getAttribute("total"));
				%> <br>
				<br> <span style = "color : #white;">
				<% 
				out.print("\nCorrect Answers:");
				%> <br>
				<br>
				<%
				for(int i = 0; i<answers.length; i++)
				{
					out.print("A"+(i+1)+": "+answers[i]);
					%> <br>
					<%
				}
				session.setAttribute("score", null);
				session.setAttribute("total", null);
				session.setAttribute("answers", null);
			}
			

		%>
		</span>
	</p>
	<br>
					

<form name="questions" id="questions" action = "../McqScore">
        
<%
try 
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://mydbinstance.cjuzyx0kh94e.ap-south-1.rds.amazonaws.com:3306/ddugu_bca", "root", "iamatul002");
	Statement st= con.createStatement();
	ResultSet rs=st.executeQuery("select * from qna where subcode = '"+subcode+"'");
	int i=0;
	
	while(rs.next()){ i++; 
	String subname = rs.getString("subname");
		%>
		
		
		<div class="mcq">

            <h3>Q<%out.print(i); %>. <%=rs.getString("question") %></h3><br>
            
            <input type="radio" id="option_a" name="q<%out.print(i); %>" value="<%=rs.getString("opt_a") %>" required>
            <label for="<%=rs.getString("opt_a") %>"><%=rs.getString("opt_a") %></label><br>          

            <input type="radio" id="option_b" name="q<%out.print(i); %>" value="<%=rs.getString("opt_b") %>">
            <label for="<%=rs.getString("opt_b") %>"><%=rs.getString("opt_b") %></label><br>  
            
            <input type="radio" id="option_c" name="q<%out.print(i); %>" value="<%=rs.getString("opt_c") %>">
            <label for="<%=rs.getString("opt_c") %>"><%=rs.getString("opt_c") %></label><br>

            <input type="radio" id="option_d" name="q<%out.print(i); %>" value="<%=rs.getString("opt_d") %>">
            <label for="<%=rs.getString("opt_d") %>"><%=rs.getString("opt_d") %></label><br>
        
          </div>
		<%
		}
		session.setAttribute("parameters", i);
		con.close();
		
		} 
		
		catch (Exception e) 
		{
			response.sendRedirect("error_404.jsp");

		}
%>
		
  		<div class = "submitbtn">
		<input type="submit" value="Submit">
		</div>
          
        </form>
        


      
      </div>
  
   
    <div class="footer">
      <div class="location">
        <h3> <i class="fa fa-location-arrow"></i> Address </h3>
        <p><br> <i class="fa fa-map-marker"></i> Civil Lines,
        <br> Gorakhpur,
        <br> Uttar Pradesh <br> 273009 <br> </p>
        <i class="fa fa-map-o" aria-hidden="true"></i> 
        <a href="https://goo.gl/maps/DUJ9QjfyADNMvAxZ9" target="blank"> Google Map location</a>
     </div>

      <div class="links">
        <h3><i class="fa fa-bookmark"></i> Important Links</h3> 
        <br>
        
        <button class="button" onclick="window.location.href = '../index.jsp';"><i class="fa fa-home"></i> Home</button>
        <button class="button" onclick="window.location.href = '../jsp/contact.jsp';"><i class="fa fa-envelope"></i> Contact</button><br>
        <button class="button" onclick="window.location.href = '../jsp/forum.jsp';"><i class="fa fa-list-alt"></i> Forum</button>
        <button class="button" onclick="window.location.href = '../jsp/student_panel.jsp';"><i class="fa fa-desktop"></i> Dashboard</button><br>
        <button class="button" onclick="window.location.href = '../Logout';"><i class="fa fa-power-off"></i> Logout</button>
        
      </div>

      <div class="copyright"><b>Copyright © 2020 | DDUGU BCA</b> 
          <br>All rights reserved.
        </div>
        
  </div>
      
</div>

</body>
</html>