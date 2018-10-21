package interactivePrompts;

import Player.NbaPlayer;
import dbConnection.GetPlayerList;
import dbConnection.printPlayerList;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Scanner;

public class Prompts {
	
	static int numPlayers;
	static ArrayList<String> playerNames = new ArrayList<String>();
	static HashMap<String, ArrayList<String>> playersDrafted = new HashMap<String, ArrayList<String>> ();
    static HashMap<Integer, String> playerOrder = new HashMap<Integer, String> ();
    public static Scanner reader = new Scanner(System.in);
	public static void introductionScreen() {
		System.out.println("Welcome to the NBA Draft!");
	}
	
	public static void promptUser() {
		System.out.println("How many users will there be? ");
		

		numPlayers = reader.nextInt();
		
		int i = 0;
		while(i < numPlayers) {
			System.out.println("Type in player name: ");
			String x = reader.next();
			playerNames.add(x);
			i++;
		}
		Collections.shuffle(playerNames);
	}

	public static void printDraftOrder() {
		int order = 1;
		
		System.out.println("This will be the draft order");
		for(String i: playerNames) {
		    playerOrder.put(order, i);
			System.out.println(order + ". " + i);
			order++;
			playersDrafted.put(i, new ArrayList<String>());
		}
	}

	public static void performDraft() {
	    int counter = 1;
        ArrayList<NbaPlayer> listOfPlayers = GetPlayerList.createPlayerList();
        int playersLeft = listOfPlayers.size() - numPlayers * 5;
        System.out.println(playersLeft);
        while (listOfPlayers.size() > playersLeft) {
            printPlayerList.listAll(listOfPlayers);
            System.out.println("Which player do you want to select?");
            int playerChosen = reader.nextInt();
            if (playerChosen < 0 || playerChosen >= listOfPlayers.size()) {
                System.out.println("Player number you punched in does not exist! Please type again!");
                playerChosen = reader.nextInt();
            }
            String userName = playerOrder.get(counter);
            String playerNameChosen = listOfPlayers.get(playerChosen).playerName;
            listOfPlayers.remove(playerChosen);
            playersDrafted.get(userName).add(playerNameChosen);
            counter++;
            if (counter > numPlayers) {
                counter = 1;
            }
        }

        reader.close();


    }
	public static void main(String Args[]) {
		
		Prompts.introductionScreen();
		Prompts.promptUser();
		//System.out.println(Prompts.numPlayers);
		//System.out.println(Prompts.playerNames);
		Prompts.printDraftOrder();
		Prompts.performDraft();
		System.out.println(playersDrafted.get("Karthik"));
		
	}
}
