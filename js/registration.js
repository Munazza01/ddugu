function validate()                                    
  { 
    
    var utype = document.forms["registration"]["utype"].value; 

    var sname = document.forms["registration"]["s_name"].value; 
    var tname = document.forms["registration"]["t_name"].value; 
    var bday = document.forms["registration"]["bday"].value;
    var mobile = document.forms["registration"]["mobile"].value; 
    var email = document.forms["registration"]["email"].value;
    var password = document.forms["registration"]["password"].value;
    var password2 = document.forms["registration"]["password2"].value;
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    
    
    
    if(utype == "null")
    {
    	alert("Select a valid user type!")
    	return false;
    }
    
    if(sname.match(/[^A-Za-z]+$/))
    {
        alert("Please enter student's name properly!"); 
        return false; 
    } 

    if(sname == "") 
    {
      alert("Student's name must be filled out properly!");
      return false;
    }
    
    if(tname.match(/[^A-Za-z]+$/))
    {
        alert("Please enter teacher's name properly!"); 
        return false; 
    } 

    if(tname == "") 
    {
      alert("Teacher's name must be filled out properly!");
      return false;
    }
    if(bday == "")
    {
      alert("Enter your Date of Birth.");
      return false;
    }

    if(mobile.toString().length < 10 || mobile.toString().length > 10) 
    {
      alert("Enter your 10-digit Mobile Number");
      return false;
    }
    
    if(mobile.match(/[^0-9]+$/))
    {
      alert("Enter Mobile Number properly.");
      return false;
    }

    if((!email.match(mailformat)))
    {
      alert("Enter Email properly");
      return false;
    }

    if(password == "")
    {
      alert("Enter your password");
      return false;
    }

    if(password.length >=20 || password.length < 6)
    {
      alert("Password must be between 6-20 characters!");
      return false;
    }
    if(password!=password2)  
    {
      alert("Password not matched!");
      return false;
    }

    else {
      return true; 
    } 

      
}