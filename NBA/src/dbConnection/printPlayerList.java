package dbConnection;

import Player.NbaPlayer;

import java.util.ArrayList;

public class printPlayerList {

    public static void listAll(ArrayList<NbaPlayer> y) {
        int i = 0;
        for (NbaPlayer x: y) {
            System.out.println(Integer.toString(i) + " " + x.toString());
            i++;
        }

    }
    public static void main(String Args[]) {
        ArrayList <NbaPlayer> listOfPlayers = GetPlayerList.createPlayerList();
        printPlayerList.listAll(listOfPlayers);
    }
}
