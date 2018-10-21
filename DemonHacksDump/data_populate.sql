
 SET NAMES utf8 ;

--

DROP TABLE IF EXISTS top 100 nba;
/*!40101 SET @saved_cs_client     = @@character_set_client */
SET character_set_client = utf8mb4 ;
CREATE TABLE top_100_nba (
  PK INT NOT NULL,
  PLAYER_NAME VARCHAR(100) NOT NULL,
  AGE FLOAT(3,1) NOT NULL,
  APG INT NOT NULL,
  RPG FLOAT(3,1) NOT NULL,
  SPG FLOAT(3,1) NOT NULL,
  BPG FLOAT(3,1) NOT NULL,
  PPG FLOAT(3,1) NOT NULL,
  PRIMARY KEY (PK)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */

--
-- Dumping data for table `top 100 nba`
--

LOCK TABLES `top 100 nba` WRITE;
/*!40000 ALTER TABLE `top 100 nba` DISABLE KEYS */;
INSERT INTO top_100_nba VALUES (1,'James Harden',28,5.4,8.8,1.8,0.7,30.4),(2,'LeBron James',33,8.6,9.1,1.4,0.9,27.5),(3,'Karl-Anthony Towns',22,12.3,2.4,0.8,1.4,21.3),(4,'Anthony Davis',24,11.1,2.3,1.5,2.6,28.1),(5,'Damian Lillard',27,4.5,6.6,1.1,0.4,26.9),(6,'Giannis Antetokounmpo',23,10,4.8,1.5,1.4,26.9),(7,'LaMarcus Aldridge',32,8.5,2,0.6,1.2,23.1),(8,'Nikola Jokic',22,10.7,6.1,1.2,0.8,18.5),(9,'Kevin Durant',29,6.8,5.4,0.7,1.8,26.4),(10,'Andre Drummond',24,16,3,1.5,1.6,15),(11,'Clint Capela',23,10.8,0.9,0.8,1.9,13.9),(12,'Kyle Lowry',31,5.6,6.9,1.1,0.2,16.2),(13,'Chris Paul',32,5.4,7.9,1.7,0.2,18.6),(14,'Russell Westbrook',29,10.1,10.3,1.8,0.3,25.4),(15,'Steven Adams',24,9,1.2,1.2,1,13.9),(16,'DeMar DeRozan',28,3.9,5.2,1.1,0.3,23),(17,'DeAndre Jordan',29,15.2,1.5,0.5,0.9,12),(18,'Ben Simmons',21,8.1,8.2,1.7,0.9,15.8),(19,'Stephen Curry',29,5.1,6.1,1.6,0.2,26.4),(20,'Jimmy Butler',28,5.3,4.9,2,0.4,22.2),(21,'Paul George',27,5.7,3.3,2,0.5,21.9),(22,'Kyrie Irving',25,3.8,5.1,1.1,0.3,24.4),(23,'Kemba Walker',27,3.1,5.6,1.1,0.3,22.1),(24,'Victor Oladipo',25,5.2,4.3,2.4,0.8,23.1),(25,'Rudy Gobert',25,10.7,1.4,0.8,2.3,13.5),(26,'Otto Porter',24,6.4,2,1.5,0.5,14.7),(27,'Derrick Favors',26,7.2,1.3,0.7,1.1,12.3),(28,'Al Horford',31,7.4,4.7,0.6,1.1,12.9),(29,'Darren Collison',30,2.6,5.3,1.3,0.2,12.4),(30,'Joe Ingles',30,4.2,4.8,1.1,0.2,11.5),(31,'Enes Kanter',25,11,1.5,0.5,0.5,14.1),(32,'Jonas Valanciunas',25,8.6,1.1,0.4,0.9,12.7),(33,'Taj Gibson',32,7.1,1.2,0.8,0.7,12.2),(34,'Jrue Holiday',27,4.5,6,1.5,0.8,19),(35,'Jayson Tatum',19,5,1.6,1,0.7,13.9),(36,'Bradley Beal',24,4.4,4.5,1.2,0.4,22.6),(37,'Khris Middleton',26,5.2,4,1.5,0.3,20.1),(38,'Dwight Howard',32,12.5,1.3,0.6,1.6,16.6),(39,'Tobias Harris',25,5.5,2.4,0.9,0.4,18.6),(40,'Lou Williams',31,2.5,5.3,1.1,0.2,22.6),(41,'CJ McCollum',26,4,3.4,1,0.4,21.4),(42,'Dwight Powell',26,5.6,1.2,0.8,0.4,8.5),(43,'Julius Randle',23,8,2.6,0.5,0.5,16.1),(44,'J.J. Redick',33,2.5,3,0.5,0.1,17.1),(45,'Dario Saric',23,6.7,2.6,0.7,0.3,14.6),(46,'Kevin Love',29,9.3,1.7,0.7,0.4,17.6),(47,'Kyle Anderson',24,5.4,2.7,1.6,0.8,7.9),(48,'Will Barton',27,5,4.1,1,0.6,15.7),(49,'Joel Embiid',23,11,3.2,0.6,1.8,22.9),(50,'Robert Covington',27,5.4,2,1.7,0.9,12.6),(51,'Draymond Green',27,7.6,7.3,1.4,1.3,11),(52,'Pau Gasol',37,8,3.1,0.3,1,10.1),(53,'Larry Nance',25,6.8,1.2,1.3,0.6,8.7),(54,'Spencer Dinwiddie',24,3.2,6.6,0.9,0.3,12.6),(55,'Eric Bledsoe',28,3.8,5,2,0.6,17.7),(56,'Jakob Poeltl',22,4.8,0.7,0.5,1.2,6.9),(57,'Terry Rozier',23,4.7,2.9,1,0.2,11.3),(58,'Montrezl Harrell',24,4,1,0.5,0.7,11),(59,'Gary Harris',23,2.6,2.9,1.8,0.2,17.5),(60,'Jamal Murray',20,3.7,3.4,1,0.3,16.7),(61,'Kelly Olynyk',26,5.7,2.7,0.8,0.5,11.5),(62,'Thaddeus Young',29,6.3,1.9,1.7,0.4,11.8),(63,'Bojan Bogdanovic',28,3.4,1.5,0.7,0.1,14.3),(64,'John Collins',20,7.3,1.3,0.6,1.1,10.5),(65,'Jerami Grant',23,3.9,0.7,0.4,1,8.4),(66,'Josh Richardson',24,3.5,2.9,1.5,0.9,12.9),(67,'Trevor Ariza',32,4.4,1.6,1.5,0.2,11.7),(68,'Kentavious Caldwell-Pope',24,5.2,2.2,1.4,0.2,13.4),(69,'Goran Dragic',31,4.1,4.8,0.8,0.2,17.3),(70,'Ricky Rubio',27,4.6,5.3,1.6,0.1,13.1),(71,'Anthony Tolliver',32,3.1,1.1,0.4,0.3,8.9),(72,'Hassan Whiteside',28,11.4,1,0.7,1.7,14),(73,'Donovan Mitchell',21,3.7,3.7,1.5,0.3,20.5),(74,'Serge Ibaka',28,6.3,0.8,0.4,1.3,12.6),(75,'Ed Davis',28,7.4,0.5,0.4,0.7,5.3),(76,'Tomas Satoransky',26,3.2,3.9,0.7,0.2,7.2),(77,'Marvin Williams',31,4.7,1.2,0.7,0.5,9.5),(78,'Marcin Gortat',33,7.6,1.8,0.5,0.7,8.4),(79,'Blake Griffin',28,7.4,5.8,0.7,0.3,21.4),(80,'John Henson',27,6.8,1.5,0.6,1.4,8.8),(81,'James Johnson',30,4.9,3.8,1,0.7,10.8),(82,'Jeremy Lamb',25,4.1,2.3,0.8,0.4,12.9),(83,'Jeff Teague',29,3,7,1.5,0.3,14.2),(84,'Klay Thompson',27,3.8,2.5,0.8,0.5,20),(85,'Ryan Anderson',29,5,0.9,0.4,0.3,9.3),(86,'Dirk Nowitzki',39,5.7,1.6,0.6,0.6,12),(87,'Kyle O\'Quinn',27,6.1,2.1,0.5,1.3,7.1),(88,'DeMarcus Cousins',27,12.9,5.4,1.6,1.6,25.2),(89,'Eric Gordon',29,2.5,2.2,0.6,0.4,18),(90,'Jusuf Nurkic',23,9,1.8,0.8,1.4,14.3),(91,'Domantas Sabonis',21,7.7,2,0.5,0.4,11.6),(92,'Pascal Siakam',23,4.5,2,0.8,0.5,7.3),(93,'Myles Turner',21,6.4,1.3,0.6,1.8,12.7),(94,'Fred VanVleet',23,2.4,3.2,0.9,0.3,8.6),(95,'Jaylen Brown',21,4.9,1.6,1,0.4,14.5),(96,'Wayne Ellington',30,2.8,1,0.7,0.1,11.2),(97,'Alex Len',24,7.5,1.2,0.4,0.9,8.5),(98,'Delon Wright',25,2.9,2.9,1,0.5,8),(99,'E\'Twaun Moore',28,2.9,2.3,1,0.1,12.5),(100,'Ish Smith',29,2.7,4.4,0.8,0.2,10.9);
/*!40000 ALTER TABLE `top 100 nba` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-20 19:36:04
