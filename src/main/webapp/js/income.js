// handle the form submit event
function prepareEventHandlers() 
{
	document.getElementById("incomeForm").onsubmit = function() 
	{
		var flag=true;
		
		var age=document.getElementById("AGE").value;
		var income=document.getElementById("INCOME").value;
		var EXEMPTION=document.getElementById("EXEMPTION").value;
		
		
		
		
		if(age=="")
		{
			document.getElementById("errorage").innerHTML = "Age is required!!!";
			flag=false;
		}
		else if(age<1 && age>100)
			{
				alert("Enter age between 1 and 100!!!");
				flag=false;
			}
			else
			document.getElementById("errorage").innerHTML ="";
			
			if(income=="")
			{
				document.getElementById("errorincome").innerHTML = "income is required!!!";
				flag=false;
			}
			else if(income<0)
			{
			document.getElementById("errorincome").innerHTML = "income should be positive!!!";
				flag=false;
				
  				}
			
			// reset and allow the form to submit
				document.getElementById("errorincome").innerHTML = "";
			}
			
			
		
		if(EXEMPTION=="")
		{
			document.getElementById("erroreamount").innerHTML = "Exemption amount is required.Else enter 0!";
			flag=false;
		}
		else if(EXEMPTION<0)
		{
			// reset and allow the form to submit
			document.getElementById("erroreamount").innerHTML = "Exemption should be positive or 0";
			flag=false;
		}
		else
		
		document.getElementById("erroreamount").innerHTML = "";
		
		
		if(flag)
			return true;
		else
			return false;
		
		
	};


// when the document loads
window.onload =  function() {
	prepareEventHandlers();
};

// JavaScript Document