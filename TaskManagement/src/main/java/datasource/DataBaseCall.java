package datasource;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DataBaseCall {

	Connection con;
	
	public DataBaseCall(){
		org.postgresql.Driver driver= new org.postgresql.Driver();
		try {
			DriverManager.registerDriver(driver);
			con= DriverManager.getConnection("jdbc:postgresql://localhost:5432/TaskManagement", "postgres", "sumanth");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public boolean validateUser(String userName, String password) throws SQLException{
		
		String sql="select count(1) from user_table where username='"+userName+"'AND password='"+password+"'";
		
		PreparedStatement ps= con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while (rs.next()) {
			if(rs.getInt(1)== 1)
				return true;
		}
		return false;
	}
		
	
}
