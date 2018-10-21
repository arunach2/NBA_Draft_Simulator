package Player;

public class NbaPlayer {
	// Here are the static variable
	private static String sport = "NBA";
	
	// Here are the instance variable
	public String playerName;
	double point, rebound, assist, steal, block; 
	int age;
	public NbaPlayer() {}

	public NbaPlayer(String playerName,
				double point, double rebound, double assist, double steal, double block,
				int age) {
		this.playerName = playerName;
		// this.position = position;
		this.point = point;
		this.rebound = rebound;
		this.assist = assist;
		this.steal = steal;
		this.block = block;
		this.age = age;
	}

	public String toString() {
		String value = playerName + " " + point + " " + rebound + " " + assist + " " + steal + " " + block + " " + age;
		return value;
	}
	
	public static void main(String Args[]) {
		// NbaPlayer player = new NbaPlayer("Lebron", "SF", 25, 9, 9, 2, 1, 33);
		// NbaPlayer player2 = new NbaPlayer("Steph", 25, 9, 9, 2, 1, 30);
	}
	
	
}
