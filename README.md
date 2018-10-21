# NBA_Draft_Simulator
Simulation of an NBA Fantasy Draft. Program will ask how many participants will be in the draft and their names. The draft order will be determined snake style and participants will select players based on the numerical tag listed next to the player. Each particpant is allowed to draft 5 players. 

This application utilizes a MySQL database, and has only 100 players currently in the databse. Make sure to download mysql for the next steps.

# Setting up the application and environment
```bash
git clone https://github.com/arunach2/NBA_Draft_Simulator.git
cd NBA_Draft_Simulator
mysql -u <user> -p <password> <dbname> < /path/to/NBA_Draft_Simulator/DemonHacksDump/data_populate.sql
```

Set up your database name. and then run the mysql command once you open MySql command prompt on your terminal. This will autopopulate a table. This table will be local and be used by this code you run. 
