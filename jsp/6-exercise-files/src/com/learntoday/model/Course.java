package com.learntoday.model;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;


public class Course implements Serializable{
    private static final long serialVersionUID = 1L;
	private String courseName;
    private String facultyName;
    private String description;
    private String imageUrl;
    private int fees;
    private int ratings;

    public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getFacultyName() {
		return facultyName;
	}
	public void setFacultyName(String facultyName) {
		this.facultyName = facultyName;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getFees() {
		return fees;
	}
	public void setFees(int fees) {
		this.fees = fees;
	}
	
	public String getImageUrl(){
		return imageUrl;
	}
	
	public void setImageUrl(String imageUrl){
		this.imageUrl = imageUrl;
	}
	
	public int getRatings(){
		return ratings;
	}
	
	public void setRatings(int ratings) {
		this.ratings = ratings;
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List getCourses() throws SQLException, ClassNotFoundException{
		ArrayList courses;
		courses = new ArrayList();
	                String qry;
	                Class.forName("com.mysql.jdbc.Driver");
	                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","pwd123");
	                Statement stmt = con.createStatement();                
	                qry="Select * from course";
	                ResultSet rs=stmt.executeQuery(qry);
	                while(rs.next())
	                {
	                   Course course = new Course();
	                   course.setCourseName(rs.getString(2));
	                   course.setFacultyName(rs.getString(3));
	                   course.setImageUrl(rs.getString(4));
	                   course.setFees(rs.getInt(5));
	                   course.setDescription(rs.getString(6));
	                   courses.add(course);
	                }
	                return courses;
	}
	
	
}