<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<title></title>

<style>

</style>
<link href="../css/screen.css" rel="stylesheet" type="text/css">
<link href="../css/login.css" rel="stylesheet" type="text/css">
<script type="../text/javascript" src="js/jquery.min.js"></script>

<script	src="js/jquery.nav.js" type="text/javascript" ></script>

<script type="text/javascript">
	

$(document).ready( function() {
    $('.subMenu').smint({
    	'scrollSpeed' : 1000
    });
});


</script>


</head>
<body>
<div class="wrap ">

	<div class="subMenu" >
	 	<div class="inner">
		<a href="#s1" class="subNavBtn">Password</a>
	 		
			<a href="hello1" class="subNavBtn">Home</a>
			
			<a href="logout" class="subNavBtn">Logout</a>
	
	</div>
	</div>
	
	<div class="section s1">
		<div class="inner">
					
<form name="incomeForm" id="incomeForm" method="post" action="edit"> 

<div id="formwrap">
    <div id="form">
	<br/>
	<br/>
	<table width="100%" height="100%">
	<br/>

<tr>
<td>
<div class="row">
    	<div class="label">CURRENT PASSWORD</div>
        <div class="input">
            <input type="password" name="cpassword" id="cpassword" placeholder="****"  class="detail" /> <span class="error"></span><span class="error" id="errorcpass"></span><br/><br/>
        </div>
 	</div>
	</td>
	</tr>
	
<tr>
<td>
<div class="row">
    	<div class="label">NEW PASSWORD</div>
        <div class="input">
            <input type="password" name="npassword" id="npassword" placeholder="****"  class="detail" /> <span class="error"></span><span class="error" id="errornpass"></span><br/><br/>
        </div>
 	</div>
	</td>
	</tr>
	
<tr>
<td>
<div class="row">
    	<div class="label">CONFIRM PASSWORD</div>
        <div class="input">
            <input type="password" name="copassword" id="copassword" placeholder="****"  class="detail" /> <span class="error"></span><span class="error" id="errorcopass"></span><br/><br/>
        </div>
 	</div>
	</td>
	</tr>
	<TR>
	<TD>
	
<div class="submitbutton">
    <input type="submit" name="submit" value="CHANGE" id="submitbutton"  style="width:100px;background-color:black;color:white;border-radius:5px;border:2px solid black;height:40px;"/>
    </div>
<br/>
<br/>
</td>
</tr>
<br/>
<br/>
</table>
</div>
</div>
</form>
	
<script src="js/password.js" ></script>
		</div>
	</div>
</div>

</body>
</html>