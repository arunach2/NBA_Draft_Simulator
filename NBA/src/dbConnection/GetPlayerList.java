package dbConnection;

import java.sql.*;  

public class GetPlayerList {
	public static void main(String Args[]) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/players?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
			System.out.println("Went through!");
			//here sonoo is database name, root is username and password  
			Statement stmt=con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from player_nfo");
			rs.next();
			System.out.println(rs.getString(1));
			rs.next();
			System.out.println(rs.getString(1));
			
		}
		catch (Exception e) {
			System.out.println(e);
		}
	}
	
	
	
}
