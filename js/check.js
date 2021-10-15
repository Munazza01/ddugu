function check(that) {
 
	if ((that.value == "Teacher") && (that.value != "Student")) {
	    	
			alert("You chose to Register as a Teacher!");
	    	
			document.getElementById("s_name").value  = "Student's name";
	        document.getElementById("teacher_name").style.display = "flex";
	        document.getElementById("teacher_professor").style.display = "flex";
	        document.getElementById("code").style.display = "flex";
	        
	        document.getElementById("s_name").value  = "Student's name";
	        document.getElementById("student_name").style.display = "none";
	        document.getElementById("student_semester").style.display = "none";
	    } 
	

	else if ((that.value == "Student") && (that.vale != "Teacher")) {
	    	
	    	alert("You chose to Register as a Student!");
	    	
	        document.getElementById("student_name").style.display = "flex";
	        document.getElementById("student_semester").style.display = "flex";
	       
	        document.getElementById("t_name").value  = "Teacher's name";
	        document.getElementById("teacher_name").style.display = "none";
	        document.getElementById("teacher_professor").style.display = "none";
	        document.getElementById("code").style.display = "none";
	    } 
	
	else if(that.value == "null") {
		
		alert("Select a user type to register!");
		
	    document.getElementById("student_name").style.display = "none";
	    document.getElementById("student_semester").style.display = "none";
	    
        document.getElementById("teacher_name").style.display = "none";
        document.getElementById("teacher_professor").style.display = "none";
        
        document.getElementById("t_name").value  = "";
        document.getElementById("s_name").value  = "";

	}
}