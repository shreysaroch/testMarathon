// handle the form submit event
function prepareEventHandlers() 
{
	document.getElementById("incomeForm").onsubmit = function() 
	{
		var flag=true;
		var cp=document.getElementById("cpassword").value;
		var np=document.getElementById("npassword").value;
		var cop=document.getElementById("copassword").value;
	
		
		
		
		if(cp=="")
		{
			document.getElementById("errorcpass").innerHTML = "Current password is required!!!";
			flag=false;
		}
		
			else
			document.getElementById("errorcpass").innerHTML ="";
			
		
		
		if(np=="")
		{
			document.getElementById("errornpass").innerHTML = "New Password is required!!!";
			flag=false;
		}
		else
		if(cp == np)
		{
			alert('Current and new passwords are same');
			return false;
		}
			else
			if(cop=="")
		{
			document.getElementById("errorcopass").innerHTML = "Confirm password!!!";
			flag=false;
		}
		
		else
		if(cop != np)
		{
			alert('passwords did not match.. try again!!');
			return false;
		}
		
			else
			document.getElementById("errorcopass").innerHTML ="";
		
		if(flag)
			return true;
		else
			return false;
		
		
	};
}

// when the document loads
window.onload =  function() {
	prepareEventHandlers();
};

// JavaScript Document