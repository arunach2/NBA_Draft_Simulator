package dbConnection;

import Player.NbaPlayer;
import java.sql.*;
import java.util.ArrayList;

public class GetPlayerList {
	public static ArrayList<NbaPlayer> createPlayerList() {
		ArrayList <NbaPlayer> listOfPlayers = new ArrayList<NbaPlayer>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Players?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false","root","");
			Statement stmt=con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from top_100_nba");
			// Instantiating a player ArrayList

			while (rs.next()) {
				String playerName = rs.getString(2);
				int age = rs.getInt(3);
				double assists = rs.getFloat(4);
				double rebounds = rs.getFloat(5);
				double steals = rs.getFloat(6);
				double blocks = rs.getFloat(7);
				double points = rs.getFloat(8);
				listOfPlayers.add(new NbaPlayer(playerName, points, rebounds, assists, steals, blocks, age));
			}
		}
		catch (Exception e) {
			System.out.println(e);
		}

		return listOfPlayers;
	}

	public static void main(String Args[]) {
        ArrayList <NbaPlayer> listOfPlayers = GetPlayerList.createPlayerList();
	    System.out.println(listOfPlayers.size());
    }
	
	
	
}
