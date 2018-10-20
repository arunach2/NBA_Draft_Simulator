package Player;

public class NbaPlayer {
	// Here are the static variable
	private static String sport = "NBA";
	
	// Here are the instance variable
	String playerName, position;
	double point, rebound, assist, steal, block; 
	int age;
	
	public NbaPlayer(String playerName, 
				String position,
				double point, double rebound, double assist, double steal, double block,
				int age) {
		this.playerName = playerName;
		this.position = position;
		this.point = point;
		this.rebound = rebound;
		this.assist = assist;
		this.steal = steal;
		this.block = block;
		this.age = age;
	}
	
	public static void main(String Args[]) {
		NbaPlayer player = new NbaPlayer("Lebron", "SF", 25, 9, 9, 2, 1, 33);
		System.out.println(player.age);
		System.out.println(player.point);
	}
	
	
}
