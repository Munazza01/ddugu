function validate()                                    
  { 
    
    var email = document.forms["login"]["email"].value;
    var password = document.forms["login"]["password"].value;
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    
    

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

    else {
    	
    	return true;
      
    } 
     
    
}

