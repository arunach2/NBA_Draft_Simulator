package tests;
import Player.NbaPlayer;
import dbConnection.GetPlayerList;
import org.junit.*;
import org.junit.jupiter.api.*;
import java.util.ArrayList;

import static org.junit.jupiter.api.Assertions.*;

public class GetPlayerListTest {

    @BeforeAll
    public static void doesCatchException() {
        try {
            ArrayList<NbaPlayer> listOfPlayers = GetPlayerList.createPlayerList();
            assertTrue(true);
        }
        catch (Exception e) {
            fail();
        }

    }
    @Test
    public void nullList() {
        ArrayList<NbaPlayer> listOfPlayers = GetPlayerList.createPlayerList();
        assertNotNull(listOfPlayers);
    }

    @Test
    public void populateListTo100 () {
        ArrayList<NbaPlayer> listOfPlayers = GetPlayerList.createPlayerList();
        assertEquals(listOfPlayers.size(), 100);
    }

}


