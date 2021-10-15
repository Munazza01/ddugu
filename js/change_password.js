function validate()                                    
  { 
    var password1 = document.forms["change_password"]["new_password1"].value;
    var password2 = document.forms["change_password"]["new_password2"].value;
    
    

    if(password1 == "")
    {
      alert("Enter your password");
      return false;
    }
    
    if(password2 == "")
    {
      alert("Enter your password again!");
      return false;
    }
    
    
    if(password1.length >=20 || password1.length < 6)
    {
      alert("Password must be between 6-20 characters!");
      return false;
    }
 
    if(password2.length >=20 || password2.length < 6)
    {
      alert("Password must be between 6-20 characters!");
      return false;
    }
    
    if(password1 != password2)
    {
    	alert("Passwords Not Matched!");
    	return false;
    }
    
    else {
    	
    	return true;
      
    } 
     
    
}

