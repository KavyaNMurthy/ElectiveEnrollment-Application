package com.mvc.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mvc.bean.RegisterBean;
import com.uvc.util.DBConnection;
public class RegisterDao {
	public String registerUser(RegisterBean registerBean)
	{
	String fullName = registerBean.getFullName();
	String email = registerBean.getEmail();
	String usn = registerBean.getusn();
	String department = registerBean.getDepartment();
	String section = registerBean.getSection();
	String semester = registerBean.getSemester();
	String elective = registerBean.getElective();
	String courseid = registerBean.getcourseid();
	Connection con = null;
	PreparedStatement preparedStatement = null;
	try
	{
		System.out.println("register class:" + department);
	con = DBConnection.createConnection();
	String query = "insert into electives(usn,fullName,department,semester,section,elective,courseid,email) values (?,?,?,?,?,?,?,?)"; //Insert user details into the table 'USERS'
	preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	preparedStatement.setString(1, usn);
	preparedStatement.setString(2, fullName);
	preparedStatement.setString(3, department);
	preparedStatement.setString(4, semester);
	preparedStatement.setString(5, section);
	preparedStatement.setString(6,elective);
	preparedStatement.setString(7, courseid);
	preparedStatement.setString(8, email);
	int i= preparedStatement.executeUpdate();
	if (i!=0)  //Just to ensure data has been inserted into the database
	return "SUCCESS"; 
	}
	catch(SQLException e)
	{
	e.printStackTrace();
	}
	return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
	}
}

