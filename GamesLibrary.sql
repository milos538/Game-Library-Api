-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: games
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `game` (
  `game_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `release_date` datetime NOT NULL,
  `desc` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `soled_copies` int(20) unsigned NOT NULL,
  `author` varchar(45) NOT NULL,
  PRIMARY KEY (`game_id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `desc_UNIQUE` (`desc`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (2,'The Forest','2018-04-20 00:00:00','As the lone survivor of a passenger jet crash, you find yourself in a mysterious forest battling to stay alive against a society of cannibalistic mutants. Build, explore, survive in this terrifying first person survival horror simulator.','forest.jpg',1312,' Endnight Games Ltd'),(3,'Heave Ho','2019-08-29 00:00:00','Heave Ho tasks up to four players with a simple goal – don’t fall to your death! Players will use their own two hands and the outstretched grip of their friends to grapple across each level on their way to victory.','heaveho.jpg',31912,'le Cartel Studio'),(4,'Playerunknown\'s battlegrounds','2017-11-21 00:00:00','PLAYERUNKNOWN\'S BATTLEGROUNDS is a battle royale shooter that pits 100 players against each other in a struggle for survival. Gather supplies and outwit your opponents to become the last person standing.','pubg.jpg',111123854,'PUBG Corportaion'),(5,'Resident Evil 3','2020-04-03 00:00:00','Jill Valentine is one of the last remaining people in Raccoon City to witness the atrocities Umbrella performed. To stop her, Umbrella unleashes their ultimate secret weapon: Nemesis!','revil.jpg',1023458,'CAPCOM Co.'),(6,'Raft','2018-05-23 00:00:00','Raft throws you and your friends into an epic oceanic adventure! Alone or together, players battle to survive a perilous voyage across a vast sea! Gather debris, scavenge reefs and build your own floating home, but be wary of the man-eating sharks!','raft.jpg',8654321,'Redbeet Interactive'),(7,'Pro Cycling Manager 2020','2020-06-03 00:00:00','Become the manager of a cycling team and take them to the top! You will need to manage finances and recruitment, plan your training, implement your strategy and, new for this edition, look after your cyclists and their morale!','pro.jpg',11854,'Nacon'),(8,'DiRT Rally 2.0','2019-02-26 00:00:00','DiRT Rally 2.0 dares you to carve your way through a selection of iconic rally locations from across the globe, in the most powerful off-road vehicles ever made, knowing that the smallest mistake could end your stage.','dirt.jpg',354123,'Codemasters'),(9,'NBA 2K19','2018-09-10 00:00:00','NBA 2K celebrates 20 years of redefining what sports gaming can be. NBA 2K19 continues to push limits as it brings gaming one step closer to real-life basketball excitement and culture.','nba.jpg',120123789,'Visual Concepts'),(10,'WGT Golf','2020-08-13 00:00:00','Experience iconic golf courses like Pebble Beach, St Andrews and Wolf Creek in the most realistic free golf game, and connect with millions of players all over the world!','golf.png',58456,'Topgolf Media'),(11,'Football Manager 2020','2020-01-01 00:00:00','Run your football club, your way.','fm.jpg',65123458,'SEGA'),(12,'Rust','2015-01-06 00:00:00','The only aim in Rust is to survive - Overcome struggles such as hunger, thirst and cold. Build a fire. Build a shelter. Kill animals. Protect yourself from other players.','rust.jpg',5845821,'Facepunch'),(13,'ARK','2013-08-17 00:00:00','Stranded on the shores of a mysterious island, you must learn to survive. Use your cunning to kill or tame the primeval creatures roaming the land, and encounter other players to survive, dominate... and escape!','ark.jpg',123456,'Studio Wildcard'),(14,'The Survivalists','2020-05-03 00:00:00','A living world full of surprises, secrets and danger awaits in The Survivalists, an adventure-filled survival sandbox set in The Escapists universe. Explore, build, craft and even train monkeys with up to three friends in a desperate bid to survive.','surva.jpg',2222,'Team17'),(15,'Euro Truck Simulator 2','2012-03-21 00:00:00','Travel across Europe as king of the road, a trucker who delivers important cargo across impressive distances! With dozens of cities to explore, your endurance, skill and speed will all be pushed to their limits.','ets2.jpg',5555123,'Overwhelmingly Positive'),(16,'Farming Simulator 19','2018-03-17 00:00:00','The best-selling franchise takes a giant leap forward with a complete overhaul of the graphics engine, offering the most striking and immersive visuals and effects, along with the deepest and most complete farming experience ever.','fs.jpg',123479,'Focus home'),(17,'The Sims™ 3','2009-06-02 00:00:00','The Sims 3: Create the perfect world with full customization at your fingertips. Refine personalities and help fulfill destinies.','sims.jpg',1231455,'EA'),(18,'Doctor Simulator','2005-01-03 00:00:00','If you have ever thought of becoming a doctor – here is your chance! Arm yourself in a stethoscope and do a ward round to keep up to date with your patients’ condition. They may complain and question your authority but remember – you’re the doctor!','doktor.jpg',123,'PlayWay S.A.'),(19,'Surgeon Simulator','2009-05-05 00:00:00','Surgeon Simulator is an over-the-top operation sim, stitching together pitch-black humour with life-saving surgery.','hirurg.png',174456,'BS'),(20,'Micro Platformer','2017-03-02 00:00:00','A minimalistic platformer with a 1x1 tileset. No enemies, no bullets, no lasers. Just sheer platforming.','mikro.jpg',120,'Daveyyy'),(21,'Platform Builder','2015-03-02 00:00:00','Build, play, and share your own side-scrolling platformer games without learning to write a single line of code! ','da.jpg',789,'TingThing'),(22,'Dead by Daylight','2016-05-14 00:00:00','Dead by Daylight is a multiplayer (4vs1) horror game where one player takes on the role of the savage Killer, and the other four players play as Survivors, trying to escape the Killer and avoid being caught and killed.','dd.jpg',789,'BI'),(23,'Pacify','2002-05-01 00:00:00','There is reportedly an evil inside that house. Something about an old funeral parlor offering a last chance to talk to their dead loved ones. Plus something about lights, laughter, a girl, missing people, etc..','pa.jpg',100000,'SKH'),(24,'Alien: Isolation','2014-05-06 00:00:00','Discover the true meaning of fear in Alien: Isolation, a survival horror set in an atmosphere of constant dread and mortal danger.','ai.jpg',1236,'SEGA'),(25,'Resident Evil 7 Biohazard','2017-01-24 00:00:00','Fear and isolation seep through the walls of an abandoned southern farmhouse. \"7\" marks a new beginning for survival horror with the “Isolated View” of the visceral new first-person perspective.','re.jpg',1111123,'CAPCOM Co.'),(28,'Spider-Man™ 3','2020-03-26 00:00:00','For the first time ever, control the legendary black suit, which magnifies Spider-Man’s strength, agility and durability. Punish your enemies with explosive new attacks and incredible upgrades, including fearsome room-clearers.','spiderman.jpg',1911841,'Activision');
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `genre` (
  `genre_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`genre_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (3,'fighting'),(6,'horor'),(1,'platform'),(8,'simulation'),(10,'sport'),(4,'survival');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_game`
--

DROP TABLE IF EXISTS `genre_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `genre_game` (
  `genre_game_id` int(10) NOT NULL AUTO_INCREMENT,
  `genre_id` int(10) NOT NULL,
  `game_id` int(10) NOT NULL,
  PRIMARY KEY (`genre_game_id`),
  KEY `fk_genre_game_genre1_idx` (`genre_id`),
  KEY `fk_genre_game_game1_idx` (`game_id`),
  CONSTRAINT `fk_genre_game_game1` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_genre_game_genre1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_game`
--

LOCK TABLES `genre_game` WRITE;
/*!40000 ALTER TABLE `genre_game` DISABLE KEYS */;
INSERT INTO `genre_game` VALUES (1,1,3),(2,4,2),(3,3,2),(4,3,4),(5,3,5),(6,6,5),(7,4,6),(8,10,7),(9,10,8),(10,10,9),(11,10,10),(12,10,11),(16,4,12),(17,4,13),(18,4,14),(19,8,15),(20,8,16),(21,8,17),(22,8,18),(23,8,19),(24,1,20),(25,1,21);
/*!40000 ALTER TABLE `genre_game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `player` (
  `player_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `date_registered` date NOT NULL,
  `country` varchar(45) NOT NULL,
  `birthday` date NOT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'marvel123','2020-07-06','SRB','1998-02-02'),(2,'milos12','2020-07-06','SRB','1993-08-08'),(3,'petarkovc','2020-10-06','SRB','1994-01-01'),(4,'player31','2020-12-06','SRB','1996-05-15'),(5,'master','2020-05-06','USA','1988-12-21'),(6,'proplayer','2020-04-18','GBR','1999-07-22'),(7,'ivan123','2020-01-30','SRB','1997-02-18'),(8,'dasad21','2020-07-05','GER','2001-01-18'),(9,'dovinko','2020-03-22','SRB','2003-07-06'),(10,'123player213','2020-01-22','SRB','2005-04-03'),(11,'kingplayer','2020-03-15','USA','2001-04-30'),(12,'assassino','2020-12-12','SRB','2000-12-19'),(13,'zulu1','2020-07-01','SRB','2001-10-18'),(14,'captain','2019-01-10','PRC','2001-10-18'),(15,'dasma','2019-02-15','USA','1988-12-21'),(16,'pronix','2019-03-18','GER','2003-10-22'),(17,'xena','2019-01-22','CHN','2004-10-18'),(18,'wold123','2019-05-01','CHN','2001-10-05'),(19,'support1','2019-06-26','GER','1997-02-13'),(20,'satra123','2019-07-31','USA','2001-10-23'),(21,'wolf','2019-08-18','USA','1998-02-02'),(22,'kingplayer1','2019-11-17','GBR','2001-01-28'),(23,'adc','2019-12-02','GBR','2006-12-16'),(24,'sonofthe','2020-05-06','IND','1995-01-31'),(25,'test','2020-06-23','USA','2020-06-19');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_game`
--

DROP TABLE IF EXISTS `player_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `player_game` (
  `player_game_id` int(10) NOT NULL AUTO_INCREMENT,
  `hours_played` int(10) unsigned NOT NULL,
  `game_id` int(10) NOT NULL,
  `player_id` int(10) NOT NULL,
  PRIMARY KEY (`player_game_id`),
  KEY `fk_player_game_game_idx` (`game_id`),
  KEY `fk_player_game_player_id_idx` (`player_id`),
  CONSTRAINT `fk_player_game_game` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_player_game_player_id` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_game`
--

LOCK TABLES `player_game` WRITE;
/*!40000 ALTER TABLE `player_game` DISABLE KEYS */;
INSERT INTO `player_game` VALUES (1,10,2,1),(2,100,2,11),(3,105,2,2),(4,113,2,6),(5,200,2,15),(6,118,3,4),(7,214,3,11),(8,601,3,10),(9,38,3,4),(10,41,3,17),(11,410,4,17),(12,115,4,18),(13,300,4,20),(14,118,4,21),(15,624,4,22),(16,854,5,5),(17,11,5,17),(18,3,5,15),(19,110,5,18),(20,84,5,4),(21,62,6,20),(22,10,6,22),(23,22,6,23),(24,23,6,1),(25,34,7,22),(26,48,7,3),(27,68,7,23),(28,111,7,8),(29,325,7,2),(30,62,8,22),(31,110,8,1),(32,230,8,11),(33,411,8,5),(34,1111,8,19),(35,3240,9,11),(36,280,9,2),(37,413,9,19),(38,70,9,3),(39,90,9,10),(40,242,10,19),(41,541,10,18),(42,156,10,22),(43,312,10,10),(44,968,10,6),(45,156,11,7),(46,302,11,9),(47,481,11,3),(48,21,11,13),(49,5,11,2),(50,3,12,14),(51,2,12,5),(52,9,12,15),(53,132,12,19),(54,912,12,20),(55,151,13,16),(56,651,13,9),(57,56,13,2),(58,8,13,1),(59,526,13,3),(60,1256,14,8),(61,156,14,9),(62,147,14,7),(63,14,14,6),(64,740,14,15),(65,652,15,3),(66,46,15,2),(67,333,15,1),(68,555,15,20),(69,666,15,9),(70,777,16,23),(71,888,16,22),(72,999,16,21),(73,11,16,20),(74,12,16,18),(75,514,17,21),(76,15,17,20),(77,15,17,8),(78,696,17,1),(79,61,17,2),(80,6,18,1),(81,948,18,2),(82,9156,18,3),(83,88,18,5),(84,51,18,8),(85,65,19,8),(86,948,19,10),(87,15,19,3),(88,154,19,11),(89,54,19,12),(90,54,20,2),(91,954,20,4),(92,915,20,21),(93,54,20,6),(94,58,20,8),(95,59,21,10),(96,98,21,12),(97,15,21,14),(98,5556,21,16),(99,5,21,18),(100,54,22,1),(101,2,22,2),(102,1,22,3),(103,12,22,4),(104,51,22,14),(105,56,23,3),(106,155,23,4),(107,1212,23,7),(108,156,23,8),(109,6825,23,23),(110,40,24,7),(111,20,24,22),(112,111,24,23),(113,999,24,14),(114,1111,24,16),(115,784,25,22),(116,260,25,6),(117,228,25,7),(118,94,25,16),(119,88,25,14),(120,0,2,24),(121,12,2,25);
/*!40000 ALTER TABLE `player_game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'games'
--

--
-- Dumping routines for database 'games'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-31  3:27:29
