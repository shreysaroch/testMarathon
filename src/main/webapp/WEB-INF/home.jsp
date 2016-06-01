<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<link href="../css/screen.css" rel="stylesheet" type="text/css">
<link href="../css/login.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/jquery.min.js"></script>

<script	src="js/jquery.nav.js" type="text/javascript" ></script>
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
<script src="js/slideshow.js" type="text/javascript"></script>
<script type="text/javascript">
	

$(document).ready( function() {
    $('.subMenu').smint({
    	'scrollSpeed' : 1000
    });
});

</script>

</head>
<body>
<div class="wrap">
	
	<div class="subMenu" >
	 	<div class="inner">
	 		<a href="#s1" class="subNavBtn">Home</a>
	 		<a href="editprofile.jsp" class="subNavBtn">Edit Profile</a> 
			<a href="logout" class="subNavBtn">Logout</a>
					
		</div>
	</div>

	<div class="section s1">
		<div class="inner ">
			<h1>Test Marathon</h1>
			<br />
			<br />
			<p style="font-size:20px">
			<c:set var="email" value="${email}" scope="session"/>
<p style="color:black;font-size:30px;">Welcome <c:out value="${sessionScope.name}" /></p>
<p style="color:black;font-size:30px;">Rules</p>
<p style="color:black;font-size:20px;"><br>
1. The Test comprises of 10 Questions.<br>
2. Marks are assigned according to the level of the questions.<br>
3. There are 3 levels easy,medium,hard.<br>
4. Each Question has a time limit of 30 Seconds after which you will be redirected to the next question automatically.<br>
5. Unauthorized attempt will lead to cancellation of the test.<br>
6. Give the test sincerely, this test will decide your future. <br>

All the best!
</p>


<c:set var="index" value="0" scope="session"/>
	<% session.setAttribute("count_ques",0);%>
	<form action="question" method="post">
	<input type="submit" name="submit" value="Start Test" id="submitbutton"  style="width:100px;background-color:#2C3E50;color:white;border-radius:5px;border:2px #2C3E50;height:40px;"/>
	</form>
			</div>
	</div>
	</div>
	
</body>
</html>