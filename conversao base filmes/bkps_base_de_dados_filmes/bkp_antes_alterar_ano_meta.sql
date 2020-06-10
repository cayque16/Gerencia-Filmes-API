-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: filmes
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AnoMeta`
--

DROP TABLE IF EXISTS `AnoMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnoMeta` (
  `id` int(11) unsigned NOT NULL,
  `ano` int(4) unsigned NOT NULL,
  `meta` int(4) NOT NULL DEFAULT '50',
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `AnoMeta_usuario_id_93d5509a_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `AnoMeta_usuario_id_93d5509a_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnoMeta`
--

LOCK TABLES `AnoMeta` WRITE;
/*!40000 ALTER TABLE `AnoMeta` DISABLE KEYS */;
INSERT INTO `AnoMeta` VALUES (1,2017,50,1),(2,2018,67,1),(3,2019,116,1),(4,2020,100,1);
/*!40000 ALTER TABLE `AnoMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Filmes`
--

DROP TABLE IF EXISTS `Filmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Filmes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `imdbID` varchar(45) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `ano` int(4) DEFAULT NULL,
  `duracao` int(4) DEFAULT NULL,
  `nota` decimal(10,1) DEFAULT NULL,
  `poster` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Filmes`
--

LOCK TABLES `Filmes` WRITE;
/*!40000 ALTER TABLE `Filmes` DISABLE KEYS */;
INSERT INTO `Filmes` VALUES (1,'tt2345759','The Mummy',2017,110,5.5,'https://m.media-amazon.com/images/M/MV5BMTkwMTgwODAxMl5BMl5BanBnXkFtZTgwNTEwNTQ3MDI@._V1_SX300.jpg'),(2,'tt3717490','Power Rangers',2017,124,6.0,'https://m.media-amazon.com/images/M/MV5BMTU1MTkxNzc5NF5BMl5BanBnXkFtZTgwOTM2Mzk3MTI@._V1_SX300.jpg'),(3,'tt1843866','Captain America: The Winter Soldier',2014,136,7.8,'https://m.media-amazon.com/images/M/MV5BMzA2NDkwODAwM15BMl5BanBnXkFtZTgwODk5MTgzMTE@._V1_SX300.jpg'),(4,'tt5308322','Happy Death Day',2017,96,6.5,'https://m.media-amazon.com/images/M/MV5BMTk0ODMyNjk1NF5BMl5BanBnXkFtZTgwNDkxOTk4MzI@._V1_SX300.jpg'),(5,'tt6644200','A Quiet Place',2018,90,7.7,'https://m.media-amazon.com/images/M/MV5BMjI0MDMzNTQ0M15BMl5BanBnXkFtZTgwMTM5NzM3NDM@._V1_SX300.jpg'),(6,'tt5109784','Mother!',2017,121,6.7,'https://m.media-amazon.com/images/M/MV5BMzc5ODExODE0MV5BMl5BanBnXkFtZTgwNDkzNDUxMzI@._V1_SX300.jpg'),(7,'tt0468569','The Dark Knight',2008,152,9.0,'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SX300.jpg'),(8,'tt5362988','Wind River',2017,107,7.8,'https://m.media-amazon.com/images/M/MV5BMTUyMjU1OTUwM15BMl5BanBnXkFtZTgwMDg1NDQ2MjI@._V1_SX300.jpg'),(9,'tt0800369','Thor',2011,115,7.0,'https://m.media-amazon.com/images/M/MV5BOGE4NzU1YTAtNzA3Mi00ZTA2LTg2YmYtMDJmMThiMjlkYjg2XkEyXkFqcGdeQXVyNTgzMDMzMTg@._V1_SX300.jpg'),(10,'tt0081505','The Shining',1980,146,8.4,'https://m.media-amazon.com/images/M/MV5BZWFlYmY2MGEtZjVkYS00YzU4LTg0YjQtYzY1ZGE3NTA5NGQxXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg'),(11,'tt2527336','Star Wars: The Last Jedi',2017,152,7.2,'https://m.media-amazon.com/images/M/MV5BMjQ1MzcxNjg4N15BMl5BanBnXkFtZTgwNzgwMjY4MzI@._V1_SX300.jpg'),(12,'tt1856101','Blade Runner 2049',2017,164,8.1,'https://m.media-amazon.com/images/M/MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_SX300.jpg'),(13,'tt0258463','The Bourne Identity',2002,119,7.9,'https://m.media-amazon.com/images/M/MV5BM2JkNGU0ZGMtZjVjNS00NjgyLWEyOWYtZmRmZGQyN2IxZjA2XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_SX300.jpg'),(14,'tt5463162','Deadpool 2',2018,119,8.0,'https://m.media-amazon.com/images/M/MV5BMjI3Njg3MzAxNF5BMl5BanBnXkFtZTgwNjI2OTY0NTM@._V1_SX300.jpg'),(15,'tt7451284','Batman Ninja',2018,88,5.7,'https://m.media-amazon.com/images/M/MV5BYmFhYzZhYzgtZjZiYS00NWEwLWFhYTUtN2UxM2FmYzdhNDUyXkEyXkFqcGdeQXVyNDk2Nzc1Mg@@._V1_SX300.jpg'),(16,'tt1631867','Edge of Tomorrow',2014,113,7.9,'https://m.media-amazon.com/images/M/MV5BMTc5OTk4MTM3M15BMl5BanBnXkFtZTgwODcxNjg3MDE@._V1_SX300.jpg'),(17,'tt2543472','Wonder',2017,113,8.0,'https://m.media-amazon.com/images/M/MV5BYjFhOWY0OTgtNDkzMC00YWJkLTk1NGEtYWUxNjhmMmQ5ZjYyXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_SX300.jpg'),(18,'tt6142314','Batman vs. Two-Face',2017,72,6.1,'https://m.media-amazon.com/images/M/MV5BY2MyY2NjNzgtZDAxNi00OWM2LTg3MDUtOTcyOGU1OTdjODNjXkEyXkFqcGdeQXVyMTg2NjYzOA@@._V1_SX300.jpg'),(19,'tt3280262','Cult of Chucky',2017,91,5.1,'https://m.media-amazon.com/images/M/MV5BMTA5NTMyN2UtMDBmOC00YzVlLWIzZTEtNTM0YjZmY2E4YjYzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg'),(20,'tt7167602','Suicide Squad: Hell to Pay',2018,86,7.1,'https://m.media-amazon.com/images/M/MV5BN2ZiYzY0NWUtMDNmYi00NWU5LWIwZDItMzY1ODhhNjdiNDRmXkEyXkFqcGdeQXVyNTUzNzM0NTY@._V1_SX300.jpg'),(21,'tt1272878','2 Guns',2013,109,6.7,'https://m.media-amazon.com/images/M/MV5BNTQ5MTgzNDg4OF5BMl5BanBnXkFtZTcwMjAyODEzOQ@@._V1_SX300.jpg'),(22,'tt7167658','The Death of Superman',2018,81,7.4,'https://m.media-amazon.com/images/M/MV5BOGViNDdkYWEtYTBlOC00YWNhLWI5ZTItMjFiNjFiN2RiYzA5XkEyXkFqcGdeQXVyMTg2NjYzOA@@._V1_SX300.jpg'),(23,'tt2231461','Rampage',2018,107,6.2,'https://m.media-amazon.com/images/M/MV5BNDA1NjA3ODU3OV5BMl5BanBnXkFtZTgwOTg3MTIwNTM@._V1_SX300.jpg'),(24,'tt0317705','The Incredibles',2004,115,8.0,'https://m.media-amazon.com/images/M/MV5BMTY5OTU0OTc2NV5BMl5BanBnXkFtZTcwMzU4MDcyMQ@@._V1_SX300.jpg'),(25,'tt2873282','Red Sparrow',2018,140,6.6,'https://m.media-amazon.com/images/M/MV5BMTA3MDkxOTc4NDdeQTJeQWpwZ15BbWU4MDAxNzgyNTQz._V1_SX300.jpg'),(26,'tt4695012','It Comes at Night',2017,91,6.2,'https://m.media-amazon.com/images/M/MV5BMjQ3MDA0ODA2N15BMl5BanBnXkFtZTgwNzg0NzgwMjI@._V1_SX300.jpg'),(27,'tt0822854','Shooter',2007,124,7.2,'https://m.media-amazon.com/images/M/MV5BMGRjMzY0OGItNDc4YS00OGNlLWI3MGYtZjRkNjdiNWUyNDY4XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg'),(28,'tt1677720','Ready Player One',2018,140,7.7,'https://m.media-amazon.com/images/M/MV5BY2JiYTNmZTctYTQ1OC00YjU4LWEwMjYtZjkwY2Y5MDI0OTU3XkEyXkFqcGdeQXVyNTI4MzE4MDU@._V1_SX300.jpg'),(29,'tt0212338','Meet the Parents',2000,108,7.0,'https://m.media-amazon.com/images/M/MV5BMGNlMGZiMmUtZjU0NC00MWU4LWI0YTgtYzdlNGVhZGU4NWZlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg'),(30,'tt2140479','The Accountant',2016,128,7.4,'https://m.media-amazon.com/images/M/MV5BNjFmN2UwYWEtMmNiNi00YTU5LThiM2YtMmU4YzYzYTA3YWFjXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_SX300.jpg'),(31,'tt3905756','Her Infidelity',2015,83,3.7,'https://m.media-amazon.com/images/M/MV5BNDg3OTMxNjkwMV5BMl5BanBnXkFtZTgwODE0NjkxNzE@._V1_SX300.jpg'),(32,'tt1981115','Thor: The Dark World',2013,112,7.0,'https://m.media-amazon.com/images/M/MV5BMTQyNzAwOTUxOF5BMl5BanBnXkFtZTcwMTE0OTc5OQ@@._V1_SX300.jpg'),(33,'tt1300854','Iron Man 3',2013,130,7.2,'https://m.media-amazon.com/images/M/MV5BMjE5MzcyNjk1M15BMl5BanBnXkFtZTcwMjQ4MjcxOQ@@._V1_SX300.jpg'),(34,'tt0848228','The Avengers',2012,143,8.1,'https://m.media-amazon.com/images/M/MV5BNDYxNjQyMjAtNTdiOS00NGYwLWFmNTAtNThmYjU5ZGI2YTI1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg'),(35,'tt0217869','Unbreakable',2000,106,7.3,'https://m.media-amazon.com/images/M/MV5BMDIwMjAxNzktNmEzYS00ZDY5LWEyZjktM2Y0MmUzZDkyYmZkXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg'),(36,'tt0458339','Captain America: The First Avenger',2011,124,6.9,'https://m.media-amazon.com/images/M/MV5BMTYzOTc2NzU3N15BMl5BanBnXkFtZTcwNjY3MDE3NQ@@._V1_SX300.jpg'),(37,'tt1228705','Iron Man 2',2010,124,7.0,'https://m.media-amazon.com/images/M/MV5BMTM0MDgwNjMyMl5BMl5BanBnXkFtZTcwNTg3NzAzMw@@._V1_SX300.jpg'),(38,'tt0800080','The Incredible Hulk',2008,112,6.8,'https://m.media-amazon.com/images/M/MV5BMTUyNzk3MjA1OF5BMl5BanBnXkFtZTcwMTE1Njg2MQ@@._V1_SX300.jpg'),(39,'tt1386697','Suicide Squad',2016,123,6.1,'https://m.media-amazon.com/images/M/MV5BMjM1OTMxNzUyM15BMl5BanBnXkFtZTgwNjYzMTIzOTE@._V1_SX300.jpg'),(40,'tt2034800','The Great Wall',2016,103,6.0,'https://m.media-amazon.com/images/M/MV5BMjA3MjAzOTQxNF5BMl5BanBnXkFtZTgwOTc5OTY1OTE@._V1_SX300.jpg'),(41,'tt3348730','Jigsaw',2017,92,5.8,'https://m.media-amazon.com/images/M/MV5BNmRiZDM4ZmMtOTVjMi00YTNlLTkyNjMtMjI2OTAxNjgwMWM1XkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_SX300.jpg'),(42,'tt3501632','Thor: Ragnarok',2017,130,7.9,'https://m.media-amazon.com/images/M/MV5BMjMyNDkzMzI1OF5BMl5BanBnXkFtZTgwODcxODg5MjI@._V1_SX300.jpg'),(43,'tt6791886','Como se Tornar o Pior Aluno da Escola',2017,106,5.9,'https://images-na.ssl-images-amazon.com/images/M/MV5BZjgyYmUyM2MtOWQyZi00ZTNjLThkZGItNWYxOTg0ZWEyNjJiXkEyXkFqcGdeQXVyNzk5NDc4OTA@._V1_SX300.jpg'),(44,'tt2557478','Pacific Rim: Uprising',2018,111,5.7,'https://m.media-amazon.com/images/M/MV5BMjI3Nzg0MTM5NF5BMl5BanBnXkFtZTgwOTE2MTgwNTM@._V1_SX300.jpg'),(45,'tt2704998','Game Night',2018,100,7.0,'https://m.media-amazon.com/images/M/MV5BMjQxMDE5NDg0NV5BMl5BanBnXkFtZTgwNTA5MDE2NDM@._V1_SX300.jpg'),(46,'tt0371746','Iron Man',2008,126,7.9,'https://m.media-amazon.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_SX300.jpg'),(47,'tt4154756','Avengers: Infinity War',2018,149,8.7,'https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_SX300.jpg'),(48,'tt0443706','Zodiac',2007,157,7.7,'https://m.media-amazon.com/images/M/MV5BN2UwNDc5NmEtNjVjZS00OTI5LWE5YjctMWM3ZjBiZGYwMGI2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg'),(49,'tt1825683','Black Panther',2018,134,7.4,'https://m.media-amazon.com/images/M/MV5BMTg1MTY2MjYzNV5BMl5BanBnXkFtZTgwMTc4NTMwNDI@._V1_SX300.jpg'),(50,'tt5022702','Hush',2016,81,6.6,'https://m.media-amazon.com/images/M/MV5BOWQ4OTdlODQtMDc3Yy00MGVmLWExYjUtOGI0Yjg4MDQzNDNhXkEyXkFqcGdeQXVyNjIzMzkyMzk@._V1_SX300.jpg'),(51,'tt3411444','Ferdinand',2017,108,6.7,'https://m.media-amazon.com/images/M/MV5BOTIwMDI0NjQ4OF5BMl5BanBnXkFtZTgwNjU0MzAyNDM@._V1_SX300.jpg'),(52,'tt4477536','Fifty Shades Freed',2018,105,4.4,'https://m.media-amazon.com/images/M/MV5BMTYxOTQ1MzI0Nl5BMl5BanBnXkFtZTgwMzgwMzIxNDM@._V1_SX300.jpg'),(53,'tt1464540','I Am Number Four',2011,111,6.1,'https://m.media-amazon.com/images/M/MV5BMjI0NDI1MTMyM15BMl5BanBnXkFtZTcwMDMzMTcyNA@@._V1_SX300.jpg'),(54,'tt3896198','Guardians of the Galaxy Vol. 2',2017,136,7.7,'https://m.media-amazon.com/images/M/MV5BMTg2MzI1MTg3OF5BMl5BanBnXkFtZTgwNTU3NDA2MTI@._V1_SX300.jpg'),(55,'tt1467304','The Human Centipede (First Sequence)',2009,92,4.4,'https://m.media-amazon.com/images/M/MV5BMTY4Nzk3NzYxOF5BMl5BanBnXkFtZTcwODQwNjQzMw@@._V1_SX300.jpg'),(56,'tt2015381','Guardians of the Galaxy',2014,121,8.1,'https://m.media-amazon.com/images/M/MV5BMTAwMjU5OTgxNjZeQTJeQWpwZ15BbWU4MDUxNDYxODEx._V1_SX300.jpg'),(57,'tt2798920','Annihilation',2018,115,7.0,'https://m.media-amazon.com/images/M/MV5BMTk2Mjc2NzYxNl5BMl5BanBnXkFtZTgwMTA2OTA1NDM@._V1_SX300.jpg'),(58,'tt2283362','Jumanji: Welcome to the Jungle',2017,119,7.0,'https://m.media-amazon.com/images/M/MV5BODQ0NDhjYWItYTMxZi00NTk2LWIzNDEtOWZiYWYxZjc2MTgxXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg'),(59,'tt2380307','Coco',2017,105,8.4,'https://m.media-amazon.com/images/M/MV5BYjQ5NjM0Y2YtNjZkNC00ZDhkLWJjMWItN2QyNzFkMDE3ZjAxXkEyXkFqcGdeQXVyODIxMzk5NjA@._V1_SX300.jpg'),(60,'tt0110912','Pulp Fiction',1994,154,8.9,'https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg'),(61,'tt2114504','Woody Woodpecker',2017,91,4.2,'https://m.media-amazon.com/images/M/MV5BYTNjODcyNTUtZWZjMS00MWU5LWFjYjItOWEyMTA0M2Q5MjQyXkEyXkFqcGdeQXVyOTA2NDE1NDM@._V1_SX300.jpg'),(62,'tt5580390','The Shape of Water',2017,123,7.4,'https://m.media-amazon.com/images/M/MV5BNGNiNWQ5M2MtNGI0OC00MDA2LWI5NzEtMmZiYjVjMDEyOWYzXkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_SX300.jpg'),(63,'tt7167630','Batman: Gotham by Gaslight',2018,78,6.8,'https://m.media-amazon.com/images/M/MV5BYTJhNjYyMGItODdhOC00ZTZmLTk1MTMtZDRhMmZkYTRiOGJkXkEyXkFqcGdeQXVyMTg2NjYzOA@@._V1_SX300.jpg'),(64,'tt3402236','Murder on the Orient Express',2017,114,6.5,'https://m.media-amazon.com/images/M/MV5BMTAxNDkxODIyMDZeQTJeQWpwZ15BbWU4MDQ2Mjg4NDIy._V1_SX300.jpg'),(65,'tt0169590','The Batman Superman Movie: World\'s Finest',1997,64,7.8,'https://m.media-amazon.com/images/M/MV5BYzk0MTI0YmUtMDgwOC00M2U5LTgzMDktM2RhN2M3ZDVmOWFiXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg'),(66,'tt2170439','Horrible Bosses 2',2014,108,6.3,'https://m.media-amazon.com/images/M/MV5BNzU4OTEzNzAwN15BMl5BanBnXkFtZTgwMTgwODAwMzE@._V1_SX300.jpg'),(67,'tt1499658','Horrible Bosses',2011,98,6.9,'https://m.media-amazon.com/images/M/MV5BNzYxNDI5Njc5NF5BMl5BanBnXkFtZTcwMDUxODE1NQ@@._V1_SX300.jpg'),(68,'tt1355644','Passengers',2016,116,7.0,'https://m.media-amazon.com/images/M/MV5BZjk4ZTMwMTYtOTk1NC00OTA0LWFhMGYtZTBjMzViMDY2YWZjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg'),(69,'tt0816711','World War Z',2013,116,7.0,'https://m.media-amazon.com/images/M/MV5BMTg0NTgxMjIxOF5BMl5BanBnXkFtZTcwMDM0MDY1OQ@@._V1_SX300.jpg'),(70,'tt2548396','The Cloverfield Paradox',2018,102,5.6,'https://m.media-amazon.com/images/M/MV5BMTAwOTIxMDA0MjZeQTJeQWpwZ15BbWU4MDg1MjgzNzQz._V1_SX300.jpg'),(71,'tt1345836','The Dark Knight Rises',2012,164,8.4,'https://m.media-amazon.com/images/M/MV5BMTk4ODQzNDY3Ml5BMl5BanBnXkFtZTcwODA0NTM4Nw@@._V1_SX300.jpg'),(72,'tt2109248','Transformers: Age of Extinction',2014,165,5.7,'https://m.media-amazon.com/images/M/MV5BMjE1OTMyODA5M15BMl5BanBnXkFtZTgwMjc2MDk3MTE@._V1_SX300.jpg'),(73,'tt6212478','American Animals',2018,116,7.6,'https://m.media-amazon.com/images/M/MV5BYTc4ZWQyODItMTZjYy00OTVmLWEzMjUtNTlkOTJjMzhiYzAxXkEyXkFqcGdeQXVyODE0MDY3NzY@._V1_SX300.jpg'),(74,'tt1528100','Exodus: Gods and Kings',2014,150,6.0,'https://m.media-amazon.com/images/M/MV5BMjI3MDY0NjkxNl5BMl5BanBnXkFtZTgwNTM3NTA0MzE@._V1_SX300.jpg'),(75,'tt3829920','Only the Brave',2017,134,7.7,'https://m.media-amazon.com/images/M/MV5BYWFlOWI3YTMtYTk3NS00YWQ2LTlmYTMtZjk0ZDk4Y2NjODI0XkEyXkFqcGdeQXVyNTQxNTQ4Mg@@._V1_SX300.jpg'),(76,'tt2032572','USS Indianapolis: Men of Courage',2016,128,5.2,'https://m.media-amazon.com/images/M/MV5BYmYxYjAxNDItZWY2NC00MTE1LWIxNGMtZjkzOTM3MzIwM2RjXkEyXkFqcGdeQXVyNDI0MTYyNzU@._V1_SX300.jpg'),(77,'tt3062096','Inferno',2016,121,6.2,'https://m.media-amazon.com/images/M/MV5BMTUzNTE2NTkzMV5BMl5BanBnXkFtZTgwMDAzOTUyMDI@._V1_SX300.jpg'),(78,'tt2106651','Spectral',2016,107,6.3,'https://m.media-amazon.com/images/M/MV5BYWQxN2I1NjItMDVjMS00ZmJjLWIyYjItOWI2OGY5NTU1ZjI2L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNTc3MjM3OTA@._V1_SX300.jpg'),(79,'tt2543164','Arrival',2016,116,7.9,'https://m.media-amazon.com/images/M/MV5BMTExMzU0ODcxNDheQTJeQWpwZ15BbWU4MDE1OTI4MzAy._V1_SX300.jpg'),(80,'tt1937390','Nymphomaniac: Vol. I',2013,117,7.0,'https://m.media-amazon.com/images/M/MV5BMjA3Njc5MjI5Ml5BMl5BanBnXkFtZTgwNTY3Mjg3MDE@._V1_SX300.jpg'),(81,'tt1211837','Doctor Strange',2016,115,7.5,'https://m.media-amazon.com/images/M/MV5BNjgwNzAzNjk1Nl5BMl5BanBnXkFtZTgwMzQ2NjI1OTE@._V1_SX300.jpg'),(82,'tt1289401','Ghostbusters: Answer the Call',2016,116,5.3,'https://m.media-amazon.com/images/M/MV5BMTg3OTM4NTM4NV5BMl5BanBnXkFtZTgwOTI3NDc0OTE@._V1_SX300.jpg'),(83,'tt3521164','Moana',2016,107,7.6,'https://m.media-amazon.com/images/M/MV5BMjI4MzU5NTExNF5BMl5BanBnXkFtZTgwNzY1MTEwMDI@._V1_SX300.jpg'),(84,'tt2494376','Justice League Dark',2017,75,7.1,'https://m.media-amazon.com/images/M/MV5BMmNkMGU4YzEtZTdhZS00YzBhLTgzYzAtZWM2NTQ0ZGU2ZjM3XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg'),(85,'tt2119532','Hacksaw Ridge',2016,139,8.2,'https://m.media-amazon.com/images/M/MV5BMjQ1NjM3MTUxNV5BMl5BanBnXkFtZTgwMDc5MTY5OTE@._V1_SX300.jpg'),(86,'tt0462538','The Simpsons Movie',2007,87,7.3,'https://m.media-amazon.com/images/M/MV5BMTgxMDczMTA5N15BMl5BanBnXkFtZTcwMzk1MzMzMw@@._V1_SX300.jpg'),(87,'tt3315342','Logan',2017,137,8.1,'https://m.media-amazon.com/images/M/MV5BYzc5MTU4N2EtYTkyMi00NjdhLTg3NWEtMTY4OTEyMzJhZTAzXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg'),(88,'tt3212812','My Mom Is a Character 2',2016,96,6.6,'https://images-na.ssl-images-amazon.com/images/M/MV5BNmVjNGNmZDItZmQ5OC00M2EyLWFkMWYtNTU5ZDdhZjJiYjIwL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTkzODUwNzk@._V1_SX300.jpg'),(89,'tt4972582','Split',2016,117,7.3,'https://m.media-amazon.com/images/M/MV5BZTJiNGM2NjItNDRiYy00ZjY0LTgwNTItZDBmZGRlODQ4YThkL2ltYWdlXkEyXkFqcGdeQXVyMjY5ODI4NDk@._V1_SX300.jpg'),(90,'tt1411697','The Hangover Part II',2011,102,6.5,'https://m.media-amazon.com/images/M/MV5BMTM2MTM4MzY2OV5BMl5BanBnXkFtZTcwNjQ3NzI4NA@@._V1_SX300.jpg'),(91,'tt2094766','Assassin\'s Creed',2016,115,5.8,'https://m.media-amazon.com/images/M/MV5BNzE1OTczNTc1OF5BMl5BanBnXkFtZTgwMzgyMDI3MDI@._V1_SX300.jpg'),(92,'tt1921064','Pompeii',2014,105,5.5,'https://m.media-amazon.com/images/M/MV5BNDE2MTU3NzYwOF5BMl5BanBnXkFtZTgwOTY4NTk4MDE@._V1_SX300.jpg'),(93,'tt6315800','Teen Titans: The Judas Contract',2017,84,7.0,'https://m.media-amazon.com/images/M/MV5BNGZlODc0YjgtNWZjNS00NGNjLTgwOTUtMTllZTEyYjE0YTMwXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_SX300.jpg'),(94,'tt1951261','The Hangover Part III',2013,100,5.8,'https://m.media-amazon.com/images/M/MV5BMTA0NjE1MzMzODheQTJeQWpwZ15BbWU3MDY4MTQ3Mzk@._V1_SX300.jpg'),(95,'tt2402157','The November Man',2014,108,6.3,'https://m.media-amazon.com/images/M/MV5BNTkzMDk5NjUxNV5BMl5BanBnXkFtZTgwMzMwOTMyMjE@._V1_SX300.jpg'),(96,'tt4465564','Fifty Shades Darker',2017,118,4.6,'https://m.media-amazon.com/images/M/MV5BMTQ5NTk0Njg2N15BMl5BanBnXkFtZTgwNzk5Nzk3MDI@._V1_SX300.jpg'),(97,'tt5052448','Get Out',2017,104,7.7,'https://m.media-amazon.com/images/M/MV5BMjUxMDQwNjcyNl5BMl5BanBnXkFtZTgwNzcwMzc0MTI@._V1_SX300.jpg'),(98,'tt3034258','Meu Passado Me Condena: O Filme',2013,102,5.9,'https://images-na.ssl-images-amazon.com/images/M/MV5BNDM3NTE0MmQtZWM4OS00OGEwLWIzY2MtNjBhNzVkYWYyZmMyXkEyXkFqcGdeQXVyNjM2MDUyNDQ@._V1_SX300.jpg'),(99,'tt2911666','John Wick',2014,101,7.3,'https://m.media-amazon.com/images/M/MV5BMTU2NjA1ODgzMF5BMl5BanBnXkFtZTgwMTM2MTI4MjE@._V1_SX300.jpg'),(100,'tt4425200','John Wick: Chapter 2',2017,122,7.5,'https://m.media-amazon.com/images/M/MV5BMjE2NDkxNTY2M15BMl5BanBnXkFtZTgwMDc2NzE0MTI@._V1_SX300.jpg'),(101,'tt3731562','Kong: Skull Island',2017,118,6.7,'https://m.media-amazon.com/images/M/MV5BMTUwMzI5ODEwNF5BMl5BanBnXkFtZTgwNjAzNjI2MDI@._V1_SX300.jpg'),(102,'tt1340138','Terminator Genisys',2015,126,6.5,'https://m.media-amazon.com/images/M/MV5BMjM1NTc0NzE4OF5BMl5BanBnXkFtZTgwNDkyNjQ1NTE@._V1_SX300.jpg'),(103,'tt4302740','Meu Passado Me Condena 2: O Filme',2015,105,5.7,'https://images-na.ssl-images-amazon.com/images/M/MV5BNDIzYjVmYjctMjk1My00NjliLTgyZTMtNTkwZmMyNzliYjhjXkEyXkFqcGdeQXVyNjUyNDQyODY@._V1_SX300.jpg'),(104,'tt2316204','Alien: Covenant',2017,122,6.4,'https://m.media-amazon.com/images/M/MV5BYzVkMjRhNzctOGQxMC00OGE2LWJhN2EtNmYyODRiMDNlM2ZmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg'),(105,'tt3874544','The Boss Baby',2017,97,6.3,'https://m.media-amazon.com/images/M/MV5BMTg5MzUxNzgxNV5BMl5BanBnXkFtZTgwMTM2NzQ3MjI@._V1_SX300.jpg'),(106,'tt1700841','Sausage Party',2016,89,6.2,'https://m.media-amazon.com/images/M/MV5BMjkxOTk1MzY4MF5BMl5BanBnXkFtZTgwODQzOTU5ODE@._V1_SX300.jpg'),(107,'tt1241317','Death Note',2017,101,4.6,'https://m.media-amazon.com/images/M/MV5BMTUwOTgzMTEyOF5BMl5BanBnXkFtZTgwNTk3MTM5MjI@._V1_SX300.jpg'),(108,'tt0451279','Wonder Woman',2017,141,7.5,'https://m.media-amazon.com/images/M/MV5BNDFmZjgyMTEtYTk5MC00NmY0LWJhZjktOWY2MzI5YjkzODNlXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_SX300.jpg'),(109,'tt3501112','Security',2017,88,5.7,'https://m.media-amazon.com/images/M/MV5BZmI4OGE0MTktOTQ3ZC00ZDlhLTg1OGMtMjRiMTMwNzgzZDIyXkEyXkFqcGdeQXVyNjc4Nzk3NzU@._V1_SX300.jpg'),(110,'tt1536537','What Happened to Monday',2017,123,6.9,'https://m.media-amazon.com/images/M/MV5BMjE4MDQxMDg3MF5BMl5BanBnXkFtZTgwNjQ0MTcwMzI@._V1_SX300.jpg'),(111,'tt0936501','Taken',2008,93,7.8,'https://m.media-amazon.com/images/M/MV5BMTM4NzQ0OTYyOF5BMl5BanBnXkFtZTcwMDkyNjQyMg@@._V1_SX300.jpg'),(112,'tt1397280','Taken 2',2012,92,6.3,'https://m.media-amazon.com/images/M/MV5BMTkwNTQ0ODExOV5BMl5BanBnXkFtZTcwNjU3NDQwOA@@._V1_SX300.jpg'),(113,'tt2446042','Taken 3',2014,108,6.0,'https://m.media-amazon.com/images/M/MV5BNjM5MDU3NTY0M15BMl5BanBnXkFtZTgwOTk2ODU2MzE@._V1_SX300.jpg'),(114,'tt5442430','Life',2017,104,6.6,'https://m.media-amazon.com/images/M/MV5BMzAwMmQxNTctYjVmYi00MDdlLWEzMWUtOTE5NTRiNDhhNjI2L2ltYWdlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg'),(115,'tt3371366','Transformers: The Last Knight',2017,154,5.2,'https://m.media-amazon.com/images/M/MV5BMTk3OTI3MDk4N15BMl5BanBnXkFtZTgwNDg2ODIyMjI@._V1_SX300.jpg'),(116,'tt6556890','Batman and Harley Quinn',2017,74,5.9,'https://m.media-amazon.com/images/M/MV5BNTQzM2JkYTAtY2ExNi00N2ZhLWE5NDctMDQyMWU5ZjcwZDEwXkEyXkFqcGdeQXVyMjM5NDQzNTk@._V1_SX300.jpg'),(117,'tt2250912','Spider-Man: Homecoming',2017,133,7.5,'https://m.media-amazon.com/images/M/MV5BNTk4ODQ1MzgzNl5BMl5BanBnXkFtZTgwMTMyMzM4MTI@._V1_SX300.jpg'),(118,'tt3322940','Annabelle',2014,99,5.4,'https://m.media-amazon.com/images/M/MV5BOTQwZmQyYzEtODk5ZC00OTY3LWExMjAtYzRjNWFhNGM3MzBlXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_SX300.jpg'),(119,'tt5140878','Annabelle: Creation',2017,109,6.6,'https://m.media-amazon.com/images/M/MV5BMjA1MzIwMjMxNF5BMl5BanBnXkFtZTgwMDQ3NTc2MjI@._V1_SX300.jpg'),(120,'tt3450958','War for the Planet of the Apes',2017,140,7.5,'https://m.media-amazon.com/images/M/MV5BNDNmYTQzMDEtMmY0MS00OTNjLTk4MjItMDZhMzkzOGI3MzA0XkEyXkFqcGdeQXVyNjk5NDA3OTk@._V1_SX300.jpg'),(121,'tt3748172','Gerald\'s Game',2017,103,6.7,'https://m.media-amazon.com/images/M/MV5BMzg0NGE0N2MtYTg1My00NTBkLWI5NjEtZTgyMDA0MTU4MmIyXkEyXkFqcGdeQXVyMTU2NTcyMg@@._V1_SX300.jpg'),(122,'tt1972591','King Arthur: Legend of the Sword',2017,126,6.8,'https://m.media-amazon.com/images/M/MV5BMjM3ODY3Njc5Ml5BMl5BanBnXkFtZTgwMjQ5NjM5MTI@._V1_SX300.jpg'),(123,'tt0974015','Justice League',2017,120,6.6,'https://m.media-amazon.com/images/M/MV5BYWVhZjZkYTItOGIwYS00NmRkLWJlYjctMWM0ZjFmMDU4ZjEzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg'),(124,'tt3605418','Knock Knock',2015,99,4.9,'https://m.media-amazon.com/images/M/MV5BMTY5NTkyMzM1Nl5BMl5BanBnXkFtZTgwODU3Njc2NjE@._V1_SX300.jpg'),(125,'tt1384590','Green Lantern: First Flight',2009,77,7.1,'https://ia.media-imdb.com/images/M/MV5BOWQ4ZGExZGMtYjZjNS00NWMyLThmZTUtZjM0N2UxMzU5MTk5L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg'),(126,'tt0106364','Batman: Mask of the Phantasm',1993,76,7.9,'https://m.media-amazon.com/images/M/MV5BODE0YTBiMjQtNWQyZC00YTNjLWJmYjAtMWUwNzI4NGVlZTAzL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg'),(127,'tt1396484','It',2017,135,7.4,'https://m.media-amazon.com/images/M/MV5BZDVkZmI0YzAtNzdjYi00ZjhhLWE1ODEtMWMzMWMzNDA0NmQ4XkEyXkFqcGdeQXVyNzYzODM3Mzg@._V1_SX300.jpg'),(128,'tt5519340','Bright',2017,117,6.4,'https://m.media-amazon.com/images/M/MV5BMTcyNzk5NDg1Nl5BMl5BanBnXkFtZTgwNTM5MDQxNDM@._V1_SX300.jpg'),(129,'tt0304141','Harry Potter and the Prisoner of Azkaban',2004,142,7.9,'https://m.media-amazon.com/images/M/MV5BMTY4NTIwODg0N15BMl5BanBnXkFtZTcwOTc0MjEzMw@@._V1_SX300.jpg'),(130,'tt2802144','Kingsman: The Secret Service',2014,129,7.7,'https://m.media-amazon.com/images/M/MV5BMTkxMjgwMDM4Ml5BMl5BanBnXkFtZTgwMTk3NTIwNDE@._V1_SX300.jpg'),(131,'tt4649466','Kingsman: The Golden Circle',2017,141,6.8,'https://m.media-amazon.com/images/M/MV5BMjQ3OTgzMzY4NF5BMl5BanBnXkFtZTgwOTc4OTQyMzI@._V1_SX300.jpg'),(132,'tt5013056','Dunkirk',2017,106,8.0,'https://m.media-amazon.com/images/M/MV5BN2YyZjQ0NTEtNzU5MS00NGZkLTg0MTEtYzJmMWY3MWRhZjM2XkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_SX300.jpg'),(133,'tt3532216','American Made',2017,115,7.2,'https://m.media-amazon.com/images/M/MV5BMTUxNzUwMjk1Nl5BMl5BanBnXkFtZTgwNDkwODI1MjI@._V1_SX300.jpg'),(134,'tt3878542','Justice League: Throne of Atlantis',2015,72,6.7,'https://m.media-amazon.com/images/M/MV5BZGUxZDY1NzMtMDBkOS00ZTY4LTlhYWUtNWQxMDJlNjAyNmQyXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_SX300.jpg'),(135,'tt3890160','Baby Driver',2017,112,7.7,'https://m.media-amazon.com/images/M/MV5BMjM3MjQ1MzkxNl5BMl5BanBnXkFtZTgwODk1ODgyMjI@._V1_SX300.jpg'),(136,'tt1156398','Zombieland',2009,88,7.7,'https://m.media-amazon.com/images/M/MV5BMTU5MDg0NTQ1N15BMl5BanBnXkFtZTcwMjA4Mjg3Mg@@._V1_SX300.jpg'),(137,'tt0372784','Batman Begins',2005,140,8.3,'https://m.media-amazon.com/images/M/MV5BZmUwNGU2ZmItMmRiNC00MjhlLTg5YWUtODMyNzkxODYzMmZlXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_SX300.jpg'),(138,'tt2543164','Arrival',2016,116,7.9,'https://m.media-amazon.com/images/M/MV5BMTExMzU0ODcxNDheQTJeQWpwZ15BbWU4MDE1OTI4MzAy._V1_SX300.jpg'),(139,'tt1285016','The Social Network',2010,120,7.7,'https://m.media-amazon.com/images/M/MV5BMTM2ODk0NDAwMF5BMl5BanBnXkFtZTcwNTM1MDc2Mw@@._V1_SX300.jpg'),(140,'tt6212478','American Animals',2018,116,7.6,'https://m.media-amazon.com/images/M/MV5BYTc4ZWQyODItMTZjYy00OTVmLWEzMjUtNTlkOTJjMzhiYzAxXkEyXkFqcGdeQXVyODE0MDY3NzY@._V1_SX300.jpg'),(141,'tt5649144','The Florida Project',2017,111,7.6,'https://m.media-amazon.com/images/M/MV5BMjg4ZmY1MmItMjFjOS00ZTg2LWJjNDYtNDM2YmM2NzhiNmZhXkEyXkFqcGdeQXVyNTAzMTY4MDA@._V1_SX300.jpg'),(142,'tt2084970','The Imitation Game',2014,114,8.0,'https://m.media-amazon.com/images/M/MV5BOTgwMzFiMWYtZDhlNS00ODNkLWJiODAtZDVhNzgyNzJhYjQ4L2ltYWdlXkEyXkFqcGdeQXVyNzEzOTYxNTQ@._V1_SX300.jpg'),(143,'tt1197624','Law Abiding Citizen',2009,109,7.4,'https://m.media-amazon.com/images/M/MV5BMTMyODY1NTg1N15BMl5BanBnXkFtZTcwMTUyODI4Mg@@._V1_SX300.jpg'),(144,'tt0816692','Interstellar',2014,169,8.6,'https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg'),(145,'tt4881806','Jurassic World: Fallen Kingdom',2018,128,6.4,'https://m.media-amazon.com/images/M/MV5BNzIxMjYwNDEwN15BMl5BanBnXkFtZTgwMzk5MDI3NTM@._V1_SX300.jpg'),(146,'tt0209144','Memento',2000,113,8.5,'https://m.media-amazon.com/images/M/MV5BZTcyNjk1MjgtOWI3Mi00YzQwLWI5MTktMzY4ZmI2NDAyNzYzXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg'),(147,'tt0480249','I Am Legend',2007,101,7.2,'https://m.media-amazon.com/images/M/MV5BYTE1ZTBlYzgtNmMyNS00ZTQ2LWE4NjEtZjUxNDJkNTg2MzlhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg'),(148,'tt2302755','Olympus Has Fallen',2013,119,6.5,'https://m.media-amazon.com/images/M/MV5BNTU0NmY4MWYtNzRlMS00MDkxLWJkODYtOTM3NGI2ZDc1NTJhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg'),(149,'tt2024432','Identity Thief',2013,111,5.7,'https://m.media-amazon.com/images/M/MV5BMTY3NzM5MTk2Nl5BMl5BanBnXkFtZTcwMDQ4MjQ3OA@@._V1_SX300.jpg'),(150,'tt3300542','London Has Fallen',2016,99,5.9,'https://m.media-amazon.com/images/M/MV5BMTY1ODY2MTgwM15BMl5BanBnXkFtZTgwOTY3Nzc3NzE@._V1_SX300.jpg'),(151,'tt1049413','Up',2009,96,8.3,'https://m.media-amazon.com/images/M/MV5BMTk3NDE2NzI4NF5BMl5BanBnXkFtZTgwNzE1MzEyMTE@._V1_SX300.jpg'),(152,'tt5758778','Skyscraper',2018,102,6.0,'https://m.media-amazon.com/images/M/MV5BOGM3MzQwYzItNDA1Ny00MzIyLTg5Y2QtYTAwMzNmMDU2ZDgxXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_SX300.jpg'),(153,'tt3397884','Sicario',2015,121,7.6,'https://m.media-amazon.com/images/M/MV5BMjA5NjM3NTk1M15BMl5BanBnXkFtZTgwMzg1MzU2NjE@._V1_SX300.jpg'),(154,'tt0116282','Fargo',1996,98,8.1,'https://m.media-amazon.com/images/M/MV5BNDJiZDgyZjctYmRjMS00ZjdkLTkwMTEtNGU1NDg3NDQ0Yzk1XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg'),(155,'tt0910970','WALL·E',2008,98,8.4,'https://m.media-amazon.com/images/M/MV5BMjExMTg5OTU0NF5BMl5BanBnXkFtZTcwMjMxMzMzMw@@._V1_SX300.jpg'),(156,'tt0133093','The Matrix',1999,136,8.7,'https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg'),(157,'tt5095030','Ant-Man and the Wasp',2018,118,7.4,'https://m.media-amazon.com/images/M/MV5BYjcyYTk0N2YtMzc4ZC00Y2E0LWFkNDgtNjE1MzZmMGE1YjY1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg'),(158,'tt0234215','The Matrix Reloaded',2003,138,7.2,'https://m.media-amazon.com/images/M/MV5BODE0MzZhZTgtYzkwYi00YmI5LThlZWYtOWRmNWE5ODk0NzMxXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg'),(159,'tt0242653','The Matrix Revolutions',2003,129,6.7,'https://m.media-amazon.com/images/M/MV5BNzNlZTZjMDctZjYwNi00NzljLWIwN2QtZWZmYmJiYzQ0MTk2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg'),(160,'tt3778644','Solo: A Star Wars Story',2018,135,7.0,'https://m.media-amazon.com/images/M/MV5BOTM2NTI3NTc3Nl5BMl5BanBnXkFtZTgwNzM1OTQyNTM@._V1_SX300.jpg'),(161,'tt0120737','The Lord of the Rings: The Fellowship of the Ring',2001,178,8.8,'https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_SX300.jpg'),(162,'tt0167261','The Lord of the Rings: The Two Towers',2002,179,8.7,'https://m.media-amazon.com/images/M/MV5BMDY0NmI4ZjctN2VhZS00YzExLTkyZGItMTJhOTU5NTg4MDU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg'),(163,'tt4263482','The Witch',2015,92,6.8,'https://m.media-amazon.com/images/M/MV5BMTUyNzkwMzAxOF5BMl5BanBnXkFtZTgwMzc1OTk1NjE@._V1_SX300.jpg'),(164,'tt3011894','Wild Tales',2014,122,8.1,'https://m.media-amazon.com/images/M/MV5BNzAzMjA1ODAxOV5BMl5BanBnXkFtZTgwODg4NTQzNDE@._V1_SX300.jpg'),(165,'tt0144084','American Psycho',2000,102,7.6,'https://m.media-amazon.com/images/M/MV5BZTM2ZGJmNjQtN2UyOS00NjcxLWFjMDktMDE2NzMyNTZlZTBiXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg'),(166,'tt3606756','Incredibles 2',2018,118,8.1,'https://m.media-amazon.com/images/M/MV5BMTEzNzY0OTg0NTdeQTJeQWpwZ15BbWU4MDU3OTg3MjUz._V1_SX300.jpg'),(167,'tt0482571','The Prestige',2006,130,8.5,'https://m.media-amazon.com/images/M/MV5BMjA4NDI0MTIxNF5BMl5BanBnXkFtZTYwNTM0MzY2._V1_SX300.jpg'),(168,'tt1212428','The Lost City of Z',2016,141,6.6,'https://m.media-amazon.com/images/M/MV5BMjQzNTk3MTkyNF5BMl5BanBnXkFtZTgwMDA2MDQzMTI@._V1_SX300.jpg'),(169,'tt7424200','Teen Titans Go! To the Movies',2018,84,6.8,'https://m.media-amazon.com/images/M/MV5BMjM3NDMwMDE2N15BMl5BanBnXkFtZTgwNDQ1Mjg5NTM@._V1_SX300.jpg'),(170,'tt0120382','The Truman Show',1998,103,8.1,'https://m.media-amazon.com/images/M/MV5BMDIzODcyY2EtMmY2MC00ZWVlLTgwMzAtMjQwOWUyNmJjNTYyXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg'),(171,'tt0315327','Bruce Almighty',2003,101,6.7,'https://m.media-amazon.com/images/M/MV5BNzMyZDhiZDUtYWUyMi00ZDQxLWE4NDQtMWFlMjI1YjVjMjZiXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg'),(172,'tt3766354','The Equalizer 2',2018,121,6.9,'https://m.media-amazon.com/images/M/MV5BMTU2OTYzODQyMF5BMl5BanBnXkFtZTgwNjU3Njk5NTM@._V1_SX300.jpg'),(173,'tt3183660','Fantastic Beasts and Where to Find Them',2016,133,7.4,'https://m.media-amazon.com/images/M/MV5BMjMxOTM1OTI4MV5BMl5BanBnXkFtZTgwODE5OTYxMDI@._V1_SX300.jpg'),(174,'tt4244998','Alpha',2018,96,7.0,'https://m.media-amazon.com/images/M/MV5BODI4OTk1ODY3N15BMl5BanBnXkFtZTgwMDI1MTcwNjM@._V1_SX300.jpg'),(175,'tt2872718','Nightcrawler',2014,117,7.9,'https://m.media-amazon.com/images/M/MV5BN2U1YzdhYWMtZWUzMi00OWI1LWFkM2ItNWVjM2YxMGQ2MmNhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg'),(176,'tt1772341','Wreck-It Ralph',2012,101,7.7,'https://m.media-amazon.com/images/M/MV5BNzMxNTExOTkyMF5BMl5BanBnXkFtZTcwMzEyNDc0OA@@._V1_SX300.jpg'),(177,'tt5814060','The Nun',2018,96,5.6,'https://m.media-amazon.com/images/M/MV5BMjEwMDE1NzI3M15BMl5BanBnXkFtZTgwNjg2NjExNjM@._V1_SX300.jpg'),(178,'tt4779682','The Meg',2018,113,5.9,'https://m.media-amazon.com/images/M/MV5BMjg0MzA4MDE0N15BMl5BanBnXkFtZTgwMzk3MzAwNjM@._V1_SX300.jpg'),(179,'tt1270797','Venom',2018,112,7.0,'https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_SX300.jpg'),(180,'tt3829266','The Predator',2018,107,5.6,'https://m.media-amazon.com/images/M/MV5BMjM5MDk2NDIxMF5BMl5BanBnXkFtZTgwNjU5NDk3NTM@._V1_SX300.jpg'),(181,'tt3742378','The Second Mother',2015,112,7.8,'https://m.media-amazon.com/images/M/MV5BMzU0MzE5Mjk3OF5BMl5BanBnXkFtZTgwMjM3NjQzNjE@._V1_SX300.jpg'),(182,'tt1213641','First Man',2018,141,7.7,'https://m.media-amazon.com/images/M/MV5BMDBhOTMxN2UtYjllYS00NWNiLWE1MzAtZjg3NmExODliMDQ0XkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_SX300.jpg'),(183,'tt2737304','Bird Box',2018,124,6.4,'https://m.media-amazon.com/images/M/MV5BMjAzMTI1MjMyN15BMl5BanBnXkFtZTgwNzU5MTE2NjM@._V1_SX300.jpg'),(184,'tt4912910','Mission: Impossible - Fallout',2018,147,7.9,'https://m.media-amazon.com/images/M/MV5BNjRlZmM0ODktY2RjNS00ZDdjLWJhZGYtNDljNWZkMGM5MTg0XkEyXkFqcGdeQXVyNjAwMjI5MDk@._V1_SX300.jpg'),(185,'tt0246578','Donnie Darko',2001,113,8.1,'https://m.media-amazon.com/images/M/MV5BZjZlZDlkYTktMmU1My00ZDBiLWFlNjEtYTBhNjVhOTM4ZjJjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg'),(186,'tt2199571','Run All Night',2015,114,6.6,'https://m.media-amazon.com/images/M/MV5BMTU2ODI3ODEyOV5BMl5BanBnXkFtZTgwMTM3NTQzNDE@._V1_SX300.jpg'),(187,'tt4550098','Nocturnal Animals',2016,116,7.5,'https://m.media-amazon.com/images/M/MV5BMTYwMzMwMzgxNl5BMl5BanBnXkFtZTgwMTA0MTUzMDI@._V1_SX300.jpg'),(188,'tt6155172','Roma',2018,135,8.2,'https://m.media-amazon.com/images/M/MV5BMTU0OTc3ODk4Ml5BMl5BanBnXkFtZTgwMzM4NzI5NjM@._V1_SX300.jpg'),(189,'tt1219827','Ghost in the Shell',2017,107,6.4,'https://m.media-amazon.com/images/M/MV5BMzJiNTI3MjItMGJiMy00YzA1LTg2MTItZmE1ZmRhOWQ0NGY1XkEyXkFqcGdeQXVyOTk4MTM0NQ@@._V1_SX300.jpg'),(190,'tt4116284','The Lego Batman Movie',2017,104,7.3,'https://m.media-amazon.com/images/M/MV5BMTcyNTEyOTY0M15BMl5BanBnXkFtZTgwOTAyNzU3MDI@._V1_SX300.jpg'),(191,'tt3289956','The Autopsy of Jane Doe',2016,86,6.8,'https://m.media-amazon.com/images/M/MV5BMjA2MTEzMzkzM15BMl5BanBnXkFtZTgwMjM2MTM5MDI@._V1_SX300.jpg'),(192,'tt3170832','Room',2015,118,8.2,'https://m.media-amazon.com/images/M/MV5BMjE4NzgzNzEwMl5BMl5BanBnXkFtZTgwMTMzMDE0NjE@._V1_SX300.jpg'),(193,'tt1189073','The Skin I Live In',2011,120,7.6,'https://m.media-amazon.com/images/M/MV5BMjMwOTYyNDY4NV5BMl5BanBnXkFtZTcwNDI1ODk0Ng@@._V1_SX300.jpg'),(194,'tt4361050','Ouija: Origin of Evil',2016,99,6.1,'https://m.media-amazon.com/images/M/MV5BMTk4NTcxNTQ5NF5BMl5BanBnXkFtZTgwNTk5OTU4OTE@._V1_SX300.jpg'),(195,'tt1596363','The Big Short',2015,130,7.8,'https://m.media-amazon.com/images/M/MV5BNDc4MThhN2EtZjMzNC00ZDJmLThiZTgtNThlY2UxZWMzNjdkXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg'),(196,'tt0075148','Rocky',1976,120,8.1,'https://m.media-amazon.com/images/M/MV5BMTY5MDMzODUyOF5BMl5BanBnXkFtZTcwMTQ3NTMyNA@@._V1_SX300.jpg'),(197,'tt7167686','Reign of the Supermen',2019,87,7.5,'https://m.media-amazon.com/images/M/MV5BYTY0OGIxNDMtNzIwZi00NTFmLThhYzUtYzUzYzc5ZjYwMThjXkEyXkFqcGdeQXVyNzU3NjUxMzE@._V1_SX300.jpg'),(198,'tt9177882','Constantine City of Demons: The Movie',2018,90,7.5,'https://m.media-amazon.com/images/M/MV5BMzFiYjlhMWYtZjViOC00Mzg5LTgyYzAtMDhjNzgxOWMxOTI4XkEyXkFqcGdeQXVyMjc0MjgxNzM@._V1_SX300.jpg'),(199,'tt0471041','The Tournament',2009,95,6.1,'https://m.media-amazon.com/images/M/MV5BMTg0NTU2OTE2OF5BMl5BanBnXkFtZTcwMDQ0NjQ2MQ@@._V1_SX300.jpg'),(200,'tt0382932','Ratatouille',2007,111,8.0,'https://m.media-amazon.com/images/M/MV5BMTMzODU0NTkxMF5BMl5BanBnXkFtZTcwMjQ4MzMzMw@@._V1_SX300.jpg'),(201,'tt4139588','Polar',2019,0,0.0,'https://m.media-amazon.com/images/M/MV5BMjAzNDkzODU3Ml5BMl5BanBnXkFtZTgwNDI4OTExNzM@._V1_SX300.jpg'),(202,'tt0110413','Léon: The Professional',1994,110,8.6,'https://m.media-amazon.com/images/M/MV5BZDAwYTlhMDEtNTg0OS00NDY2LWJjOWItNWY3YTZkM2UxYzUzXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg'),(203,'tt1517451','A Star Is Born',2018,136,8.0,'https://m.media-amazon.com/images/M/MV5BNmE5ZmE3OGItNTdlNC00YmMxLWEzNjctYzAwOGQ5ODg0OTI0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg'),(204,'tt0079817','Rocky II',1979,119,7.2,'https://m.media-amazon.com/images/M/MV5BOTZmYzA4N2YtMzA1NS00OTU0LWJiNWItNDUxOWRiMGVjZjJkL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg'),(205,'tt1727824','Bohemian Rhapsody',2018,134,8.3,'https://m.media-amazon.com/images/M/MV5BNDg2NjIxMDUyNF5BMl5BanBnXkFtZTgwMzEzNTE1NTM@._V1_SX300.jpg'),(206,'tt1571234','Mortal Engines',2018,128,6.4,'https://m.media-amazon.com/images/M/MV5BNzY1MDA2OTQ0N15BMl5BanBnXkFtZTgwMTkzNjU2NTM@._V1_SX300.jpg'),(207,'tt0084602','Rocky III',1982,99,6.8,'https://m.media-amazon.com/images/M/MV5BMTMyOTYzMDMzMF5BMl5BanBnXkFtZTcwMTkzODM1NA@@._V1_SX300.jpg'),(208,'tt0089927','Rocky IV',1985,91,6.8,'https://m.media-amazon.com/images/M/MV5BMTg3ODk5ODE0NV5BMl5BanBnXkFtZTcwNDkzODM1NA@@._V1_SX300.jpg'),(209,'tt0360486','Constantine',2005,121,7.0,'https://m.media-amazon.com/images/M/MV5BMTE5NDk5NTUyN15BMl5BanBnXkFtZTYwNzUyMDA3._V1_SX300.jpg'),(210,'tt0100507','Rocky V',1990,104,5.2,'https://m.media-amazon.com/images/M/MV5BMTM2Mzc4MTYxM15BMl5BanBnXkFtZTcwODY5NTk1NA@@._V1_SX300.jpg'),(211,'tt0114369','Se7en',1995,127,8.6,'https://m.media-amazon.com/images/M/MV5BOTUwODM5MTctZjczMi00OTk4LTg3NWUtNmVhMTAzNTNjYjcyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg'),(212,'tt0479143','Rocky Balboa',2006,102,7.2,'https://m.media-amazon.com/images/M/MV5BNWIyNmQyNjctYmVmMS00MGI4LWIxMmUtNjA0ODYzOTA0Yjk0L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg'),(213,'tt3076658','Creed',2015,133,7.6,'https://m.media-amazon.com/images/M/MV5BODg5NDM1MDI4NF5BMl5BanBnXkFtZTgwMzg0MzQxNzE@._V1_SX300.jpg'),(214,'tt4633694','Spider-Man: Into the Spider-Verse',2018,117,8.6,'https://m.media-amazon.com/images/M/MV5BMjMwNDkxMTgzOF5BMl5BanBnXkFtZTgwNTkwNTQ3NjM@._V1_SX300.jpg'),(215,'tt6343314','Creed II',2018,130,7.5,'https://m.media-amazon.com/images/M/MV5BMTcxMjUwNjQ5N15BMl5BanBnXkFtZTgwNjk4MzI4NjM@._V1_SX300.jpg'),(216,'tt6857988','I Am Not an Easy Man',2018,98,6.4,'https://m.media-amazon.com/images/M/MV5BYzM3OGM1OGUtMzE0Yi00OGM2LWFlNjItMGIwNmE4ODhkY2E2XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg'),(217,'tt1477834','Aquaman',2018,143,7.4,'https://m.media-amazon.com/images/M/MV5BOTk5ODg0OTU5M15BMl5BanBnXkFtZTgwMDQ3MDY3NjM@._V1_SX300.jpg'),(218,'tt7349662','BlacKkKlansman',2018,135,7.5,'https://m.media-amazon.com/images/M/MV5BMjUyOTE1NjI0OF5BMl5BanBnXkFtZTgwMTM4ODQ5NTM@._V1_SX300.jpg'),(219,'tt0082198','Conan the Barbarian',1982,129,6.9,'https://m.media-amazon.com/images/M/MV5BMWIxMzQxZjAtMGFkNC00NzYwLWFiMGEtNzZhZjE5MmFiMmMyL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg'),(220,'tt4123430','Fantastic Beasts: The Crimes of Grindelwald',2018,134,6.7,'https://m.media-amazon.com/images/M/MV5BZjFiMGUzMTAtNDAwMC00ZjRhLTk0OTUtMmJiMzM5ZmVjODQxXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_SX300.jpg'),(221,'tt6823368','Glass',2019,129,7.0,'https://m.media-amazon.com/images/M/MV5BMTY1OTA2MjI5OV5BMl5BanBnXkFtZTgwNzkxMjU4NjM@._V1_SX300.jpg'),(222,'tt1488606','Triple Frontier',2019,125,8.9,'https://m.media-amazon.com/images/M/MV5BODU4MzM2MDAxMl5BMl5BanBnXkFtZTgwNDEzNjM0NzM@._V1_SX300.jpg'),(223,'tt5886046','Escape Room',2019,99,6.4,'https://m.media-amazon.com/images/M/MV5BMjQ2NDMwMTY3MF5BMl5BanBnXkFtZTgwNDg5OTc1NjM@._V1_SX300.jpg'),(224,'tt7489816','Nothing to Hide',2018,90,6.9,'https://m.media-amazon.com/images/M/MV5BZDBkYWJlNmYtMWM2Yy00NzJkLWIyZWItNWJhZTZhNDBkZDc5XkEyXkFqcGdeQXVyNTc5OTMwOTQ@._V1_SX300.jpg'),(225,'tt7315484','The Silence',2019,90,5.4,'https://m.media-amazon.com/images/M/MV5BMmZlOGZkMjMtZDc4Ny00ZTQ1LWFmYTQtOThlY2JjYjg1NGQyXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_SX300.jpg'),(226,'tt4701182','Bumblebee',2018,114,7.0,'https://m.media-amazon.com/images/M/MV5BMjUwNjU5NDMyNF5BMl5BanBnXkFtZTgwNzgxNjM2NzM@._V1_SX300.jpg'),(227,'tt5848272','Ralph Breaks the Internet',2018,112,7.1,'https://m.media-amazon.com/images/M/MV5BMTYyNzEyNDAzOV5BMl5BanBnXkFtZTgwNTk3NDczNjM@._V1_SX300.jpg'),(228,'tt8752474','Justice League vs the Fatal Five',2019,77,6.5,'https://m.media-amazon.com/images/M/MV5BMTk5ODdkYzQtMDFjYS00YjgwLWI2N2EtZmU1MWRmMzFiNzdjXkEyXkFqcGdeQXVyNDQ0MTYzMDA@._V1_SX300.jpg'),(229,'tt4154664','Captain Marvel',2019,123,7.2,'https://m.media-amazon.com/images/M/MV5BMTE0YWFmOTMtYTU2ZS00ZTIxLWE3OTEtYTNiYzBkZjViZThiXkEyXkFqcGdeQXVyODMzMzQ4OTI@._V1_SX300.jpg'),(230,'tt2184339','The Purge',2013,85,5.7,'https://m.media-amazon.com/images/M/MV5BMTQzNTcwODEyM15BMl5BanBnXkFtZTcwMjM1MDI0OQ@@._V1_SX300.jpg'),(231,'tt3503406','The Whole Truth',2016,93,6.2,'https://m.media-amazon.com/images/M/MV5BMzI5MjYzNTEyNF5BMl5BanBnXkFtZTgwNjE5NTgwMDI@._V1_SX300.jpg'),(232,'tt8155288','Happy Death Day 2U',2019,100,6.3,'https://m.media-amazon.com/images/M/MV5BMTg0NzkwMzQyMV5BMl5BanBnXkFtZTgwNDcxMTMyNzM@._V1_SX300.jpg'),(233,'tt4154796','Avengers: Endgame',2019,181,8.9,'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_SX300.jpg'),(234,'tt6966692','Green Book',2018,130,8.3,'https://m.media-amazon.com/images/M/MV5BYzIzYmJlYTYtNGNiYy00N2EwLTk4ZjItMGYyZTJiOTVkM2RlXkEyXkFqcGdeQXVyODY1NDk1NjE@._V1_SX300.jpg'),(235,'tt4160708','Don\'t Breathe',2016,88,7.1,'https://m.media-amazon.com/images/M/MV5BZGI5ZTU2M2YtZWY4MC00ZDFhLTliYTItZTk1NjdlN2NkMzg2XkEyXkFqcGdeQXVyMjY5ODI4NDk@._V1_SX300.jpg'),(236,'tt6857112','Us',2019,116,7.3,'https://m.media-amazon.com/images/M/MV5BZTliNWJhM2YtNDc1MC00YTk1LWE2MGYtZmE4M2Y5ODdlNzQzXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_SX300.jpg'),(237,'tt0448115','Shazam!',2019,132,7.4,'https://m.media-amazon.com/images/M/MV5BYTE0Yjc1NzUtMjFjMC00Y2I3LTg3NGYtNGRlMGJhYThjMTJmXkEyXkFqcGdeQXVyNTI4MzE4MDU@._V1_SX300.jpg'),(238,'tt2267998','Gone Girl',2014,149,8.1,'https://m.media-amazon.com/images/M/MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1_SX300.jpg'),(239,'tt1392170','The Hunger Games',2012,142,7.2,'https://m.media-amazon.com/images/M/MV5BMjA4NDg3NzYxMF5BMl5BanBnXkFtZTcwNTgyNzkyNw@@._V1_SX300.jpg'),(240,'tt4857264','The Invisible Guest',2016,106,8.1,'https://m.media-amazon.com/images/M/MV5BMDk0YzAwYjktMWFiZi00Y2FmLWJmMmMtMzUyZDZmMmU5MjkzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg'),(241,'tt0837563','Pet Sematary',2019,101,6.0,'https://m.media-amazon.com/images/M/MV5BMjUyNjg1ODIwMl5BMl5BanBnXkFtZTgwNjMyOTYzNzM@._V1_SX300.jpg'),(242,'tt1951264','The Hunger Games: Catching Fire',2013,146,7.5,'https://m.media-amazon.com/images/M/MV5BMTAyMjQ3OTAxMzNeQTJeQWpwZ15BbWU4MDU0NzA1MzAx._V1_SX300.jpg'),(243,'tt1951265','The Hunger Games: Mockingjay - Part 1',2014,123,6.6,'https://m.media-amazon.com/images/M/MV5BMTcxNDI2NDAzNl5BMl5BanBnXkFtZTgwODM3MTc2MjE@._V1_SX300.jpg'),(244,'tt2274648','Hellboy',2019,120,5.3,'https://m.media-amazon.com/images/M/MV5BODdkMDQzMzItZDc4YS00OGM4LTkxNTQtNjUzNzU0ZmJkMWY2XkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_SX300.jpg'),(245,'tt8613876','Kidnapping Stella',2019,89,0.0,'https://m.media-amazon.com/images/M/MV5BMzRkOTkxMGItNDZjMi00NmMxLWE3ZmItNTc1OTY0NDlkOTNhXkEyXkFqcGdeQXVyMjA0NjM1Nw@@._V1_SX300.jpg'),(246,'tt1951266','The Hunger Games: Mockingjay - Part 2',2015,137,6.6,'https://m.media-amazon.com/images/M/MV5BNjQzNDI2NTU1Ml5BMl5BanBnXkFtZTgwNTAyMDQ5NjE@._V1_SX300.jpg'),(247,'tt0112442','Bad Boys',1995,119,6.9,'https://m.media-amazon.com/images/M/MV5BMGE1ZTQ0ZTEtZTEwZS00NWE0LTlmMDUtMTE1ZWJiZTYzZTQ2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg'),(248,'tt1502407','Halloween',2018,106,6.6,'https://m.media-amazon.com/images/M/MV5BMmMzNjJhYjUtNzFkZi00MWQ4LWJiMDEtYWM0NTAzNGZjMTI3XkEyXkFqcGdeQXVyOTE2OTMwNDk@._V1_SX300.jpg'),(249,'tt0087078','Conan the Destroyer',1984,103,5.9,'https://m.media-amazon.com/images/M/MV5BNDExOWE2N2YtN2QyMi00ZWI2LWE4MDAtZWJiNjg4MTI3NzI0L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg'),(250,'tt4530422','Overlord',2018,110,6.7,'https://m.media-amazon.com/images/M/MV5BYTUzYmJlNDgtMzM2ZS00N2ZkLWJjY2ItNzM0ZmVjMWU5OTA3XkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_SX300.jpg'),(251,'tt7752126','Brightburn',2019,90,6.3,'https://m.media-amazon.com/images/M/MV5BMjc0YzM2ZjItNzE3OS00NTRhLTkyNTUtMjY5Y2Y5NTU3OWI0XkEyXkFqcGdeQXVyNjU2NTI4MjE@._V1_SX300.jpg'),(252,'tt1389139','When the Bough Breaks',2016,107,5.1,'https://m.media-amazon.com/images/M/MV5BMTc4MTk3Mzk4NV5BMl5BanBnXkFtZTgwMDgzNDUyOTE@._V1_SX300.jpg'),(253,'tt3631112','The Girl on the Train',2016,112,6.5,'https://m.media-amazon.com/images/M/MV5BNzFlMjA0ZmUtZWI0Mi00ZGJkLTlmMmYtZmE1ODZiMjhjMGM0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg'),(254,'tt3741700','Godzilla: King of the Monsters',2019,132,6.5,'https://m.media-amazon.com/images/M/MV5BOGFjYWNkMTMtMTg1ZC00Y2I4LTg0ZTYtN2ZlMzI4MGQwNzg4XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg'),(255,'tt1568346','The Girl with the Dragon Tattoo',2011,158,7.8,'https://m.media-amazon.com/images/M/MV5BMTczNDk4NTQ0OV5BMl5BanBnXkFtZTcwNDAxMDgxNw@@._V1_SX300.jpg'),(256,'tt0421715','The Curious Case of Benjamin Button',2008,166,7.8,'https://m.media-amazon.com/images/M/MV5BNjQ0NTY2ODY2M15BMl5BanBnXkFtZTgwMjE4MzkxMDE@._V1_SX300.jpg'),(257,'tt6146586','John Wick: Chapter 3 - Parabellum',2019,131,7.8,'https://m.media-amazon.com/images/M/MV5BMDg2YzI0ODctYjliMy00NTU0LTkxODYtYTNkNjQwMzVmOTcxXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_SX300.jpg'),(258,'tt6320628','Spider-Man: Far from Home',2019,129,7.9,'https://m.media-amazon.com/images/M/MV5BMGZlNTY1ZWUtYTMzNC00ZjUyLWE0MjQtMTMxN2E3ODYxMWVmXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_SX300.jpg'),(259,'tt8350360','Annabelle Comes Home',2019,106,6.1,'https://m.media-amazon.com/images/M/MV5BYmI4NDNiMmQtZTFkYi00ZDVmLThlYTAtMWJlMjU1M2I2ZmViXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_SX300.jpg'),(260,'tt6565702','Dark Phoenix',2019,113,6.0,'https://m.media-amazon.com/images/M/MV5BMjAwNDgxNTI0M15BMl5BanBnXkFtZTgwNTY4MDI1NzM@._V1_SX300.jpg'),(261,'tt8079248','Yesterday',2019,116,7.0,'https://m.media-amazon.com/images/M/MV5BMjQ0NTI0NjkyN15BMl5BanBnXkFtZTgwNzY0MTE0NzM@._V1_SX300.jpg'),(262,'tt2283336','Men in Black: International',2019,114,5.6,'https://m.media-amazon.com/images/M/MV5BMDZkODI2ZGItYTY5Yi00MTA4LWExY2ItM2ZmNjczYjM0NDg1XkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_SX300.jpg'),(263,'tt2066051','Rocketman',2019,121,7.5,'https://m.media-amazon.com/images/M/MV5BYTJmMzc0YTctYmQzOS00YWJjLTgzMmEtYjE1NzA1N2QyYzE3XkEyXkFqcGdeQXVyNjg3MDMxNzU@._V1_SX300.jpg'),(264,'tt8364368','Crawl',2019,87,6.6,'https://m.media-amazon.com/images/M/MV5BNjQxMzYyMDItZmUyNy00MGE0LWIwYmItMTMxYmZlOGZlMTlhXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_SX300.jpg'),(265,'tt1979376','Toy Story 4',2019,100,8.1,'https://m.media-amazon.com/images/M/MV5BMTYzMDM4NzkxOV5BMl5BanBnXkFtZTgwNzM1Mzg2NzM@._V1_SX300.jpg'),(266,'tt6139732','Aladdin',2019,128,7.1,'https://m.media-amazon.com/images/M/MV5BMjQ2ODIyMjY4MF5BMl5BanBnXkFtZTgwNzY4ODI2NzM@._V1_SX300.jpg'),(267,'tt8752440','Batman: Hush',2019,81,7.0,'https://m.media-amazon.com/images/M/MV5BMjgzMjVlMDgtZjRmYS00OWFlLWFmYTYtYjc1ZjU2MzZjNjRhXkEyXkFqcGdeQXVyNzU3NjUxMzE@._V1_SX300.jpg'),(268,'tt9243946','El Camino: A Breaking Bad Movie',2019,122,0.0,'https://m.media-amazon.com/images/M/MV5BNjk4MzVlM2UtZGM0ZC00M2M1LThkMWEtZjUyN2U2ZTc0NmM5XkEyXkFqcGdeQXVyOTAzMTc2MjA@._V1_SX300.jpg'),(269,'tt6105098','The Lion King',2019,118,7.1,'https://m.media-amazon.com/images/M/MV5BMjIwMjE1Nzc4NV5BMl5BanBnXkFtZTgwNDg4OTA1NzM@._V1_SX300.jpg'),(270,'tt5884052','Pokémon Detective Pikachu',2019,104,6.7,'https://m.media-amazon.com/images/M/MV5BNDU4Mzc3NzE5NV5BMl5BanBnXkFtZTgwMzE1NzI1NzM@._V1_SX300.jpg'),(271,'tt0137523','Fight Club',1999,139,8.8,'https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg'),(272,'tt0453467','Deja Vu',2006,126,7.0,'https://m.media-amazon.com/images/M/MV5BMzEwNTAwNjEwMV5BMl5BanBnXkFtZTYwMzgzMjA3._V1_SX300.jpg'),(273,'tt3387520','Scary Stories to Tell in the Dark',2019,108,6.4,'https://m.media-amazon.com/images/M/MV5BNjNiM2E3NDItNGU5NS00N2UwLTk2YWItZWRmMGFlNjJhYzE3XkEyXkFqcGdeQXVyOTQ5MTIwMjM@._V1_SX300.jpg'),(274,'tt8663516','Child\'s Play',2019,90,5.9,'https://m.media-amazon.com/images/M/MV5BNTNlNjIxNjktOWUyMS00YWY5LWEwZGItMjZmODJlZWNiZGM2XkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_SX300.jpg'),(275,'tt0257044','Road to Perdition',2002,117,7.7,'https://m.media-amazon.com/images/M/MV5BNjcxMmQ0MmItYTkzYy00MmUyLTlhOTQtMmJmNjE3MDMwYjdlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg'),(276,'tt0970416','The Day the Earth Stood Still',2008,104,5.5,'https://m.media-amazon.com/images/M/MV5BMTI5NTg1MzU5Nl5BMl5BanBnXkFtZTcwMDU1ODMwMg@@._V1_SX300.jpg'),(277,'tt7349950','It Chapter Two',2019,169,6.8,'https://m.media-amazon.com/images/M/MV5BYTJlNjlkZTktNjEwOS00NzI5LTlkNDAtZmEwZDFmYmM2MjU2XkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_SX300.jpg'),(278,'tt1025100','Gemini Man',2019,117,5.7,'https://m.media-amazon.com/images/M/MV5BNjI5OTNkMzUtZDYzYy00NWQ5LTg4YzYtZmZjZDI0MGQzNGY2XkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_SX300.jpg'),(279,'tt10548944','Teen Titans Go! Vs. Teen Titans',2019,77,6.8,'https://m.media-amazon.com/images/M/MV5BMGUzZGE1NzEtM2Y5Ni00MmY0LTlkZGQtNGMyZjY0ZmI0OWUwXkEyXkFqcGdeQXVyNjQ4NjY2MzE@._V1_SX300.jpg'),(280,'tt0118884','Contact',1997,150,7.4,'https://m.media-amazon.com/images/M/MV5BYWNkYmFiZjUtYmI3Ni00NzIwLTkxZjktN2ZkMjdhMzlkMDc3XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg'),(281,'tt7131622','Once Upon a Time in Hollywood',2019,161,8.0,'https://m.media-amazon.com/images/M/MV5BOTg4ZTNkZmUtMzNlZi00YmFjLTk1MmUtNWQwNTM0YjcyNTNkXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_SX300.jpg'),(282,'tt9775360','Batman vs Teenage Mutant Ninja Turtles',2019,87,7.1,'https://m.media-amazon.com/images/M/MV5BNzk3MGZlYWQtNDU4Ny00Y2I5LTk2YmItM2QxYjFiMjM0ZmQxXkEyXkFqcGdeQXVyNDUzMTkzMDI@._V1_SX300.jpg'),(283,'tt2935510','Ad Astra',2019,123,7.0,'https://m.media-amazon.com/images/M/MV5BZTllZTdlOGEtZTBmMi00MGQ5LWFjN2MtOGEyZTliNGY1MzFiXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_SX300.jpg'),(284,'tt7653254','Marriage Story',2019,136,8.5,'https://m.media-amazon.com/images/M/MV5BZGVmY2RjNDgtMTc3Yy00YmY0LTgwODItYzBjNWJhNTRlYjdkXkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_SX300.jpg'),(285,'tt7286456','Joker',2019,122,8.7,'https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg'),(286,'tt6189022','Angel Has Fallen',2019,121,6.4,'https://m.media-amazon.com/images/M/MV5BYmRmMWZhZGItYzA4MC00ZDYyLWE0OTMtYmM0MWRiN2Q4NGU2XkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_SX300.jpg'),(287,'tt1560220','Zombieland: Double Tap',2019,99,7.2,'https://m.media-amazon.com/images/M/MV5BYjcwNjZhNGYtOGNlNy00NGI3LTlmODMtMGZlMjA3YjA0Njg0XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_SX300.jpg'),(288,'tt1302006','The Irishman',2019,209,8.2,'https://m.media-amazon.com/images/M/MV5BMGUyM2ZiZmUtMWY0OC00NTQ4LThkOGUtNjY2NjkzMDJiMWMwXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_SX300.jpg'),(289,'tt0814314','Seven Pounds',2008,123,7.6,'https://m.media-amazon.com/images/M/MV5BMTU0NzY0MTY5OF5BMl5BanBnXkFtZTcwODY3MDEwMg@@._V1_SX300.jpg'),(290,'tt6751668','Parasite',2019,132,8.6,'https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_SX300.jpg'),(291,'tt1206885','Rambo: Last Blood',2019,89,6.2,'https://m.media-amazon.com/images/M/MV5BNTAxZWM2OTgtOTQzOC00ZTI5LTgyYjktZTRhYWM4YWQxNWI0XkEyXkFqcGdeQXVyMjMwNDgzNjc@._V1_SX300.jpg'),(292,'tt7867358','Mulheres Alteradas',2018,0,0.0,'https://ia.media-imdb.com/images/M/MV5BYjQyNTI2MGUtN2ZkZC00OGVjLWFlMGYtNTYzZDgzOTBlMTIyXkEyXkFqcGdeQXVyNDY2NDMxNDY@._V1_SX300.jpg'),(293,'tt5727208','Uncut Gems',2019,135,8.0,'https://m.media-amazon.com/images/M/MV5BZDhkMjUyYjItYWVkYi00YTM5LWE4MGEtY2FlMjA3OThlYmZhXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_SX300.jpg'),(294,'tt8404614','The Two Popes',2019,125,7.6,'https://m.media-amazon.com/images/M/MV5BY2RiOTc1YmYtMDk0Yy00ZWI4LTgzN2YtYTg2ZDZmOGIwNTA1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg'),(295,'tt7984734','The Lighthouse',2019,109,7.7,'https://m.media-amazon.com/images/M/MV5BZmE0MGJhNmYtOWNjYi00Njc5LWE2YjEtMWMxZTVmODUwMmMxXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg'),(296,'tt7772580','The Perfection',2018,90,6.1,'https://m.media-amazon.com/images/M/MV5BMTA3NzkzMDUxODBeQTJeQWpwZ15BbWU4MDM0ODc5ODcz._V1_SX300.jpg'),(297,'tt1259521','The Cabin in the Woods',2011,95,7.0,'https://m.media-amazon.com/images/M/MV5BNTUxNzYyMjg2N15BMl5BanBnXkFtZTcwMTExNzExNw@@._V1_SX300.jpg'),(298,'tt6060156','Toc Toc',2017,90,6.7,'https://m.media-amazon.com/images/M/MV5BN2RiNmEwNzMtYjI2ZS00OThjLWI2MmUtMzg0ZDhiZTI0NjFhXkEyXkFqcGdeQXVyMjQ3NzUxOTM@._V1_SX300.jpg'),(299,'tt2980592','The Guest',2014,100,6.7,'https://m.media-amazon.com/images/M/MV5BOTQyODc5MTAwM15BMl5BanBnXkFtZTgwNjMwMjA1MjE@._V1_SX300.jpg'),(300,'tt10611372','Minha Mãe é uma Peça 3: O Filme',2019,111,7.4,'https://m.media-amazon.com/images/M/MV5BMzAxYzQ3Y2MtMzM5Yy00NWUwLTg2M2EtOWY5MmNkNDhlMWNhXkEyXkFqcGdeQXVyMTkzODUwNzk@._V1_SX300.jpg'),(301,'tt8169552','Turma da Mônica: Laços',2019,97,7.3,'https://m.media-amazon.com/images/M/MV5BNWVlMDU4M2UtYWZhNy00ZmE5LWJlYzMtMGYxZWQ5Y2U0ZDUxXkEyXkFqcGdeQXVyNDEyNjEzOTg@._V1_SX300.jpg'),(302,'tt8228288','The Platform',2019,94,7.2,'https://m.media-amazon.com/images/M/MV5BZTZiYzJkNTQtNmQzZS00YWU3LTgwN2MtMmFkZWQ5Y2QxNmYxXkEyXkFqcGdeQXVyNzE5NDMwNjA@._V1_SX300.jpg'),(303,'tt2975578','The Purge: Anarchy',2014,103,6.4,'https://m.media-amazon.com/images/M/MV5BMjE2ODMxMTk1Nl5BMl5BanBnXkFtZTgwMDEzNjEzMTE@._V1_SX300.jpg'),(304,'tt2400463','The Invitation',2015,100,6.6,'https://m.media-amazon.com/images/M/MV5BMTkzODMwNDkzOF5BMl5BanBnXkFtZTgwNDA4NzA1ODE@._V1_SX300.jpg'),(305,'tt1051906','The Invisible Man',2020,124,7.3,'https://m.media-amazon.com/images/M/MV5BZjFhM2I4ZDYtZWMwNC00NTYzLWE3MDgtNjgxYmM3ZWMxYmVmXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg'),(306,'tt8393332','Twin Murders: The Silence of the White City',2019,110,5.2,'https://m.media-amazon.com/images/M/MV5BOGIwMjBkNDctNmRkYi00NTZkLWI4NTctODIyMmFkMGRiOThlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg'),(307,'tt8579674','1917',2019,119,8.3,'https://m.media-amazon.com/images/M/MV5BOTdmNTFjNDEtNzg0My00ZjkxLTg1ZDAtZTdkMDc2ZmFiNWQ1XkEyXkFqcGdeQXVyNTAzNzgwNTg@._V1_SX300.jpg'),(308,'tt9345754','The Occupant',2020,103,6.3,'https://m.media-amazon.com/images/M/MV5BNTEwYzEwNjctNjNkNy00YmJhLWI2YjUtYjk5NTM0NjJlZjZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg'),(309,'tt2584384','Jojo Rabbit',2019,108,7.9,'https://m.media-amazon.com/images/M/MV5BZjU0Yzk2MzEtMjAzYy00MzY0LTg2YmItM2RkNzdkY2ZhN2JkXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_SX300.jpg'),(310,'tt1502397','Bad Boys for Life',2020,124,6.7,'https://m.media-amazon.com/images/M/MV5BMWU0MGYwZWQtMzcwYS00NWVhLTlkZTAtYWVjOTYwZTBhZTBiXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg'),(311,'tt7878846','The Awakener',2018,108,6.5,'https://m.media-amazon.com/images/M/MV5BMGU4YjQyMGQtMzBmNi00NDQ4LTk2MGMtOTYzNDk2NzY2ZDg2XkEyXkFqcGdeQXVyNDIxMjY1NA@@._V1_SX300.jpg'),(312,'tt2762506','Bacurau',2019,131,7.6,'https://m.media-amazon.com/images/M/MV5BYjc1N2M1YjMtYzBiNi00NGFiLThkN2QtY2EwZGU5MDRkODAzXkEyXkFqcGdeQXVyMTkzODUwNzk@._V1_SX300.jpg'),(313,'tt3281548','Little Women',2019,135,7.9,'https://m.media-amazon.com/images/M/MV5BY2QzYTQyYzItMzAwYi00YjZlLThjNTUtNzMyMDdkYzJiNWM4XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg'),(314,'tt7713068','Birds of Prey: And the Fantabulous Emancipation of One Harley Quinn',2020,109,6.2,'https://m.media-amazon.com/images/M/MV5BMzQ3NTQxMjItODBjYi00YzUzLWE1NzQtZTBlY2Y2NjZlNzkyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg');
/*!40000 ALTER TABLE `Filmes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilmesAssistidos`
--

DROP TABLE IF EXISTS `FilmesAssistidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilmesAssistidos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idFilme` int(11) unsigned DEFAULT NULL,
  `idAnoMeta` int(11) unsigned NOT NULL,
  `posAno` int(11) NOT NULL,
  `data` datetime DEFAULT NULL,
  `inedito` int(1) NOT NULL DEFAULT '1',
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_filmes_idx` (`idFilme`),
  KEY `fk_ano_meta_idx` (`idAnoMeta`),
  KEY `FilmesAssistidos_usuario_id_c8417302_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `FilmesAssistidos_usuario_id_c8417302_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `fk_ano_meta` FOREIGN KEY (`idAnoMeta`) REFERENCES `AnoMeta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_filmes` FOREIGN KEY (`idFilme`) REFERENCES `Filmes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilmesAssistidos`
--

LOCK TABLES `FilmesAssistidos` WRITE;
/*!40000 ALTER TABLE `FilmesAssistidos` DISABLE KEYS */;
INSERT INTO `FilmesAssistidos` VALUES (1,1,2,1,'2018-01-04 00:00:00',1,1),(2,2,2,2,'2018-01-05 00:00:00',1,1),(3,3,2,3,'2018-01-05 00:00:00',0,1),(4,4,2,4,'2018-01-08 00:00:00',1,1),(5,5,2,50,'2018-07-06 00:00:00',1,1),(6,6,2,15,'2018-02-03 00:00:00',1,1),(7,7,2,8,'2018-01-10 00:00:00',0,1),(8,8,2,5,'2018-01-08 00:00:00',1,1),(9,9,2,45,'2018-06-09 00:00:00',0,1),(10,10,2,68,'2018-08-11 00:00:00',1,1),(11,11,2,67,'2018-08-10 00:00:00',1,1),(12,12,2,6,'2018-01-09 00:00:00',1,1),(13,13,2,7,'2018-01-09 00:00:00',1,1),(14,14,2,66,'2018-08-08 00:00:00',1,1),(15,15,2,65,'2018-08-06 00:00:00',1,1),(16,16,2,64,'2018-08-04 00:00:00',1,1),(17,17,2,63,'2018-08-03 00:00:00',1,1),(18,18,2,62,'2018-07-30 00:00:00',1,1),(19,19,2,61,'2018-07-30 00:00:00',1,1),(20,20,2,60,'2018-07-30 00:00:00',1,1),(21,21,2,59,'2018-07-21 00:00:00',1,1),(22,22,2,58,'2018-07-17 00:00:00',1,1),(23,23,2,57,'2018-07-16 00:00:00',1,1),(24,24,2,56,'2018-07-15 00:00:00',0,1),(25,25,2,55,'2018-07-14 00:00:00',1,1),(26,26,2,54,'2018-07-14 00:00:00',1,1),(27,27,2,9,'2018-01-11 00:00:00',0,1),(28,28,2,53,'2018-07-13 00:00:00',1,1),(29,29,2,52,'2018-07-08 00:00:00',1,1),(30,30,1,1,'2017-01-03 00:00:00',1,1),(31,31,2,51,'2018-07-08 00:00:00',1,1),(32,32,2,49,'2018-06-30 00:00:00',0,1),(33,33,2,48,'2018-06-23 00:00:00',0,1),(34,34,2,47,'2018-06-09 00:00:00',0,1),(35,35,2,69,'2018-08-24 00:00:00',1,1),(36,36,2,46,'2018-06-09 00:00:00',0,1),(37,36,1,8,'2017-01-09 00:00:00',0,1),(38,37,2,44,'2018-06-02 00:00:00',0,1),(39,38,2,43,'2018-06-02 00:00:00',0,1),(40,39,2,10,'2018-01-11 00:00:00',0,1),(41,40,2,11,'2018-01-12 00:00:00',1,1),(42,41,2,12,'2018-01-25 00:00:00',1,1),(43,42,2,13,'2018-01-27 00:00:00',1,1),(44,43,2,14,'2018-02-03 00:00:00',1,1),(45,44,2,42,'2018-05-29 00:00:00',1,1),(46,45,2,41,'2018-05-26 00:00:00',1,1),(47,46,2,40,'2018-05-19 00:00:00',0,1),(48,47,2,39,'2018-05-12 00:00:00',1,1),(49,48,2,38,'2018-05-05 00:00:00',1,1),(50,49,2,37,'2018-05-05 00:00:00',1,1),(51,50,2,36,'2018-04-29 00:00:00',0,1),(52,51,2,35,'2018-04-29 00:00:00',1,1),(53,52,2,34,'2018-04-28 00:00:00',1,1),(54,53,2,33,'2018-04-22 00:00:00',1,1),(55,54,2,32,'2018-03-28 00:00:00',1,1),(56,55,2,31,'2018-03-24 00:00:00',1,1),(57,56,2,30,'2018-03-23 00:00:00',0,1),(58,57,2,29,'2018-03-22 00:00:00',1,1),(59,58,2,28,'2018-03-16 00:00:00',1,1),(60,59,2,27,'2018-03-10 00:00:00',1,1),(61,60,2,26,'2018-03-07 00:00:00',1,1),(62,61,2,25,'2018-03-07 00:00:00',1,1),(63,62,2,24,'2018-03-02 00:00:00',1,1),(64,63,2,23,'2018-03-01 00:00:00',1,1),(65,64,2,22,'2018-02-22 00:00:00',0,1),(66,65,2,21,'2018-02-14 00:00:00',1,1),(67,66,2,20,'2018-02-13 00:00:00',1,1),(68,67,2,19,'2018-02-12 00:00:00',0,1),(69,68,2,18,'2018-02-11 00:00:00',1,1),(70,69,2,17,'2018-02-10 00:00:00',0,1),(71,70,2,16,'2018-02-05 00:00:00',1,1),(72,71,1,2,'2017-01-04 00:00:00',0,1),(73,72,1,3,'2017-01-04 00:00:00',0,1),(74,73,2,70,'2018-08-28 00:00:00',1,1),(75,74,1,4,'2017-01-05 00:00:00',0,1),(76,76,1,5,'2017-01-06 00:00:00',1,1),(77,77,1,6,'2017-01-07 00:00:00',1,1),(78,78,1,7,'2017-01-09 00:00:00',1,1),(79,79,1,9,'2017-02-10 00:00:00',1,1),(80,80,1,10,'2017-02-11 00:00:00',1,1),(81,81,1,11,'2017-02-17 00:00:00',1,1),(82,82,1,12,'2017-02-18 00:00:00',1,1),(83,83,1,13,'2017-02-26 00:00:00',1,1),(84,84,1,14,'2017-02-28 00:00:00',1,1),(85,85,1,15,'2017-03-03 00:00:00',1,1),(86,86,1,16,'2017-03-04 00:00:00',0,1),(87,87,1,17,'2017-03-11 00:00:00',1,1),(88,88,1,18,'2017-04-01 00:00:00',1,1),(89,89,1,19,'2017-04-07 00:00:00',1,1),(90,90,1,20,'2017-04-08 00:00:00',0,1),(91,91,1,21,'2017-04-10 00:00:00',1,1),(92,92,1,22,'2017-04-10 00:00:00',1,1),(93,93,1,23,'2017-04-13 00:00:00',1,1),(94,94,1,24,'2017-04-15 00:00:00',0,1),(95,95,1,25,'2017-04-17 00:00:00',1,1),(96,96,1,26,'2017-05-07 00:00:00',1,1),(97,97,1,27,'2017-05-20 00:00:00',1,1),(98,98,1,28,'2017-05-27 00:00:00',1,1),(99,99,1,29,'2017-06-30 00:00:00',1,1),(100,99,3,53,'2019-05-29 00:00:00',0,1),(101,100,1,30,'2017-07-01 00:00:00',1,1),(102,101,1,31,'2017-07-14 00:00:00',1,1),(103,102,1,32,'2017-07-15 00:00:00',0,1),(104,103,1,33,'2017-07-22 00:00:00',1,1),(105,104,1,34,'2017-08-04 00:00:00',1,1),(106,105,1,35,'2017-08-05 00:00:00',1,1),(107,106,1,36,'2017-08-19 00:00:00',1,1),(108,107,1,37,'2017-08-25 00:00:00',1,1),(109,108,1,38,'2017-09-06 00:00:00',1,1),(110,109,1,39,'2017-09-10 00:00:00',1,1),(111,110,1,40,'2017-09-11 00:00:00',1,1),(112,111,1,41,'2017-09-13 00:00:00',0,1),(113,112,1,42,'2017-09-16 00:00:00',0,1),(114,113,1,43,'2017-09-16 00:00:00',0,1),(115,114,1,44,'2017-09-18 00:00:00',1,1),(116,115,1,45,'2017-09-23 00:00:00',1,1),(117,116,1,46,'2017-09-23 00:00:00',1,1),(118,117,1,47,'2017-10-06 00:00:00',1,1),(119,118,1,48,'2017-10-13 00:00:00',1,1),(120,119,1,49,'2017-10-13 00:00:00',1,1),(121,120,1,50,'2017-10-13 00:00:00',1,1),(122,121,1,51,'2017-10-14 00:00:00',1,1),(123,122,1,52,'2017-11-12 00:00:00',1,1),(124,123,1,53,'2017-11-18 00:00:00',1,1),(125,124,1,54,'2017-11-27 00:00:00',1,1),(126,124,2,104,'2018-11-17 00:00:00',0,1),(127,125,1,55,'2017-11-28 00:00:00',1,1),(128,126,1,56,'2017-11-28 00:00:00',1,1),(129,127,1,57,'2017-12-23 00:00:00',1,1),(130,128,1,58,'2017-12-24 00:00:00',1,1),(131,129,1,59,'2017-12-26 00:00:00',1,1),(132,130,1,60,'2017-12-27 00:00:00',1,1),(133,131,1,61,'2017-12-28 00:00:00',1,1),(134,132,1,62,'2017-12-28 00:00:00',1,1),(135,133,1,63,'2017-12-28 00:00:00',1,1),(136,134,1,64,'2017-12-28 00:00:00',1,1),(137,135,1,65,'2017-12-29 00:00:00',1,1),(138,136,1,66,'2017-12-29 00:00:00',1,1),(139,138,1,9,'2017-02-10 00:00:00',1,1),(140,139,2,84,'2018-09-27 00:00:00',1,1),(141,140,2,70,'2018-08-28 00:00:00',1,1),(142,141,3,2,'2019-01-03 00:00:00',1,1),(143,142,2,71,'2018-09-01 00:00:00',1,1),(144,143,2,72,'2018-09-02 00:00:00',0,1),(145,144,2,73,'2018-09-03 00:00:00',0,1),(146,145,2,74,'2018-09-04 00:00:00',1,1),(147,146,2,75,'2018-09-05 00:00:00',1,1),(148,147,2,76,'2018-09-06 00:00:00',0,1),(149,148,2,77,'2018-09-07 00:00:00',0,1),(150,149,2,78,'2018-09-07 00:00:00',0,1),(151,150,2,79,'2018-09-08 00:00:00',0,1),(152,151,2,80,'2018-09-09 00:00:00',1,1),(153,152,2,81,'2018-09-15 00:00:00',1,1),(154,153,2,82,'2018-09-15 00:00:00',1,1),(155,154,2,83,'2018-09-26 00:00:00',1,1),(156,155,2,85,'2018-09-29 00:00:00',1,1),(157,156,2,86,'2018-10-01 00:00:00',1,1),(158,157,2,88,'2018-10-02 00:00:00',1,1),(159,158,2,89,'2018-10-03 00:00:00',1,1),(160,159,2,90,'2018-10-04 00:00:00',1,1),(161,160,2,91,'2018-10-07 00:00:00',1,1),(162,161,2,92,'2018-10-09 00:00:00',1,1),(163,162,2,93,'2018-11-10 00:00:00',1,1),(164,163,2,106,'2018-10-19 00:00:00',0,1),(165,164,2,95,'2018-10-20 00:00:00',1,1),(166,165,2,96,'2018-10-20 00:00:00',1,1),(167,166,2,97,'2018-10-28 00:00:00',1,1),(168,167,2,98,'2018-11-02 00:00:00',1,1),(169,168,2,99,'2018-11-03 00:00:00',1,1),(170,169,2,100,'2018-11-14 00:00:00',1,1),(171,170,2,101,'2018-11-16 00:00:00',1,1),(172,171,2,102,'2018-11-16 00:00:00',0,1),(173,172,2,103,'2018-11-16 00:00:00',1,1),(174,173,2,105,'2018-11-21 00:00:00',1,1),(175,174,2,107,'2018-11-22 00:00:00',1,1),(176,175,2,108,'2018-11-23 00:00:00',1,1),(177,176,2,109,'2018-11-25 00:00:00',1,1),(178,177,2,110,'2018-11-27 00:00:00',1,1),(179,178,2,111,'2018-11-28 00:00:00',1,1),(180,179,2,112,'2018-12-01 00:00:00',1,1),(181,180,2,113,'2018-12-08 00:00:00',1,1),(182,181,2,114,'2018-12-09 00:00:00',1,1),(183,182,2,115,'2018-12-24 00:00:00',1,1),(184,183,2,116,'2018-12-29 00:00:00',1,1),(185,184,2,117,'2018-12-30 00:00:00',1,1),(186,185,3,1,'2019-01-02 00:00:00',1,1),(187,186,3,3,'2019-01-04 00:00:00',1,1),(188,187,3,4,'2019-01-06 00:00:00',1,1),(189,188,3,5,'2019-01-07 00:00:00',1,1),(190,189,3,6,'2019-01-07 00:00:00',1,1),(191,190,3,7,'2019-01-08 00:00:00',1,1),(192,191,3,8,'2019-01-09 00:00:00',1,1),(193,192,3,9,'2019-01-09 00:00:00',1,1),(194,193,3,10,'2019-01-15 00:00:00',1,1),(195,194,3,11,'2019-01-10 00:00:00',1,1),(196,195,3,12,'2019-01-14 00:00:00',1,1),(197,196,3,13,'2019-01-15 00:00:00',1,1),(198,197,3,14,'2019-01-16 00:00:00',1,1),(199,198,3,15,'2019-01-17 00:00:00',1,1),(200,199,3,16,'2019-01-19 00:00:00',0,1),(201,200,3,17,'2019-01-20 00:00:00',1,1),(202,201,3,18,'2019-02-26 00:00:00',1,1),(203,202,3,19,'2019-01-27 00:00:00',1,1),(204,203,3,20,'2019-02-02 00:00:00',1,1),(205,204,3,21,'2019-02-05 00:00:00',1,1),(206,205,3,22,'2019-02-05 00:00:00',1,1),(207,206,3,23,'2019-02-06 00:00:00',1,1),(208,207,3,24,'2019-02-07 00:00:00',1,1),(209,208,3,25,'2019-02-09 00:00:00',1,1),(210,209,3,26,'2019-02-09 00:00:00',0,1),(211,210,3,27,'2019-02-10 00:00:00',1,1),(212,211,3,28,'2019-02-24 00:00:00',1,1),(213,212,3,29,'2019-03-01 00:00:00',1,1),(214,213,3,30,'2019-03-06 00:00:00',0,1),(215,214,3,31,'2019-03-13 00:00:00',1,1),(216,215,3,32,'2019-03-14 00:00:00',1,1),(217,216,3,33,'2019-03-16 00:00:00',1,1),(218,217,3,34,'2019-03-17 00:00:00',1,1),(219,218,3,35,'2019-03-22 00:00:00',1,1),(220,219,3,36,'2019-03-23 00:00:00',1,1),(221,220,3,37,'2019-03-29 00:00:00',1,1),(222,221,3,38,'2019-04-04 00:00:00',1,1),(223,222,3,39,'2019-04-05 00:00:00',1,1),(224,223,3,40,'2019-04-12 00:00:00',1,1),(225,224,3,41,'2019-04-13 00:00:00',1,1),(226,225,3,42,'2019-04-14 00:00:00',1,1),(227,226,3,43,'2019-04-26 00:00:00',1,1),(228,227,3,44,'2019-04-27 00:00:00',1,1),(229,228,3,45,'2019-04-28 00:00:00',1,1),(230,229,3,46,'2019-05-03 00:00:00',1,1),(231,230,3,47,'2019-05-05 00:00:00',1,1),(232,231,3,48,'2019-05-05 00:00:00',1,1),(233,232,3,49,'2019-05-06 00:00:00',1,1),(234,233,3,50,'2019-05-11 00:00:00',1,1),(235,234,3,51,'2019-05-24 00:00:00',1,1),(236,235,3,52,'2019-05-25 00:00:00',0,1),(237,236,3,54,'2019-05-31 00:00:00',1,1),(238,237,3,55,'2019-06-28 00:00:00',1,1),(239,238,3,56,'2019-06-29 00:00:00',1,1),(240,239,3,57,'2019-06-30 00:00:00',1,1),(241,240,3,58,'2019-06-30 00:00:00',1,1),(242,241,3,59,'2019-07-12 00:00:00',1,1),(243,242,3,60,'2019-07-13 00:00:00',1,1),(244,243,3,61,'2019-07-14 00:00:00',1,1),(245,244,3,62,'2019-07-19 00:00:00',1,1),(246,245,3,63,'2019-07-27 00:00:00',1,1),(247,246,3,64,'2019-07-27 00:00:00',1,1),(248,247,3,65,'2019-07-28 00:00:00',1,1),(249,248,3,66,'2019-08-02 00:00:00',1,1),(250,249,3,67,'2019-08-03 00:00:00',1,1),(251,250,3,68,'2019-08-09 00:00:00',1,1),(252,251,3,69,'2019-08-16 00:00:00',1,1),(253,252,3,70,'2019-08-17 00:00:00',1,1),(254,253,3,71,'2019-08-18 00:00:00',1,1),(255,254,3,72,'2019-08-18 00:00:00',1,1),(256,255,3,73,'2019-08-24 00:00:00',1,1),(257,256,3,74,'2019-08-25 00:00:00',1,1),(258,257,3,75,'2019-08-31 00:00:00',1,1),(259,258,3,76,'2019-09-15 00:00:00',1,1),(260,259,3,77,'2019-09-17 00:00:00',1,1),(261,260,3,78,'2019-09-19 00:00:00',1,1),(262,261,3,79,'2019-09-22 00:00:00',1,1),(263,262,3,80,'2019-09-26 00:00:00',1,1),(264,263,3,81,'2019-09-27 00:00:00',1,1),(265,264,3,82,'2019-09-28 00:00:00',1,1),(266,265,3,83,'2019-10-03 00:00:00',1,1),(267,266,3,84,'2019-10-04 00:00:00',1,1),(268,267,3,85,'2019-10-07 00:00:00',1,1),(269,268,3,86,'2019-10-11 00:00:00',1,1),(270,269,3,87,'2019-10-18 00:00:00',1,1),(271,270,3,88,'2019-10-20 00:00:00',1,1),(272,271,3,89,'2019-10-25 00:00:00',0,1),(273,272,3,90,'2019-10-26 00:00:00',0,1),(274,273,3,91,'2019-10-27 00:00:00',1,1),(275,274,3,92,'2019-10-31 00:00:00',1,1),(276,275,3,93,'2019-11-08 00:00:00',1,1),(277,276,3,94,'2019-11-17 00:00:00',1,1),(278,277,3,95,'2019-11-21 00:00:00',1,1),(279,278,3,96,'2019-11-22 00:00:00',1,1),(280,279,3,97,'2019-11-23 00:00:00',1,1),(281,280,3,98,'2019-11-28 00:00:00',1,1),(282,281,3,99,'2019-11-29 00:00:00',1,1),(283,282,3,100,'2019-12-01 00:00:00',1,1),(284,283,3,101,'2019-12-05 00:00:00',1,1),(285,284,3,102,'2019-12-14 00:00:00',1,1),(286,285,3,103,'2019-12-17 00:00:00',1,1),(287,286,3,104,'2019-12-22 00:00:00',1,1),(288,287,4,1,'2020-01-04 00:00:00',1,1),(289,288,4,2,'2020-01-05 00:00:00',1,1),(290,289,4,3,'2020-01-11 00:00:00',0,1),(291,290,4,4,'2020-01-21 00:00:00',1,1),(292,291,4,5,'2020-01-31 00:00:00',1,1),(293,292,4,6,'2020-02-04 00:00:00',1,1),(294,293,4,7,'2020-02-07 00:00:00',1,1),(295,294,4,8,'2020-02-21 00:00:00',1,1),(296,295,4,9,'2020-02-26 00:00:00',1,1),(297,296,4,10,'2020-03-01 00:00:00',1,1),(298,297,4,11,'2020-03-01 00:00:00',1,1),(299,298,4,12,'2020-03-05 00:00:00',1,1),(300,299,4,13,'2020-03-15 00:00:00',1,1),(301,300,4,14,'2020-03-20 00:00:00',1,1),(302,301,4,15,'2020-03-21 00:00:00',1,1),(303,302,4,16,'2020-03-22 00:00:00',1,1),(304,303,4,17,'2020-03-23 00:00:00',1,1),(305,304,4,18,'2020-03-24 00:00:00',1,1),(306,305,4,19,'2020-03-25 00:00:00',1,1),(307,306,4,20,'2020-03-25 00:00:00',1,1),(308,307,4,21,'2020-03-27 00:00:00',1,1),(309,308,4,22,'2020-03-28 00:00:00',1,1),(310,309,4,23,'2020-03-30 00:00:00',1,1),(311,310,4,24,'2020-03-31 00:00:00',1,1),(312,311,4,25,'2020-04-07 00:00:00',1,1),(313,312,4,26,'2020-04-08 00:00:00',1,1),(314,313,4,27,'2020-04-09 00:00:00',1,1),(315,314,4,28,'2020-04-10 00:00:00',1,1);
/*!40000 ALTER TABLE `FilmesAssistidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuarios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(150) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (1,'Cayque','cayque','123456','cayque@hotmail');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add anometa',7,'add_anometa'),(26,'Can change anometa',7,'change_anometa'),(27,'Can delete anometa',7,'delete_anometa'),(28,'Can view anometa',7,'view_anometa'),(29,'Can add filmes',8,'add_filmes'),(30,'Can change filmes',8,'change_filmes'),(31,'Can delete filmes',8,'delete_filmes'),(32,'Can view filmes',8,'view_filmes'),(33,'Can add filmesassistidos',9,'add_filmesassistidos'),(34,'Can change filmesassistidos',9,'change_filmesassistidos'),(35,'Can delete filmesassistidos',9,'delete_filmesassistidos'),(36,'Can view filmesassistidos',9,'view_filmesassistidos');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$6GH17th60xJa$0DUPwOEFGe0crL5juNvl3usS2Wm6E4H7rXfBwtl05AM=','2020-05-28 10:49:18.074943',1,'admin','','','cayque_santos16@hotmail.com',1,1,'2020-05-27 10:42:28.537271'),(2,'pbkdf2_sha256$180000$t1Z1Ktf6tXR8$cJFafIm9sTsEt0T1/xcT91X+X7DkvCG2mgkioGGDOZQ=',NULL,0,'cayque','','','',0,1,'2020-05-27 11:09:05.074444');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-05-27 11:09:05.547567','2','cayque',1,'[{\"added\": {}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'api','anometa'),(8,'api','filmes'),(9,'api','filmesassistidos'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-05-27 10:01:52.723872'),(2,'auth','0001_initial','2020-05-27 10:01:55.836439'),(3,'admin','0001_initial','2020-05-27 10:02:06.067687'),(4,'admin','0002_logentry_remove_auto_add','2020-05-27 10:02:08.309085'),(5,'admin','0003_logentry_add_action_flag_choices','2020-05-27 10:02:08.391395'),(6,'contenttypes','0002_remove_content_type_name','2020-05-27 10:02:10.027164'),(7,'auth','0002_alter_permission_name_max_length','2020-05-27 10:02:10.216868'),(8,'auth','0003_alter_user_email_max_length','2020-05-27 10:02:10.428542'),(9,'auth','0004_alter_user_username_opts','2020-05-27 10:02:10.505293'),(10,'auth','0005_alter_user_last_login_null','2020-05-27 10:02:11.730479'),(11,'auth','0006_require_contenttypes_0002','2020-05-27 10:02:11.785415'),(12,'auth','0007_alter_validators_add_error_messages','2020-05-27 10:02:11.863546'),(13,'auth','0008_alter_user_username_max_length','2020-05-27 10:02:12.053264'),(14,'auth','0009_alter_user_last_name_max_length','2020-05-27 10:02:12.242652'),(15,'auth','0010_alter_group_name_max_length','2020-05-27 10:02:12.432301'),(16,'auth','0011_update_proxy_permissions','2020-05-27 10:02:12.514278'),(17,'sessions','0001_initial','2020-05-27 10:02:13.106009'),(18,'api','0001_initial','2020-05-27 10:14:48.520203'),(19,'api','0002_delete_usuarios','2020-05-27 10:30:22.722801'),(20,'api','0003_teste','2020-05-27 10:57:14.100155'),(21,'api','0004_delete_teste','2020-05-27 10:57:15.549926'),(22,'api','0005_auto_20200527_1056','2020-05-27 10:57:15.617127'),(23,'api','0006_auto_20200527_1100','2020-05-27 11:07:21.021362');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('722izlhg3rulii3u2pwo2qqs4apy9eit','ZTQyYmU0MmQzMTg4NjI5ODk0ODk2ZmZkNmEzYzllOTUyYzE1ZmZiMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNDY1MTk4YzYxY2IwODlmMzNmYTlkZmVmNzllOWVlNmQyMTZlN2M5In0=','2020-06-10 11:45:57.689587'),('ybyzu48muvj36ar120zwukcrj9ccb7fq','ZTQyYmU0MmQzMTg4NjI5ODk0ODk2ZmZkNmEzYzllOTUyYzE1ZmZiMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNDY1MTk4YzYxY2IwODlmMzNmYTlkZmVmNzllOWVlNmQyMTZlN2M5In0=','2020-06-10 10:43:02.140601');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-10 10:43:36
