<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="nameBean" class="com.learntoday.model.Name" scope="session" >
<jsp:setProperty name="nameBean" property="*" />

<p>First Name : <jsp:getProperty name="nameBean" property="firstName" /> </p>
<p>Last Name : <jsp:getProperty name="nameBean" property="lastName" /> </p>
</jsp:useBean>

<a href="getBeanValue.jsp">Click here</a>
</body>
</html>