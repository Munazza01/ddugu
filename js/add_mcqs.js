function validate_add_mcqs()                                    
  { 
    
    var subject = document.forms["AddMcqs"]["subject"].value; 
    var question = document.forms["AddMcqs"]["question"].value;
    var option_a = document.forms["AddMcqs"]["option_a"].value;
    var option_b = document.forms["AddMcqs"]["option_b"].value;
    var option_c = document.forms["AddMcqs"]["option_c"].value;
    var option_d = document.forms["AddMcqs"]["option_d"].value;
    var answer = document.forms["AddMcqs"]["answer"].value;
    
    

    if(subject == "") 
    {
      alert("Subject must be selected!");
      return false;
    }

    if(question == "")
    {
      alert("Question can't be empty!");
      return false;
    }
    
    if(question.toString().length > 300)
    {
    	alert("Question can't contain more than 300 character!");
    	return false;
    }
    
    if(option_a == "")
    {
      alert("Option A can't be empty!");
      return false;
    }
    
    if(option_a.toString().length > 200)
    {
    	alert("Option A can't contain more than 200 character!");
    	return false;
    }
    
    if(option_b == "")
    {
      alert("Option B can't be empty!");
      return false;
    }
    
    if(option_b.toString().length > 200)
    {
    	alert("Option B can't contain more than 200 character!");
    	return false;
    }
    
    if(option_c == "")
    {
      alert("Option C can't be empty!");
      return false;
    }
    
    if(option_c.toString().length > 200)
    {
    	alert("Option C can't contain more than 200 character!");
    	return false;
    }
    
    if(option_d == "")
    {
      alert("Option D can't be empty!");
      return false;
    }
    
    if(option_d.toString().length > 200)
    {
    	alert("Option D can't contain more than 200 character!");
    	return false;
    }
    
    if(answer == "")
    {
      alert("Answer can't be empty!");
      return false;
    }
    
    if(answer.toString().length > 200)
    {
    	alert("Answer can't contain more than 200 character!");
    	return false;
    }


    else {
      return true; 
    } 






      
}