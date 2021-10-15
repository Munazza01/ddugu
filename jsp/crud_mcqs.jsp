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
   	
    <meta name="description" content="DDUGU BCA -  Deen Dayal Upadhyaya Gorakhpur University. Add, edit, delete mcqs for 
    									BCA Students">

	<meta name="keywords" content="Deen Dayal Upadhyaya Gorakhpur University, BCA, DDUGU BCA - MCQs, Add MCQs, Edit MCQs,
									Delete MCQs">
			
    <meta name="author" content="Atul Singh">
    
    
    <link rel="stylesheet" type="text/css" href="../css/crud_mcqs_style.css">
    <script src = "../js/click.js"> </script>
    <script src = "../js/add_mcqs.js"> </script>
    <script src = "../js/edit_mcqs.js"> </script>
    
    
    <title>DDUGU BCA - Create, Edit and Delete MCQ Quiz</title>

</head>

<body>

<%

	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	
	response.setHeader("Pragma", "no-cache");
	
	response.setHeader("Expires", "0");

	if(session.getAttribute("name")==null)
	{
		response.sendRedirect("error_404.jsp");
	}
	
	String utype = (String) session.getAttribute("utype");
	
	if(utype!=null)
	{
		
		if(utype.equals("Student"))
		{
			response.sendRedirect("error_404.jsp");
		}
		
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
      <a href="../jsp/crud_mcqs.jsp" class = "active" ><i class="fa fa-question-circle"></i> MCQs</a>
      <a href="../Logout"><i class="fa fa-power-off"></i> Logout</a>

    
      <a href="javascript:void(0);" class="icon" onclick="myFunction()">
        <i class="fa fa-bars"></i>
      </a>
    </div>
  </div>


<div class = "top">
	  <div class="mcq">
	  	<h2><i class="fa fa-question-circle"></i> MCQs</h2>
	  	 </div>
		<div class = "mcqs">
	
	<form name = "EditDelete">
	<table>
	<tr>
	<td><b>S.no.</b></td>
	<td><b>Subject</b></td>
	<td><b>Question</b></td>
	<td><b>Option A</b></td>
	<td><b>Option B</b></td>
	<td><b>Option C</b></td>
	<td><b>Option D</b></td>
	<td><b>Answer</b></td>
	
	</tr>
	<%
	try 
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con = DriverManager.getConnection("jdbc:mysql://mydbinstance.cjuzyx0kh94e.ap-south-1.rds.amazonaws.com:3306/ddugu_bca", "root", "iamatul002");
	
		Statement st= con.createStatement();
		ResultSet rs=st.executeQuery("select * from qna order by subcode asc;");
		int i=0;
		while(rs.next()){ i++;
			%>
			<tr>
			
			<td>
				<input type="radio" name="radios" id="radio" value = "<%=rs.getString("qid") %>"required>
	        	<label for="radio"> </label>
				<%out.print(i); %>
			</td>
			<td><%=rs.getString("subname") %></td>
			<td><%=rs.getString("question") %></td>
			<td><%=rs.getString("opt_a") %></td>
			<td><%=rs.getString("opt_b") %></td>
			<td><%=rs.getString("opt_c") %></td>
			<td><%=rs.getString("opt_d") %></td>
			<td><%=rs.getString("answer") %></td>
			</tr>
			<%
			}
			con.close();
			
			} 
			
			catch (Exception e) 
			{
			System.out.println(e);
			}
	%>
	
	
	
	
	</table>
	<div class = "ed">
	<button type="submit" formaction="../jsp/crud_mcqs.jsp" class="btn1"> Edit </button>
	<button type="submit" formaction="../DeleteMcqs" class="btn2"> Delete </button>
	</div>
	</form>
	</div>
