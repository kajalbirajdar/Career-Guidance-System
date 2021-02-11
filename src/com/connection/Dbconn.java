package com.connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;


public class Dbconn {
	public static ArrayList ResList=new ArrayList();
	 public static ArrayList<String> filetitle = new ArrayList<String>();
	 public static ArrayList<String> offline2list = new ArrayList<String>();
	
	   public Dbconn() throws SQLException {
        super();
       }

public static Connection conn()throws SQLException,ClassNotFoundException{
	Connection con;
	
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost/careeierguidance", "root", "admin");
	return (con);
}
}
