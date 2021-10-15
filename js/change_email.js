function validate()                                    
  { 
    var old_email = document.forms["change_email"]["old_email"].value;
    var new_email = document.forms["change_email"]["new_email"].value;
    var password = document.forms["change_email"]["password"].value;
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    
    if(old_email == new_email)
    {
    	alert("Enter a new email");
    	return false;
    }

    if((!new_email.match(mailformat)))
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
    else {
    	
    	return true;
      
    } 
     
    
}

