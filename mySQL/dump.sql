-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: vsHacks
-- ------------------------------------------------------
-- Server version       8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) DEFAULT NULL,
  `unit_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  CONSTRAINT `modules_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'Kinematics',1),(2,'Dynamics',1),(3,'Energy',1),(4,'Momentum',1),(5,'Circular Motion',1),(6,'Gravitiation',1),(7,'Simple Harmonic Motion',1);
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problems`
--

DROP TABLE IF EXISTS `problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `problems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `problem_text` text,
  `module_id` int NOT NULL,
  `unit_id` int NOT NULL,
  `right_ans` varchar(255) DEFAULT NULL,
  `wrong_ans_1` varchar(255) DEFAULT NULL,
  `wrong_ans_2` varchar(255) DEFAULT NULL,
  `wrong_ans_3` varchar(255) DEFAULT NULL,
  `wrong_ans_4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`),
  KEY `unit_id` (`unit_id`),
  CONSTRAINT `problems_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`),
  CONSTRAINT `problems_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problems`
--

LOCK TABLES `problems` WRITE;
/*!40000 ALTER TABLE `problems` DISABLE KEYS */;
INSERT INTO `problems` VALUES (1,'An object slides off a roof 10 meters above the ground with an initial horizontal speed of 5 meters per second as shown above. The time between the objects leaving the roof and hitting the ground is most nearly',1,1,'sqrt2 s','1/2 s','1/sqrt2 s','2 s','5 sqrt2 s'),(2,'A body moving in the positive x direction\r\n passes the origin at time t = 0.\r\n Between t = 0 and t = 1 second, the body\r\n has a constant speed of 24 meters\r\n per second. At t = 1 second, the body is given a constant acceleration of 6 meters per second squared in the negative x direction. The position x of the body at t = 11 seconds is',1,1,'36 m','99 m','36 m','75 m','99 m'),(3,'An object released from rest at time t = 0\r\n slides down a frictionless incline a distance of 1 meter during the first second. The distance traveled by the object during the time interval from t = 1 second to t = 2 seconds is',1,1,'3 m','1 m','2 m','4 m','5 m'),(4,'Two people are in a boat that is capable\r\n of a maximum speed of 5 kilometers per hour in still water, and wish to cross a river 1 kilometer wide to a point directly across from their starting point. If the speed of the water in the river is 5 kilometers per hour, how much time is required for the crossing?',1,1,'Cant be reached','0.05 hr','0.1 hr',' 1 hr','10 hr'),(5,'A projectile is fired from the surface of the Earth with a speed of 200 meters per second at an angle of 30┬░ above the horizontal. If the ground is level, what is the maximum height reached by the projectile?',1,1,'500 m','5 m','10 m ','1000 m','2000 m'),(6,'A particle moves along the x-axis with\r\n a non-constant acceleration described by a = 12t, where a is in meters per second squared and t is in seconds. If the particle starts from rest so that its speed v and position x are zero, when t = 0, where is it located when t = 2 seconds? ',1,1,'x = 12 m','x = 16 m','x = 24 m','x = 32m','x = 48 m'),(7,'An object moving in a straight line has a\r\n velocity v in meters per second that varies with time t in seconds according to the following function: v = 4 + 0.5 t^2. The instantaneous acceleration of the object at t = 2 seconds is',1,1,'2 m/s^2','4 m/s^2','5 m/s^2','6 m/s^2','8 m/s^2 '),(8,'An object moving in a straight line has a\r\n velocity v in meters per second that varies with time t in seconds according to the following function: v = 4 + 0.5 t^2. The displacement of the object between t = 0 and t = 6 seconds is',1,1,'28m','22m','40m','42m','60m'),(9,'A rock is dropped from the top of a\r\n 45-meter tower, and at the same time a ball is thrown from the top of the tower in a horizontal direction. Air resistance is negligible. The ball and the rock hit the level ground a distance of 30 meters apart. The horizontal velocity of the ball thrown was most nearly',1,1,'10m/s','5m/s','14.1m/s','20m/s','28.3m/s'),(10,'In the absence of air friction, an object\r\n dropped near the surface of the Earth experiences a constant acceleration of about 9.8 m/s2. This means that the',1,1,'speed of the object increases \r\n9.8 m/s during each second','speed of the object as it falls is 9.8 m/s','object falls 9.8 meters during each second','object falls 9.8 meters during the\r\n first second only','derivative of the distance with respect\r\n to time for the object equals 9.8 m/s2'),(11,'A 500-kilogram sports car accelerates \r\nuniformly from rest, reaching a speed of 30 meters per second in 6 seconds. During the 6 seconds, the car has traveled a distance of',1,1,'90m','15m','30m','60m','180m'),(12,'An object is dropped from rest from the\r\n top of a 400 m cliff on Earth. If air resistance is negligible, what is the distance the object travels during the first 6 s of its fall?',1,1,'180m','30m','60m','120m','360m'),(13,'The position of an object is given by the\r\n equation x = 3.0 t^2 + 1.5 t + 4.5, where x is in meters and t is in seconds. What is the instantaneous acceleration of the object at t = 3.0 s?',1,1,'6.0 m/s^2','3.0 m/s^2','9.0 m/s^2','19.5 m/s^2','36 m/s^2'),(14,'A particle of mass m moves along a\r\n straight path with a speed v defined by the function v = bt^2 + c, where b and c are constants and t is time. What is the magnitude F of the net force on the particle at time t = t1?',2,1,'2mbt1','bt1^2 + c','3mbt1 + 2c','mbt1','mbt1 + c'),(15,'If F1 is the magnitude of the force exerted\r\n by the Earth on a satellite in orbit about the Earth and F2 is the magnitude of the force exerted by the satellite on the Earth, then which of the following is true?',2,1,'F1 is equal to F2.','F1 is much greater than F2.','F1 is slightly greater than F2','F2 is slightly greater than F1','F2 is much greater than F1'),(16,'Two 0.60-kilogram objects are connected\r\n by a thread that passes over a light, frictionless pulley. The objects are initially held at rest. If a third object with a mass of 0.30 kilogram is added on top of one of the 0.60-kilogram objects as shown and the objects are released, the magnitude of the acceleration of the 0.30-kilogram object is most nearly',2,1,'2.0 m/s2','10.0 m/s2','6.0 m/s2','3.0 m/s2','1.0 m/s2'),(17,'A block of mass 5 kilograms lies on an\r\n inclined plane, as shown above. The horizontal and vertical supports for the plane have lengths of 4 meters and 3 meters, respectively. The coefficient of friction between the plane and the block is 0.3. The magnitude of the force F necessary to pull the block up the plane with constant speed is most nearly',2,1,'42N','30N','49N','50N','58N'),(18,'The position of a toy locomotive moving\r\n on a straight track along the x-axis is given by the equation x = t^3 - 6t^2 + 9t, where x is in meters and t is in seconds. The net force on the locomotive is equal to zero when t is equal to',2,1,'2s','zero','3s','4s','5s'),(19,'A block of mass m is accelerated across\r\n a rough surface by a force of magnitude F that is exerted at an angle ╧å with the horizontal, as shown above. The frictional force on the block exerted by the surface has magnitude f. What is the acceleration of the block?',2,1,'(F cos╧å - f)/m','F/m','(F cos╧å)/m','(F - f)/m','(F sin╧å - mg)/m'),(20,'A block of mass m is accelerated across a \r\nrough surface by a force of magnitude F that is exerted at an angle ╧å with the horizontal, as shown above. The frictional force on the block exerted by the surface has magnitude f. What is the coefficient of friction between the block and the surface?',2,1,'f/(mg-F sin╧å)','f/mg','mg/f','(mg - F cos╧å)/f','f/(mg-F cos╧å)'),(21,'An object is released from rest at time t = 0 and falls through the air, which exerts a resistive force such that the acceleration a of the object is given by a = g - bv, where v is the objects speed and b is a constant. If limiting cases for large and small values of t are considered, which of the following is a possible expression for the speed of the object as an explicit function of time?',2,1,'v = g(1 - e^-bt)/b','v = (ge^bt)/b','v = gt bt^2','v = (g + a)t/b','v = v0+ gt, v0 Γëá 0'),(22,'A horizontal force F pushes a block of\r\n mass m against a vertical wall. The coefficient of friction between the block and the wall is ┬╡. What value of F is necessary to keep the block from slipping down the wall?',2,1,'mg/┬╡','mg','┬╡mg','mg(1 - ┬╡)','mg(1 + ┬╡)'),(23,'A dart gun is used to fire two rubber darts\r\n with different but unknown masses, M1 and M2. The gun exerts the same constant force on each dart, but its magnitude F is unknown. The magnitudes of the accelerations of both darts, a1 and a2, respectively, are measured. Which of the following can be determined from these data?',2,1,'The ratio of M1 and M2 only','F only','M1 and M2 only','F and the ratio of M1 and M2 only','F, M1 and M2'),(24,'An object of mass m moves with\r\n acceleration a down a frictionless incline that makes an angle with the horizontal. If ╬¥ is the normal force exerted by the plane on the block, which of the following is correct?',2,1,'a = g sin╬╕','╬¥ = mg','╬¥ = ma','a = mg sin╬╕','a = mg cos╬╕'),(25,'A skier slides at constant speed down\r\n a slope inclined at an angle ╧å to the horizontal. If air resistance is negligible, the coefficient of friction ┬╡ between the skis and the snow is equal to',2,1,'tan╧å','1/tan ╧ò','1/cos ╧ò','sin╧å','cos╧å'),(26,'A 5 kg object is propelled from rest at \r\ntime t = 0 by a net force F that always acts in the same direction. The magnitude of F in newtons is given as a function of t in seconds by F = 0.5 t. What is the speed of the object at t = 4 s?',2,1,'0.8 m/s','0.5 m/s','2.0 m/s','4.0 m/s','8.0 m/s'),(27,'An object of mass m is lifted at constant\r\n velocity a vertical distance H in time T. The power supplied by the lifting force is',3,1,'mgH/T','mgHT','mg/HT','mgT/H','zero'),(28,'A system consists of two objects having\r\n masses ml and m2 (ml < m2). The objects are connected by a massless string, hung over a pulley, and then released. When the object of mass m2 has descended a distance h, the potential energy of the system has decreased by',3,1,'(m2 - ml)gh','m2gh','(m1 + m2)gh','┬╜ (ml + m2)gh','0'),(29,'A person pushes a box across a horizontal\r\n surface at a constant speed of 0.5 meter per second. The box has a mass of 40 kilograms, and the coefficient of sliding friction is 0.25. The power supplied to the box by the person is (A)',3,1,'50 W','0.2 W','5 W','100 W','200 W'),(30,'If a particle moves in such a way that\r\n its position x is described as a function of time t by x = t^3/2, then its kinetic energy is proportional to',3,1,'t','t^2','t^3/2','t^1/2','t^0 (kinetic energy is constant)'),(31,'From the top of a 70-meter-high building,\r\n a l-kilogram ball is thrown directly downward with an initial speed of 10 meters per second. If the ball reaches the ground with a speed of 30 meters per second, the energy lost to friction is most nearly',3,1,'300J','0J','100J','400J','700J'),(32,'A rock is lifted for a certain time by a force F that is greater in magnitude than the rocks weight W. The change in kinetic energy of the rock during this time is equal to the',3,1,'work done by the net force (F - W)','work done by F alone','work done by W alone','difference in the momentum of the rock before and after this time','difference in the potential energy of the rock before and after this time.'),(33,'A 10-kilogram body is constrained to move along the x-axis. The potential energy U of the body in joules is given as a function of its position x in meters by U(x) = 6x^2 4x + 3. The force on the particle at x = 3 meters is',3,1,'32N in -x direction','32 N in +x direction','45 N in +x direction','45 N in -x direction','98 N in +x direction'),(34,'A ball is thrown upward. At a height of 10\r\n meters above the ground, the ball has a potential energy of 50 joules (with the potential energy equal to zero at ground level) and is moving upward with a kinetic energy of 50 joules. Air friction is negligible. The maximum height reached by the ball is most nearly',3,1,'20m','10m','30m','40m','50m'),(35,'During a certain time interval, a constant\r\n force delivers an average power of 4 watts to an object. If the object has an average speed of 2 meters per second and the force acts in the direction of motion of the object, the magnitude of the force is',3,1,'2N','16N','8N','6N','4N'),(36,'A weight lifter lifts a mass m at constant\r\n speed to a height h in time t. How much work is done by the weight lifter?',3,1,'mgh/t','mg','mh','mgh','mght'),(37,'When an object is moved from rest at\r\n point A to rest at point B in a gravitational field, the net work done by the field depends on the mass of the object and',3,1,'the positions of A and B only','the path taken between A and B only','both the positions of A and B and the path taken between them','the velocity of the object as it moves between A and B','the nature of the external force moving the object from A to B'),(38,'A frictionless pendulum of length 3 m\r\n swings with an amplitude of 10┬░. At its maximum displacement, the potential energy of the pendulum is 10 J. What is the kinetic energy of the pendulum when its potential energy is 5J?',3,1,'5J','3.3J','6.7J','10J','15J'),(39,'To stretch a certain nonlinear spring by an\r\n amount x requires a force F given by F = 40x - 6x^2, where F is in newtons and x is in meters. What is the change in potential energy when the spring is stretched 2 meters from its equilibrium position?',3,1,'64J','16J','28J','56J','80J'),(40,'A system consists of two objects having\r\n masses ml and m2 (ml < m2). The objects are connected by a massless string, hung over a pulley as shown above, and then released. When the speed of each object is v, the magnitude of the total linear momentum of the system is',4,1,'(m2 - m1)v','(m1 + m2)v','┬╜(ml + m2)v','┬╜(m2 - m1)v','m2v'),(41,'Mass M1 is moving with speed v toward\r\n stationary mass M2. The speed of the center of mass of the system is',4,1,'( M1 / (M1 + M2))','M1v / M2','((1 + M1)/M2 ) v','((1 + M2)/M1 ) v','((1 - M1)/M2 ) v'),(42,'A 4-kilogram mass has a speed of 6\r\n meters per second on a horizontal frictionless surface. The mass collides head-on and elastically with an identical 4-kilogram mass initially at rest. The second 4-kilogram mass then collides head-on and sticks to a third 4-kilogram mass initially at rest. The final speed of the first 4-kilogram mass is',4,1,'0 m/s','2 m/s','3 m/s','4 m/s','6 m/s'),(43,'A 4-kilogram mass has a speed of 6\r\n meters per second on a horizontal frictionless surface. The mass collides head-on and elastically with an identical 4-kilogram mass initially at rest. The second 4-kilogram mass then collides head-on and sticks to a third 4-kilogram mass initially at rest. The final speed of the two 4-kilogram masses that stick together is ',4,1,'3 m/2','0 m/s','2 m/s','4 m/s','6 m/s'),(44,'A balloon of mass M is floating motionless in the air. A person of mass less than M is on a rope ladder hanging from the balloon. The person begins to climb the ladder at a uniform speed v relative to the ground. How does the balloon move relative to the ground?',4,1,'Down with a speed less than v','Up with speed v','Up with a speed less than v','Down with speed v','The balloon does not move.'),(45,'If one knows only the constant resultant\r\n force acting on an object and the time during which this force acts, one can determine the',4,1,'change in momentum of the object','change in velocity of the object','change in kinetic energy of the object','mass of the object','acceleration of the object'),(46,'An object of mass m is moving with speed\r\n v0 to the right on a horizontal frictionless surface when it explodes into two pieces. Subsequently, one piece of mass 2/5 m moves with a speed v0/2 to the left. The speed of the other piece of the object is',4,1,'2 v0','v0/2','v0/3','7 v0/5','3 v0/2'),(47,'A disc of mass m is moving horizontally\r\n to the right with speed v on a table with negligible friction when it collides with a second disc of mass 2m. The second disc is moving horizontally to the right with speed v/2 at the moment of impact. The two discs stick together upon impact. The speed of the composite body immediately after the collision is',4,1,'2v/3','v/3','v/2','3v/2','2v'),(48,'Two people are initially standing still on\r\n frictionless ice. They push on each other so that one person, of mass 120 kg, moves to the left at 2 m/s, while the other person, of mass 80 kg, moves to the right at 3 m/s. What is\r\nthe velocity of their center of mass?',4,1,'Zero','0.5 m/s to the left','1 m/s to the right','2.4 m/s to the left','2.5 m/s to the right'),(49,'The momentum p of a moving object as\r\n a function of time t is given by the expression p = kt^3, where k is a constant. The force causing this motion is given by the expression',4,1,'3kt^2','3kt^2 /2','kt^2 /3','kt^4','kt^4 /4'),(50,'A person holds a portable fire extinguisher that ejects 1.0 kg of water per second horizontally at a speed of 6.0 m/s. What horizontal force in newtons must the person exert on the extinguisher in order to prevent it from accelerating?',4,1,'6N','0N','10N','18N','36N'),(51,'Objects 1 and 2 have the same momentum. Object 1 can have more kinetic energy than object 2 if, compared with object 2, it',4,1,'is moving faster','has more mass','has the same mass','is moving at the same speed','is moving slower'),(52,'A 5 kg object is propelled from rest at\r\n time t =0 by a net force F that always acts in the same direction. The magnitude of F in newtons is given as a function of t in seconds by F = 0.5t. What is the speed of the object at t = 4 s?',4,1,'0.8 m/s','0.5 m/s','2.0 m/s','4.0 m/s','8.0 m/s'),(53,'A racing car is moving around a circular\r\n track of radius 300 meters. At the instant when the cars velocity is directed due east, its acceleration is directed due south and has a magnitude of 3 meters per second squared. When viewed from above, the car is moving',5,1,'clockwise at 30 m/s','clockwise at 10 m/ s','counterclockwise at 30 m/s','counterclockwise at 10 m/s','with constant velocity'),(54,'A racing car is moving around a circular\r\n track of radius 400 meters. At the instant when the cars velocity is directed due east, its acceleration is directed due south and has a magnitude of 4 meters per second squared. When viewed from above, the car is moving',5,1,'clockwise at 40 m/s','clockwise at 10 m/ s','counterclockwise at 30 m/s','counterclockwise at 10 m/s','with constant velocity'),(55,'A racing car is moving around a circular\r\n track of radius 200 meters. At the instant when the cars velocity is directed due east, its acceleration is directed due south and has a magnitude of 2 meters per second squared. When viewed from above, the car is moving',5,1,'clockwise at 20 m/s','clockwise at 10 m/ s','counterclockwise at 30 m/s','counterclockwise at 10 m/s','with constant velocity'),(56,'A racing car is moving around a circular\r\n track of radius 600 meters. At the instant when the cars velocity is directed due east, its acceleration is directed due south and has a magnitude of 6 meters per second squared. When viewed from above, the car is moving',5,1,'clockwise at 60 m/s','clockwise at 10 m/ s','counterclockwise at 30 m/s','counterclockwise at 10 m/s','with constant velocity'),(57,'A racing car is moving around a circular\r\n track of radius 700 meters. At the instant when the cars velocity is directed due east, its acceleration is directed due south and has a magnitude of 7 meters per second squared. When viewed from above, the car is moving',5,1,'clockwise at 70 m/s','clockwise at 10 m/ s','counterclockwise at 30 m/s','counterclockwise at 10 m/s','with constant velocity'),(58,'A racing car is moving around a circular\r\n track of radius 800 meters. At the instant when the cars velocity is directed due east, its acceleration is directed due south and has a magnitude of 8 meters per second squared. When viewed from above, the car is moving',5,1,'clockwise at 80 m/s','clockwise at 10 m/ s','counterclockwise at 30 m/s','counterclockwise at 10 m/s','with constant velocity'),(59,'A racing car is moving around a circular\r\n track of radius 900 meters. At the instant when the cars velocity is directed due east, its acceleration is directed due south and has a magnitude of 9 meters per second squared. When viewed from above, the car is moving',5,1,'clockwise at 90 m/s','clockwise at 10 m/ s','counterclockwise at 30 m/s','counterclockwise at 10 m/s','with constant velocity'),(60,'A spring has a force constant of 100 N/m\r\n and an unstretched length of 0.07 m. One end is attached to a post that is free to rotate in the center of a smooth table. The other end is attached to a 1 kg disc moving in uniform circular motion on the table, which stretches the spring by 0.03 m. Friction is negligible. What is the centripetal force on the disc?',5,1,'3N','0.3N','10N','300N','1000N'),(61,'A spring has a force constant of 100 N/m\r\n and an unstretched length of 0.07 m. One end is attached to a post that is free to rotate in the center of a smooth table. The other end is attached to a 1 kg disc moving in uniform circular motion on the table, which stretches the spring by 0.03 m. Friction is negligible. What is the centripetal force on the disc?',5,1,'0J','94J','186J','314J','628J'),(62,'One end of a string is fixed. An object\r\n attached to the other end moves on a horizontal plane with uniform circular motion of radius R and frequency f. The tension in the string is Fs. If both the radius and frequency are doubled, the tension is',5,1,'8Fs','Fs/4','Fs/2','2Fs','4Fs'),(63,'A racing car is moving around a circular\r\n track of radius 1000 meters. At the instant when the cars velocity is directed due east, its acceleration is directed due south and has a magnitude of 10 meters per second squared. When viewed from above, the car is moving',5,1,'clockwise at 100 m/s','clockwise at 10 m/ s','counterclockwise at 30 m/s','counterclockwise at 10 m/s','with constant velocity'),(64,'A racing car is moving around a circular\r\n track of radius 1100 meters. At the instant when the cars velocity is directed due east, its acceleration is directed due south and has a magnitude of 11 meters per second squared. When viewed from above, the car is moving',5,1,'clockwise at 110 m/s','clockwise at 10 m/ s','counterclockwise at 30 m/s','counterclockwise at 10 m/s','with constant velocity'),(65,'A racing car is moving around a circular\r\n track of radius 1200 meters. At the instant when the cars velocity is directed due east, its acceleration is directed due south and has a magnitude of 12 meters per second squared. When viewed from above, the car is moving',5,1,'clockwise at 120 m/s','clockwise at 10 m/ s','counterclockwise at 30 m/s','counterclockwise at 10 m/s','with constant velocity'),(66,'The mass of Planet X is one-tenth that of\r\n the Earth, and its diameter is one-half that of the Earth. The acceleration due to gravity at the surface of Planet X is most nearly',6,1,'4 m/s2','2 m/s','5 m/s','7 m/s','10 m/s'),(67,'A newly discovered planet, \"Cosmo,\" \r\nhas a mass that is 4 times the mass of the Earth. The radius of the Earth is Re. The gravitational field strength at the surface of Cosmo is equal to that at the surface of the Earth if the radius of Cosmo is equal to',6,1,'2Re','Re/2','2Re','sqrt Re','Re^2'),(68,'The radius of the Earth is approximately\r\n 6,000 kilometers. The acceleration of an astronaut in a perfectly circular orbit 300 kilometers above the Earth would be most nearly',6,1,'9 m/s2','0 m/s2','0.05 m/s2','5 m/s2','11 m/s2'),(69,'A satellite moves in a stable circular orbit\r\n with speed v0 at a distance R from the center of a planet. For this satellite to move in a stable circular orbit a distance 2R from the center of the planet, the speed of the satellite must be',6,1,'v0 / sqrt2','v0/2','v0','sqrt 2v0','2v0'),(70,'A newly discovered planet has twice the\r\n mass of the Earth, but the acceleration due to gravity on the new planets surface is exactly the same as the acceleration due to gravity on the Earths surface. The radius of the new planet in terms of the radius R of Earth is',6,1,'sqrt2 R','R/2','R sqrt2 / 2','2R','4R'),(71,'A ball is tossed straight up from the\r\n surface of a small, spherical asteroid with no atmosphere. The ball rises to a height equal to the asteroids radius and then falls straight down toward the surface of the asteroid. What forces, if any, act on the ball while it is on the way up?',6,1,'Only a decreasing gravitational force that acts downward','Only an increasing gravitational force that acts downward','Only a constant gravitational force that acts downward','Both a constant gravitational force that acts downward and a decreasing force that acts upward','No forces act on the ball.'),(72,'A ball is tossed straight up from the\r\n surface of a small, spherical asteroid with no atmosphere. The ball rises to a height equal to the asteroids radius and then falls straight down toward the surface of the asteroid. The acceleration of the ball at the top of its path is',6,1,'equal to one-fourth the acceleration at the surface of the asteroid','at its maximum value for the balls flight','equal to the acceleration at the surface of the asteroid','equal to one-half the acceleration at the surface of the asteroid','zero'),(73,'Two identical stars, a fixed distance D \r\napart, revolve in a circle about their mutual center of mass, as shown above. Each star has mass M and speed v. G is the universal gravitational constant. Which of the following is a correct relationship among these quantities?',6,1,'v^2 = GM/2D','v^2 = GM/D','v^2 = GM/D^2','v^2 = MGD','v^2 = 2GM^2/D'),(74,'The escape speed for a rocket at Earths \r\nsurface is ve. What would be the rockets escape speed from the surface of a planet with twice Earths mass and the same radius as Earth?',6,1,'sqrt2 ve','2ve','ve','ve / sqrt2','ve/2'),(75,'A student is asked to determine the mass\r\n of Jupiter. Knowing which of the following about Jupiter and one of its moons will allow the determination to be made? \r\nI. The time it takes for Jupiter to orbit the Sun\r\n II. The time it takes for the moon to orbit Jupiter\r\n III. The average distance between the moon and Jupiter',6,1,'II and III','I only','II only','III only','I and II'),(76,'A student is asked to determine the mass\r\n of Mars. Knowing which of the following about Mars and one of its moons will allow the determination to be made? \r\nI. The time it takes for Mars to orbit the Sun\r\n II. The time it takes for the moon to orbit Mars\r\n III. The average distance between the moon and Mars',6,1,'II and III','I only','II only','III only','I and II'),(77,'A student is asked to determine the mass\r\n of Saturn. Knowing which of the following about Saturn and one of its moons will allow the determination to be made? \r\nI. The time it takes for Saturn to orbit the Sun\r\n II. The time it takes for the moon to orbit Saturn\r\n III. The average distance between the moon and Saturn',6,1,'II and III','I only','II only','III only','I and II'),(78,'A student is asked to determine the mass\r\n of Uranus. Knowing which of the following about Uranus and one of its moons will allow the determination to be made? \r\nI. The time it takes for Uranus to orbit the Sun\r\n II. The time it takes for the moon to orbit Uranus\r\n III. The average distance between the moon and Uranus',6,1,'II and III','I only','II only','III only','I and II'),(79,'A simple pendulum of length l. whose\r\n bob has mass m, oscillates with a period T. If the bob is replaced by one of mass 4m, the period of oscillation is',7,1,'T','1/4 T','1/2 T','2T','4T'),(80,'Which of the following is true for a system consisting of a mass oscillating on the end of an ideal spring?',7,1,'The maximum kinetic energy and maximum potential energy are equal, but occur at different times','The kinetic and potential energies are equal at all times.','The kinetic and potential energies are both constant.','The maximum potential energy is achieved when the mass passes through its equilibrium position.','The maximum kinetic energy occurs at maximum displacement of the mass from its equilibrium position.'),(81,'A 0. l-kilogram block is attached to an\r\n initially unstretched spring of force constant k = 40 newtons per meter. The block is released from rest at time t = 0. What is the amplitude of the resulting simple harmonic motion of the block?',7,1,'1/40 m','1/20 m','1/4 m','1/2 m','1 m'),(82,'A 0. l-kilogram block is attached to an\r\n initially unstretched spring of force constant k = 40 newtons per meter. The block is released from rest at time t = 0. At what time after release will the block first return to its initial position?',7,1,'pi/10 s','pi/40 s','pi/20 s','pi/5 s','pi/4 s'),(83,'A ball is dropped from a height of 10\r\n meters onto a hard surface so that the collision at the surface may be assumed elastic. Under such conditions the motion of the ball is',7,1,'periodic with a period of about 2.8 s but not simple harmonic','simple harmonic with a period of about 1.4 s','simple harmonic with a period of about 2.8 s','simple harmonic with an amplitude of 5 m','motion with constant momentum'),(84,'A particle moves in a circle in such a way\r\n that the x- and y-coordinates of its motion are given in meters as functions of time t in seconds by: x = 5cos(3t) and y = 5sin(3t). What is the period of revolution of the particle?',7,1,'2pi/3 s','1/3 s','3s','3pi/2 s','6pi s'),(85,'A particle moves in a circle in such a way\r\n that the x- and y-coordinates of its motion are given in meters as functions of time t in seconds by: x = 5cos(3t) and y = 5sin(3t). Which of the following is true of the speed of the particle?',7,1,'It is always equal to 15 m/s.','It is always equal to 5 m/s','It oscillates between 0 and 5 m/s','It oscillates between 0 and 15 m/s.','It oscillates between 5 and 15 m/s.'),(86,'Two objects of equal mass hang from\r\n independent springs of unequal spring constant and oscillate up and down. The spring of greater spring constant must have the',7,1,'shorter period of oscillation','smaller amplitude of oscillation','larger amplitude of oscillation','longer period of oscillation','lower frequency of oscillation'),(87,'Two identical massless springs are hung\r\n from a horizontal support. A block of mass 1.2 kilograms is suspended from the pair of springs. When the block is in equilibrium, each spring is stretched an additional 0.15 meter. The force constant of each spring is most nearly',7,1,'40 N/m','48 N/m','60 N/m ','80 N/m','96 N/m'),(88,'A simple pendulum consists of a\r\n l.0-kilogram brass bob on a string about 1.0 meter long. It has a period of 2.0 seconds. The pendulum would have a period of 1.0 second if the',7,1,'string were replaced by one about 0.25 meter long','string were replaced by one about 2.0 meters long','bob were replaced by a 0.25kg brass sphere','bob were replaced by a 4.0kg brass sphere','amplitude of the motion were increased'),(89,'The equation of motion of a simple\r\n harmonic oscillator is d^2x/dt^2 = 9x, where x is displacement and t is time. The period of oscillation is',7,1,'2pi/3  ','6pi','9/2pi','3/2pi','2pi/9'),(90,'A pendulum with a period of 1 s on Earth,\r\n where the acceleration due to gravity is g, is taken to another planet, where its period is 2 s. The acceleration due to gravity on the other planet is most nearly',7,1,'g/4','g/2','g','2g','4g'),(91,'A particle moves in the xy-plane with\r\n coordinates given by x = A cos╧ët and y = A sin╧ët, where A = 1.5 meters and ╧ë = 2.0 radians per second. What is the magnitude of the particles acceleration?',7,1,'6.0 m/s^2','zero','1.3 m/s^2','3.0 m/s^2','4.5 m/s^2');
/*!40000 ALTER TABLE `problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `steps`
--

