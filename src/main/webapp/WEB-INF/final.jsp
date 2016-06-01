<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.io.*,java.util.*,java.sql.*"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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
</head>
<body>

<center>
<div class="wrap ">
<div class="section s1">
		<div class="inner ">
			<h1>Test Marathon</h1>
			<br />
			<br />
<p style="color:black;font-size:30px;">
Dear <c:out value="${sessionScope.name}" />
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/testmarathon" user="root" password=""/>

<sql:query dataSource="${db}" var="result">
 select score from login_details where email='${sessionScope.email}';
</sql:query>


Your score is <c:forEach var="row" items="${result.rows}">
	<c:out value="${row.score}"/> </p>

</c:forEach>
<form action="goback" method="post">
<input type="submit" name="submit" value="Take Another Test" id="submitbutton"  style="width:200px;background-color:#2C3E50;color:white;border-radius:5px;border:2px #2C3E50;height:40px;"/>
	<br>
</form>
</div>
	</div>
	</div>
</center>
</body>
<% session.invalidate(); %>
</html>