</div>


	<div class = "middle">		
		<div class = "add-mcqs">
			<h2>Add MCQs</h2>
			
			<div class="container">
        
	        <form name = "AddMcqs" action="../AddMcqs" onsubmit="return validate_add_mcqs()">
	        
	        <p>
			<%
				String added = (String)session.getAttribute("added");
				
				if(added == null)
				{
					out.println(" ");
				}
				
				else
				{
					out.println(added);
					session.setAttribute("added", null);
				}
				
	
			%>
			</p>
			
	          <label for="from">From</label>
	          <input type="text" id="from" name="from" placeholder="<%
		    				String name = (String)session.getAttribute("name");
		    				out.print(name);
		    			%>"disabled>
	
	          <label for="subject">Subject</label>
	          <select id="subject" name="subject">
	            <option value="BCA 101 : I.T. Tools and Applications">BCA 101 : I.T. Tools and Applications</option>
	            <option value="BCA 102: Principles of Mathematics">BCA 102: Principles of Mathematics</option>
	            <option value="BCA 103: Functional English">BCA 103: Functional English</option>
	            <option value="BCA 104: Introduction to Computer Programming in 'C'">BCA 104: Introduction to Computer Programming in 'C'</option>
	            <option value="BCA 201: Discrete Mathematics">BCA 201: Discrete Mathematics</option>  
	            <option value="BCA 202: Accounting and Financial Management">BCA 202: Accounting and Financial Management</option>
	            <option value="BCA 203: Digital Circuit and Logic Design">BCA 203: Digital Circuit and Logic Design</option>
	            <option value="BCA 204: Introduction to Object Oriented Programming and C++">BCA 204: Introduction to Object Oriented Programming and C++</option>
	            <option value="BCA 301: Operating System">BCA 301: Operating System</option>
	            <option value="BCA 302: Computer Oriented Mathematics">BCA 302: Computer Oriented Mathematics</option>
	            <option value="BCA 303: Data Structure">BCA 303: Data Structure</option>
	            <option value="BCA 304: Computer Organization and Architecture">BCA 304: Computer Organization and Architecture</option>
	            <option value="BCA 401: Introduction to DBMS">BCA 401: Introduction to DBMS</option>
	            <option value="BCA 402: Operation Research">BCA 402: Operation Research</option>
	            <option value="BCA 403: Computer Graphics">BCA 403: Computer Graphics</option>
	            <option value="BCA 404: Software Engineering">BCA 404: Software Engineering</option>
	            <option value="BCA 501: Internet and Java Programming">BCA 501: Internet and Java Programming</option>
	            <option value="BCA 502: Oracle and PlSql">BCA 502: Oracle and PlSql</option>
	            <option value="BCA 503: Computer Networks">BCA 503: Computer Networks</option>
	            <option value="BCA 504: Software Project Management">BCA 504: Software Project Management</option>
	            <option value="BCA 601: Advance Network and Security">BCA 601: Advance Network and Security</option>
	            <option value="BCA 602: Web Development tools and Techniques">BCA 602: Web Development tools and Techniques</option>
	          </select>
	
	
			  <label for="question">Question</label>
	          <textarea id="question" name="question" placeholder="Question body..." style="height:100px"></textarea>
	          
	 		  <label for="options">Option A</label>
	          <input type="text" id="options" name="option_a" placeholder="Option A">
			
			  <label for="options">Option B</label>
	          <input type="text" id="options" name="option_b" placeholder="Option B">
	          
	          <label for="options">Option C</label>
	          <input type="text" id="options" name="option_c" placeholder="Option C">
	          
	          <label for="options">Option D</label>
	          <input type="text" id="options" name="option_d" placeholder="Option D">
	          
	          <label for="answer">Answer</label>
	          <input type="text" id="answer" name="answer" placeholder="Correct Answer">
	          
	  		  <button type="submit" class="btn"> Add Question </button>
	  		
	        </form>
	      </div>
		</div>	
		
		<div class= "edit">
			<h2>Edit MCQs</h2>
			
			<div class="container">
        	
    
          	<form name = "EditMcqs" action="../EditMcqs" onsubmit="return validate_edit_mcqs()">
			
		   	<p>
				<%
					String edited = (String)session.getAttribute("edited");
					
					if(edited == null)
					{
						out.println(" ");
					}
					
					else
					{
						out.println(edited);
						session.setAttribute("edited", null);
					}
					
		
				%>
			</p>
			
			
			<%

String qid = (String)request.getParameter("radios");

if(qid == null)
{
	out.println("Select a question from below table to edit");
}
else
{
	try 
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con = DriverManager.getConnection("jdbc:mysql://mydbinstance.cjuzyx0kh94e.ap-south-1.rds.amazonaws.com:3306/ddugu_bca", "root", "iamatul002");
		Statement st= con.createStatement();
		ResultSet rs=st.executeQuery("select * from qna where qid = '"+qid+"'");
		
		if(rs.next())
		{
			String question = rs.getString("question");
			String subject = rs.getString("subname");
			String opt_a = rs.getString("opt_a");
			String opt_b = rs.getString("opt_b");
			String opt_c = rs.getString("opt_c");
			String opt_d = rs.getString("opt_d");
			String answer = rs.getString("answer");
			
			session.setAttribute("qid", qid);
			%>
			
		  <label for="subject">Subject</label>
          <input type="text" id="subject" name="subject" value="<%out.print(subject);%>"disabled>          

		  <label for="question">Question</label>
          <input type="text" id="question" name="question" value="<%out.print(question);%>">          
          
 		  <label for="options">Option A</label>
          <input type="text" id="options" name="option_a" value="<%out.print(opt_a);%>">
		
		  <label for="options">Option B</label>
          <input type="text" id="options" name="option_b" value="<%out.print(opt_b);%>">
          
          <label for="options">Option C</label>
          <input type="text" id="options" name="option_c" value="<%out.print(opt_c);%>">
          
          <label for="options">Option D</label>
          <input type="text" id="options" name="option_d" value="<%out.print(opt_d);%>">
          
          <label for="answer">Answer</label>
          <input type="text" id="answer" name="answer" value="<%out.print(answer);%>">
		          
		          
		          <% 	
			con.close();
		}
		
		else
		{
			response.sendRedirect("error_404.jsp");
		}
	}

	catch(Exception e)
	{
		System.out.println(e);
		response.sendRedirect("error_404.jsp");
	}

	
}
%>
       
		
			  <br>
	  		  <button type="submit" class="btn"> Update Question </button>
	  		  
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