function validate()                                    
  { 
    
    var comment = document.forms["Comment"]["comment"].value; 

  
    if(comment == "")  
    {
      alert("Comment must be filled out.");
      return false;
    }
    
    if(comment.length > 4000)
    {
    	alert("Comment must not contain more than 4000 characters!");
        return false;

    }
        else {
      return true; 
    } 
      
}
