<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*" session="true"%>


<%! 
     Connection con = null;
     //authenticate user
     private boolean isUserValid(String userName, String password) {
         String sql = "select * from users where usrname=? and passwd=?";
         try {
             PreparedStatement ps = con.prepareStatement(sql);
             ps.setString(1, userName);
             ps.setString(2, password);
             ResultSet rs = ps.executeQuery();
             System.out.println( "Statement Executed...");
             if(rs.next()) {
                 return true;
             }
         }catch(Exception ex) {
             ex.printStackTrace();
         }
         return false;
     }
%>     
   

<%
   
   //read username and password
   String userName = request.getParameter("userName");
   String password = request.getParameter("password");
   
   if (userName==null || userName.trim().length()==0) {
       System.out.println("username is required");
       request.setAttribute("userName", "* User Name is required");
   }
    
   if (password==null || password.trim().length()==0) {
       System.out.println("password is required");
       request.setAttribute("password", "* Password is required");
   }
   
   if (userName!=null && userName.trim().length()>0 && password!=null && password.trim().length()>0) {
   
   	String driverClass = application.getInitParameter("dbDriver");
    String url = application.getInitParameter("dbUrl");
    String dbUserName = application.getInitParameter("dbUser");
    String dbPassword = application.getInitParameter("dbPwd");
    
    try {
    	Class.forName(driverClass);
        }catch(Exception ex) {
    	    ex.printStackTrace();
        }
   
    con = DriverManager.getConnection(url, dbUserName, dbPassword);
    System.out.println("Connection Established..");

    //keeping it in application scope, so that it will available for other jsp pages
    application.setAttribute("connection",con);
	    
	
    boolean authFlag = isUserValid(userName, password);
   
    System.out.println("User name :" + userName + "\nPassword :" + password + "\nauth Flag : " + authFlag);
    if (authFlag) {
       session.setAttribute("user", userName);
       response.sendRedirect("courses.jsp");
   } else {
       response.sendRedirect("error.jsp");
   }
   
   }
   else{
	   application.getRequestDispatcher("/login.jsp").forward(request,response);
   }
   
%>   
   
   
   