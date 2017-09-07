<%@page import="com.learntoday.model.Course"%>
<%@ page language="java" session="true" import="java.sql.*, java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Learntoday - All Courses</title>
</head>
<body>
<div class="container">
<header>
<jsp:include page="header.jsp" flush="true" />
</header>

<article>
<jsp:useBean id="obj" class="com.learntoday.model.Course" scope="request"/>

<div class="row">
<%
List courses = obj.getCourses();
Course course;
for(int i=0;i<courses.size();i++){
  course = (Course) courses.get(i);
  if(i%3==0) {
	  out.println("</div>");
	  out.println("<div class='row'>");
  }
  out.println("<div class='col-md-4'>");
  out.println("<p><img src='" + course.getImageUrl() + "' width=200 height=200 class='img-thumbnail'/> </p>");
  out.println("<h3 class='text-primary'>" + course.getCourseName() + "</h3>");
  out.println("<p class='text-success'>Trainer: <strong>" + course.getFacultyName() + "</strong></p>");
  out.println("<p><a href='findCourse.jsp?courseName=" + course.getCourseName() + "' class='btn btn-default'>View Details</a></p>");
  out.println("</div>");
}
//}
%>
</div>
</article>

<footer>
<jsp:include page="footer.jsp" flush="true" />
</footer>
</div>
</body>
</html>