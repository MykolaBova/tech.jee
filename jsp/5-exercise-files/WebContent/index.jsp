<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<header>
<%@ include file="header.jsp" %>
</header>

<article>
<div class="row">
<div class="jumbotron">
<h1 class="text-center">Enter to Learn and to Exit To Earn </h1>
<p class="text-center">Our expertise empower you to achieve your goals and achieve success <br/>
<a href="courses.jsp" class="btn btn-lg btn-success">View All Courses</a> </p>
</div>
</div>

<div class="row">
<p>New Users : <a href="register.jsp">Register Here</a>
</div>

<div class="row">
<p>Existing Users: <a href="login.jsp">Login Here</a>
</div>
</article>

<footer>
<%@ include file="footer.jsp" %>
</footer>
</div>
</body>
</html>