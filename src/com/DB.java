package com;
import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.Statement;


public class DB {
	
	final static String DB_URL="jdbc:mysql://localhost:3306/HealthCare";
	final static String USER = "root";
	final static String PASS = "Devdath@2016";
	
	public static Connection con() {
		
		Connection con;
		try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(DB_URL, USER, PASS);
				return con;
		}
		catch(Exception e){
			System.out.println(e);
			return null;
		}
	}
	public static Statement st(){
		Statement stmt;
		try
		{
			stmt=DB.con().createStatement();
			return null;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return null;
		}
	}

}
/*public class DB {
	public static void main(String [] args) {
		try
		{
			Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/HealthCare","root","Devdath@2016");
			//System.out.println("connection success");
			String query ="SELEC * FROM login";
			Statement stmt =conn.createStatement();
		}
		catch (Exception e) {
			System.err.println(e);
		}
	}
}*/

