<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LearnToday</title>
</head>
<body>
<div class="container">
<header>
<%@ include file="header.jsp" %>
</header>

<article>
<div class="row">
<div class="jumbotron">
<h1 class="text-center">Enter to Learn and Exit To Earn </h1>
<p class="text-center">Our expertise empower you to achieve your goals and achieve success </p>
<div class="row">
<div class="col-md-6 col-md-offset-4">
<form class="form-inline" action="findCourse.jsp" >
  <div class="form-group">
    <label class="control-label">Search Course </label>
    <input type="text" class="form-control" name="courseName" id="courseName" placeholder="Enter Course Title">
  </div>
  <input type="submit" class="btn btn-default" value="Search">
</form>
</div>
</div>
<br/>
<p class="text-center"><a href="Courses.jsp" class="btn btn-lg btn-success">View All Courses</a> </p>
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