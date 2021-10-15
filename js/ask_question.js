function validate()                                    
  { 
    
    var question = document.forms["AskQuestion"]["question"].value; 

  
    if(question == "")  
    {
      alert("Question must be filled out.");
      return false;
    }
    
    if(question.length > 2000)
    {
    	alert("Qubject must not contain more than 2000 characters!");
        return false;

    }
        else {
      return true; 
    } 
      
}
