package interactivePrompts;

import java.util.ArrayList;
import java.util.Scanner;

public class Prompts {
	
	static int numPlayers;
	static ArrayList<String> playerNames = new ArrayList<String>();
	
	public static void introductionScreen() {
		System.out.println("Welcome to the NBA Draft!");
	}
	
	public static void promptUser() {
		System.out.println("How many users will there be? ");
		
		Scanner reader = new Scanner(System.in);
		numPlayers = reader.nextInt();
		
		int i = 0;
		while(i < numPlayers) {
			System.out.println("Type in player name: ");
			String x = reader.next();
			playerNames.add(x);
			i++;
		}
		Collections.shuffle(playerNames);
		reader.close();
	}
	public static void printDraftOrder() {
		
		int order = 1;
		
		System.out.println("This will be the draft order");
		for(String i: playerNames) {
			System.out.println(order + ". " + i);
			order++;
		}
		
	}
	
	public static void main(String Args[]) {
		
		Prompts.introductionScreen();
		Prompts.promptUser();
		//System.out.println(Prompts.numPlayers);
		//System.out.println(Prompts.playerNames);
		Prompts.printDraftOrder();
		
	}
}
