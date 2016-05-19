<!DOCTYPE html>
<html>
<head>
<title></title>
<link href="../css/screen.css" rel="stylesheet" type="text/css">
<link href="../css/login.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/jquery-1.11.3.js"></script>

<script	src="../js/jquery.nav.js" type="text/javascript" ></script>
<script type="text/javascript">

function slideSwitch() {
    var $active = $('#slideshow DIV.active');

    if ( $active.length == 0 ) $active = $('#slideshow DIV:last');

    // use this to pull the divs in the order they appear in the markup
    var $next =  $active.next().length ? $active.next()
        : $('#slideshow DIV:first');

    // uncomment below to pull the divs randomly
    // var $sibs  = $active.siblings();
    // var rndNum = Math.floor(Math.random() * $sibs.length );
    // var $next  = $( $sibs[ rndNum ] );


    $active.addClass('last-active');

    $next.css({opacity: 0.0})
        .addClass('active')
        .animate({opacity: 1.0}, 1000, function() {
            $active.removeClass('active last-active');
        });
}

$(function() {
    setInterval( "slideSwitch()", 5000 );
});

</script>
<script src="../js/slideshow.js" type="text/javascript"></script>
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
	<div class="section sTop" style="position:absolute;top:0x;">
	
	</div>

	<div class="subMenu" >
	 	<div class="inner">
	 		<a href="#sTop" class="subNavBtn">Home</a>
	 		<a href="#s1" class="subNavBtn">Introduction</a> 
			<a href="#s2" class="subNavBtn">Login</a>
			<a href="#s3" class="subNavBtn">Register</a>
		
			
		</div>
	</div>

	<div class="section s1" >
	
		<div class="inner ">
		  <div style="position: absolute;left:48%;top:70%">
			<img src="../backimage.jpg" alt="image"></div>
			<div style="position: absolute;top:30%">
			<h1>Welcome to<br><br> <div style="font-family:times new roman;font-size: 50px;color:red"><i>Test Marathon</i></div></h1>
			<br>
			<br>
					 <h4>Test Marathon is an online<br><br>
			  test portal which helps graduates,<br><br>
			   engineers, job seekers to practice<br><br>
			   tests online to get good results<br><br>
			    in various competitive examinations. 
			 </h4>
			 
			
			</div><br />
			<br />
 
 </h2>
 <br>
		</div>
	</div>

	<div class="section s2">
		<div class="inner">
			<h1>Please Sign in </h1>
			<p><a href="#s3" class="intLink">New User?? </a></p>
			<p><a href="#sTop" class="intLink">Return to Top </a></p>
			  <form method="post" id="LoginDetails" name="LoginDetails" action="test/hello1.html" class="login">
    <p>
      <label for="login">Email:</label>
      <input type="text" name="email" id="email" placeholder="name@example.com">
    </p>

    <p>
      <label for="password">Password:</label>
      <input type="password" name="password" id="password" placeholder="********">
    </p>

    <p class="login-submit">
      <button type="submit" class="login-button">Login</button>
    </p>

    <p class="forgot-password"><a href="#">Forgot your password?</a></p>
  </form>

		</div>
	</div>



	<div class="section s3">
		<div class="inner">
			<h1>Don't Have id? You Can Register Here!!!	</h1>
			
			<form name="LoginDetails" id="LoginDetails" action="test/hello.html" method="post">
    
    <div id="formwrap">
    <div id="form">
	
	<table width="100%" height="100%">
	<tr>
	<td>
    <div class="row">
    	<div class="label">NAME</div>
        <div class="input">
        <input type="text"  name="name" id="name" value="" class="detail" required/>  
	
        </div>
 	</div>
	</td>
	</tr>
<tr><td><br></td></tr>
	<tr>
	<td>
	<div class="row">
    	<div class="label">EMAIL ID</div>
        <div class="input"> 
        <input type="text"  name="email" id="email" value=""  class="detail" required/> <span class="error"></span><span class="error" id="errormail"></span><br/><br/>
        </div>
 	</div>
	</td></tr>
	<tr>
<td>
<div class="row">
    	<div class="label">PASSWORD</div>
        <div class="input">
            <input type="password"  name="password" id="password" value=""  class="detail" required/> <span class="error"></span><span class="error" id="errorpass"></span><br/><br/>
        </div>
 	</div>
	</td>
	</tr>
	<tr>
	<td>
	<div class="row">
    	<div class="label"> CONFIRM PASSWORD</div>
        <div class="input">
            <input type="password" name="epass" id="epass" value=""  class="detail" required /> <span class="error"></span><span class="error" id="errorepass"></span><br/><br/>
        </div>
 	</div>
	
	</td>
	</tr>
	
     <tr>
	 <td>
	 
    <div class="submitbutton">
    <input type="submit" name="submit" value="SUBMIT" id="submitbutton"  style="width:100px;background-color:#2C3E50;color:white;border-radius:5px;border:2px #2C3E50;height:40px;"/>
    </div>
    </td>
	</tr>
     </table>
    </form>
    
	<script src="js/signupval.js" ></script>

		</div>
	</div>
</div>
</div>
	<div class="section s4" >
		<div class="inner">
			<h1>Who We Are?</h1>
			<p>Test Mararthon is the official platform to enhance your aptitude and technical skills</p>
		</div>
	</div>

	

	

</div>
</body>
</html>