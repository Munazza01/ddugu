function validate_teacher_message()                                    
  { 
    
    var subject = document.forms["ContactTeachers"]["subject"].value; 
    var message = document.forms["ContactTeachers"]["message"].value; 

  
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
    	alert("Message can't be empty!");
        return false;

    }
    if(message.length > 2000)
    {
    	alert("Message must not contain more than 2000 character!");
        return false;

    }
    else {
      return true; 
    } 
      
}

function validate_message()                                    
  { 
    
    var subject = document.forms["ContactDevelopers"]["subject"].value; 
    var message = document.forms["ContactDevelopers"]["message"].value; 

  
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
    	alert("Message can't be empty!");
        return false;

    }
    if(message.length > 2000)
    {
    	alert("Message must not contain more than 2000 character!");
        return false;

    }
    else {
      return true; 
    } 
      
}