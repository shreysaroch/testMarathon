<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page language="java" session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%  if(!session.isNew()) { %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>DisplayQuestion</title>
<style>
.s1 {
	background:#18BC9C;
	color:#fff;
	height:700px;
	
}
.wrap {
	width: 100%;
	max-width: 1600px;
	min-width: 960px;
	z-index: 10;
	position: relative;
	margin: 0 auto;
	padding: 0;

}

.inner {
	width: 960px;
	margin: 0 auto;
	position: relative;
	min-height: 50px;
	padding:30px 0;
	font-size: 18px;
	font-family: 'Open Sans', sans-serif;
	font-weight: 300;
}

.inner:after {
	  content: "";
	  display: table;
	  clear: both;
}



</style>
<script language="javascript">
	var tim;
	var min = '0';
	var sec = '30';

	function examTimer() {
		if (parseInt(sec) > 0) {
		
			document.getElementById("showtime").innerHTML = "Time Remaining :"
					+ min + " Minute ," + sec + " Seconds";
			sec = parseInt(sec) - 1;
			tim = setTimeout("examTimer()", 1000);
		} else {

			if (parseInt(min) == 0 && parseInt(sec) == 0) {
				document.getElementById("showtime").innerHTML = "Time Remaining :"
						+ min + " Minute ," + sec + " Seconds";
				document.questionForm.submit();

			}

			else if (parseInt(sec) <= 0) {
				document.getElementById("showtime").innerHTML = "Time Remaining :"
						+ min + " Minute ," + sec + " Seconds";
				min = parseInt(min) - 1;
				sec = 59;
				tim = setTimeout("examTimer()", 1000);
			}

		}
	}
</script>
</head>
<body onload="examTimer()">

<center>
<div class="wrap ">
<div class="section s1">
		<div class="inner ">
			<h1>Test Marathon</h1>
			<br />
			<br />
<div style="align:right;color:black" id="showtime" >aksdjfhakjsdfh</div>
	

<% int c=(Integer)session.getAttribute("count_ques");
if(c==10)
{
%>
<script>
alert("Successfully Completed");
window.location="quiz";
</script>
<% 	

}
else
	session.setAttribute("count_ques",(Integer)session.getAttribute("count_ques")+1);
%>
<c:set var="list" value="${list}" scope="session"/>
<c:set var="index" value="${sessionScope.index}+1" scope="session"/>



<c:set var="count" value="0+1" scope="page"/>
<div id="div1">
<h2>Welcome <c:out value="${sessionScope.name}" />
<c:forEach var="row" items="${sessionScope.list}"></h2>

    <c:if test="${count eq sessionScope.index}">
    <form action="question1" method="post" name="questionForm">
    <input type ="hidden" value="${row.qid}" name="qid">
    <input type="hidden" value="${sessionScope.email}" name="email">
    
	<c:out value="${row.question}"/><br/><br>
 	<input type="radio" name="answer" value="0" style="visibility:hidden;"checked="checked"/> 
	<input type="radio" name="answer" value="${row.option1 }">${row.option1}</input><br/><br>
	<input type="radio" name="answer" value="${row.option2 }">${row.option2}</input><br/><br>
	<input type="radio" name="answer" value="${row.option3 }">${row.option3}</input><br/><br>
	<input type="radio" name="answer" value="${row.option4 }">${row.option4}</input><br/><br>
	
	<input type="submit"  value="Next Question" id="submitbutton"  style="width:100px;background-color:#2C3E50;color:white;border-radius:5px;border:2px #2C3E50;height:40px;"/>
	<br>
	</form>
	<form action="quiz">
	<br>
	<input type="submit"  value="FinalSubmit" id="submitbutton"  style="width:100px;background-color:#2C3E50;color:white;border-radius:5px;border:2px #2C3E50;height:40px;"/>
	</form>
	</c:if>
	<c:set var="count" value="${count}+1" scope="page"/>
</c:forEach>
	</div>
	</div>
	</div>
</center>
</body>
<% }

else 
	response.sendRedirect("index.jsp");
%>

</html>