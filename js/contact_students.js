function validate_notice()                                    
  { 
    
    var subject = document.forms["ContactStudents"]["subject"].value; 
    var notice = document.forms["ContactStudents"]["notice"].value; 

  
    if(subject == "")  
    {
      alert("Subject must be filled out.");
      return false;
    }
    
    if(subject.length > 200)
    {
    	alert("Subject must not contain more than 200 characters!");
        return false;

    }
    
    if(notice == "")
    {
    	alert("Notice can't be empty!");
        return false;

    }
    if(notice.length > 2000)
    {
    	alert("Notice must not contain more than 2000 character!");
        return false;

    }
    else {
      return true; 
    } 
      
}


function validate_message()                                    
  { 
    
    var subject = document.forms["ContactDevelopers"]["subject"].value; 
    var notice = document.forms["ContactDevelopers"]["message"].value; 

  
    if(subject == "")  
    {
      alert("Subject must be filled out.");
      return false;
    }
    
    if(subject.length > 200)
    {
    	alert("Subject must not contain more than 200 characters!");
        return false;

    }
    
    if(message == "")
    {
    	alert("message can't be empty!");
        return false;

    }
    if(message.length > 2000)
    {
    	alert("message must not contain more than 2000 character!");
        return false;

    }
    else {
      return true; 
    } 
      
}