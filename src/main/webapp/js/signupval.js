// handle the form submit event
function prepareEventHandlers() 
{
	
	document.getElementById("LoginDetails").onsubmit = function() 
	{
		var flag=true;
		var name=document.getElementById("name").value;
		var email=document.getElementById("email").value;
		var pass=document.getElementById("password").value;
		var epass=document.getElementById("epass").value;
		
		var pat=/^[A-Za-z]+$/;
	
		 if(!name.match(pat))
			{
				alert("First name cant have numbers");
				flag=false;
			}
			else
			document.getElementById("errorname").innerHTML ="";
			
			
				var atpos=email.indexOf("@");
				var dotpos=email.lastIndexOf(".");
				if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length)	
		   		 {
					  alert("invalid e-mail address");
					  flag=false;
  				}
			
			
				document.getElementById("errormail").innerHTML = "";
			
			
		
		if(pass.length<6)
			{
			alert('Password must contain atleast 6 characters!!');
			return false;
			}
		if(epass != pass)
		{
			alert('passwords did not match.. try again!!');
			return false;
		}
		
			else
			document.getElementById("errorepass").innerHTML ="";
		
		if(flag)
			return true;
		else
			return false;
		
		
	};
}



// JavaScript Document