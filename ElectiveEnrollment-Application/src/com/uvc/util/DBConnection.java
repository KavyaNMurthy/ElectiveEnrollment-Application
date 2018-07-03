package com.uvc.util;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection createConnection()
	{
	Connection con = null;
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; //MySQL URL followed by the database name
	String username = "Kavya"; //MySQL username
	String password = "Kavya123"; //MySQL password
	try 
	{
	try 
	{
	Class.forName("oracle.jdbc.driver.OracleDriver"); //loading MySQL drivers 
	} 
	catch (ClassNotFoundException e)
	{
	e.printStackTrace();
	}
	con = DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database
	System.out.println("Printing connection object "+con);
	} 
	catch (Exception e) 
	{
	e.printStackTrace();
	}
	return con; 
	}


}