DROP TABLE IF EXISTS `steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `steps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `step_text` text NOT NULL,
  `problem_id` int NOT NULL,
  `correct_ans` varchar(255) DEFAULT NULL,
  `wrong_ans_1` varchar(255) DEFAULT NULL,
  `wrong_ans_2` varchar(255) DEFAULT NULL,
  `wrong_ans_3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `problem_id` (`problem_id`),
  CONSTRAINT `steps_ibfk_1` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `steps`
--

LOCK TABLES `steps` WRITE;
/*!40000 ALTER TABLE `steps` DISABLE KEYS */;
/*!40000 ALTER TABLE `steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_name`
--

DROP TABLE IF EXISTS `table_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_name` (
  `Problems` varchar(100) DEFAULT NULL,
  `module_id` int DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `correct_ans` varchar(100) DEFAULT NULL,
  `wrong_ans_1` varchar(100) DEFAULT NULL,
  `wrong_ans_2` varchar(100) DEFAULT NULL,
  `wrong_ans_3` varchar(100) DEFAULT NULL,
  `wrong_ans_4` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_name`
--

LOCK TABLES `table_name` WRITE;
/*!40000 ALTER TABLE `table_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `u1scores`
--

DROP TABLE IF EXISTS `u1scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `u1scores` (
  `m1` float DEFAULT NULL,
  `m2` float DEFAULT NULL,
  `m3` float DEFAULT NULL,
  `m4` float DEFAULT NULL,
  `m5` float DEFAULT NULL,
  `m6` float DEFAULT NULL,
  `m7` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `u1scores`
--

LOCK TABLES `u1scores` WRITE;
/*!40000 ALTER TABLE `u1scores` DISABLE KEYS */;
INSERT INTO `u1scores` VALUES (0.1,0.1,0.1,0.1,0.1,0.1,0.1);
/*!40000 ALTER TABLE `u1scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `units` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(255) NOT NULL,
  `unit_description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unit_name` (`unit_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,'Linear Systems of Equations','This unit covers topics related to understanding and graphing linear equations, solving linear equations, understanding and graphing linear systems,  and solving linear systems.');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-28 21:12:17
