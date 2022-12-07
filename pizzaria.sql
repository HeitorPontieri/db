-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: db_pizzaria
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('20a79d19-135c-490a-a3d4-2af3befe7519','a6102d461d40500868163b0b6a1162098fa2869ecf69f1124ab2c0caa0c88f1b','2022-11-24 13:39:02.946','20221124133902_migration',NULL,NULL,'2022-11-24 13:39:02.936',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bebida`
--

DROP TABLE IF EXISTS `tbl_bebida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bebida` (
  `id` int NOT NULL AUTO_INCREMENT,
  `teor_alcoolico` double NOT NULL,
  `volume` double NOT NULL,
  `id_produto` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_produto_bebida` (`id_produto`),
  CONSTRAINT `FK_produto_bebida` FOREIGN KEY (`id_produto`) REFERENCES `tbl_produto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bebida`
--

LOCK TABLES `tbl_bebida` WRITE;
/*!40000 ALTER TABLE `tbl_bebida` DISABLE KEYS */;
INSERT INTO `tbl_bebida` VALUES (1,0,500,1),(2,0,500,27),(3,0,500,28),(4,0,500,29),(5,0,0,30),(6,5,500,45),(7,5,500,46);
/*!40000 ALTER TABLE `tbl_bebida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_botoes`
--

DROP TABLE IF EXISTS `tbl_botoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_botoes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `img` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_botoes`
--

LOCK TABLES `tbl_botoes` WRITE;
/*!40000 ALTER TABLE `tbl_botoes` DISABLE KEYS */;
INSERT INTO `tbl_botoes` VALUES (1,'Bebidas','https://www.imagensempng.com.br/wp-content/uploads/2021/07/Cerveja-gelada-Png-800x445.png'),(2,'Pizzas','https://img.freepik.com/psd-premium/deliciosa-pizza-com-cogumelos-e-frango-defumado-em-transparente_670625-82.jpg?w=2000'),(3,'Favoritos','https://www.imagensempng.com.br/wp-content/uploads/2022/01/Fatias-Pizza-Png-1024x1024.png'),(4,'Serviços','https://e7.pngegg.com/pngimages/245/621/png-clipart-pizza-italian-cuisine-chef-cooking-pizza-food-cheese.png');
/*!40000 ALTER TABLE `tbl_botoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_colaboradores`
--

DROP TABLE IF EXISTS `tbl_colaboradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_colaboradores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(50) NOT NULL,
  `senha` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_colaboradores`
--

LOCK TABLES `tbl_colaboradores` WRITE;
/*!40000 ALTER TABLE `tbl_colaboradores` DISABLE KEYS */;
INSERT INTO `tbl_colaboradores` VALUES (1,'undefined','123'),(2,'Luquinhas','123'),(3,'f17c67ce70cd66957c39b44445223a87','202cb962ac59075b964b07152d234b70'),(4,'f17c67ce70cd66957c39b44445223a87','202cb962ac59075b964b07152d234b70'),(5,'f17c67ce70cd66957c39b44445223a87','202cb962ac59075b964b07152d234b70'),(6,'900150983cd24fb0d6963f7d28e17f72','202cb962ac59075b964b07152d234b70'),(7,'900150983cd24fb0d6963f7d28e17f72','202cb962ac59075b964b07152d234b70'),(8,'21a2a68472af5acda2d85e82a60aaf1e','e205ee2a5de471a70c1fd1b46033a75f'),(9,'21a2a68472af5acda2d85e82a60aaf1e','e205ee2a5de471a70c1fd1b46033a75f');
/*!40000 ALTER TABLE `tbl_colaboradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_formulario`
--

DROP TABLE IF EXISTS `tbl_formulario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_formulario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `mensagem` text NOT NULL,
  `criticas_sugestoes` varchar(25) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_formulario`
--

LOCK TABLES `tbl_formulario` WRITE;
/*!40000 ALTER TABLE `tbl_formulario` DISABLE KEYS */;
INSERT INTO `tbl_formulario` VALUES (1,'Luquinhas','Pizza com a massa seca e dura, a linguiça tava dificil de engolir, demorou e provavelmente o motoboy veio dando grau','sugestao','11 2471-9571','11 998518-9571','luquinhasmafumafu@gmail.com'),(2,'Luquinhas','Pizza com a massa seca e dura, a linguiça tava dificil de engolir, demorou e provavelmente o motoboy veio dando grau','sugestao','11 2471-9571','11 998518-9571','luquinhasmafumafu@gmail.com'),(3,'Luquinhas','Pizza com a massa seca e dura, a linguiça tava dificil de engolir, demorou e provavelmente o motoboy veio dando grau','sugestao','11 2471-9571','11 998518-9571','luquinhasmafumafu@gmail.com'),(4,'Luquinhas','Pizza com a massa seca e dura, a linguiça tava dificil de engolir, demorou e provavelmente o motoboy veio dando grau','critica','11 2471-9571','11 998518-9571','luquinhasmafumafu@gmail.com'),(5,'Luquinhas','Pizza com a massa seca e dura, a linguiça tava dificil de engolir, demorou e provavelmente o motoboy veio dando grau','critica','11 2471-9571','11 998518-9571','luquinhasmafumafu@gmail.com'),(6,'Luquinhas','Pizza com a massa seca e dura, a linguiça tava dificil de engolir, demorou e provavelmente o motoboy veio dando grau','critica','11 2471-9571','11 998518-9571','luquinhasmafumafu@gmail.com'),(7,'Luquinhas','Pizza com a massa seca e dura, a linguiça tava dificil de engolir, demorou e provavelmente o motoboy veio dando grau','critica','11 2471-9571','11 998518-9571','luquinhasmafumafu@gmail.com');
/*!40000 ALTER TABLE `tbl_formulario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_horario_de_funcionamento`
--

DROP TABLE IF EXISTS `tbl_horario_de_funcionamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_horario_de_funcionamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `abertura` time NOT NULL,
  `fechamento` time NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_horario_de_funcionamento`
--

LOCK TABLES `tbl_horario_de_funcionamento` WRITE;
/*!40000 ALTER TABLE `tbl_horario_de_funcionamento` DISABLE KEYS */;
INSERT INTO `tbl_horario_de_funcionamento` VALUES (1,'17:01:45','03:30:21'),(2,'17:01:45','03:30:21');
/*!40000 ALTER TABLE `tbl_horario_de_funcionamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ingredientes`
--

DROP TABLE IF EXISTS `tbl_ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ingredientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ingrediente_principal` varchar(45) NOT NULL,
  `acompanhamentos` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ingredientes`
--

LOCK TABLES `tbl_ingredientes` WRITE;
/*!40000 ALTER TABLE `tbl_ingredientes` DISABLE KEYS */;
INSERT INTO `tbl_ingredientes` VALUES (1,'Calabresa','Molho de tomate, calabresa, cebola, orégano e azeitonas pretas.'),(2,'Calabresa','Molho de tomate, calabresa, cebola, orégano e azeitonas pretas.'),(3,'Calabresa','Molho de tomate, calabresa, cebola, orégano e azeitonas pretas.'),(4,'Calabresa','Molho de tomate, calabresa, cebola, orégano e azeitonas pretas.'),(5,'Calabresa','Molho de tomate, calabresa, cebola, orégano e azeitonas pretas.'),(6,'Calabresa','Molho de tomate, calabresa, cebola, orégano e azeitonas pretas.'),(7,'Calabresa','Molho de tomate, calabresa, cebola, orégano e azeitonas pretas.');
/*!40000 ALTER TABLE `tbl_ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ingredientes_pizza`
--

DROP TABLE IF EXISTS `tbl_ingredientes_pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ingredientes_pizza` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_pizza` int NOT NULL,
  `id_ingredientes` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_pizza_ingredientes` (`id_pizza`),
  KEY `FK_ingredientes_ingredientes` (`id_ingredientes`),
  CONSTRAINT `FK_ingredientes_ingredientes` FOREIGN KEY (`id_ingredientes`) REFERENCES `tbl_ingredientes` (`id`),
  CONSTRAINT `FK_pizza_ingredientes` FOREIGN KEY (`id_pizza`) REFERENCES `tbl_pizza` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ingredientes_pizza`
--

LOCK TABLES `tbl_ingredientes_pizza` WRITE;
/*!40000 ALTER TABLE `tbl_ingredientes_pizza` DISABLE KEYS */;
INSERT INTO `tbl_ingredientes_pizza` VALUES (1,11,7);
/*!40000 ALTER TABLE `tbl_ingredientes_pizza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pizza`
--

DROP TABLE IF EXISTS `tbl_pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_pizza` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_produto` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_produto_pizza` (`id_produto`),
  CONSTRAINT `FK_produto_pizza` FOREIGN KEY (`id_produto`) REFERENCES `tbl_produto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pizza`
--

LOCK TABLES `tbl_pizza` WRITE;
/*!40000 ALTER TABLE `tbl_pizza` DISABLE KEYS */;
INSERT INTO `tbl_pizza` VALUES (1,31),(2,32),(3,33),(4,34),(5,35),(6,36),(7,44),(8,47),(9,48),(10,49),(11,50);
/*!40000 ALTER TABLE `tbl_pizza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_produto`
--

DROP TABLE IF EXISTS `tbl_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(75) NOT NULL,
  `imagem` varchar(150) NOT NULL,
  `status_promocao` varchar(25) NOT NULL,
  `preco` double NOT NULL,
  `porcentagem_desconto` float DEFAULT NULL,
  `status_favorito` int DEFAULT NULL,
  `tipo_produto` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_produto`
--

LOCK TABLES `tbl_produto` WRITE;
/*!40000 ALTER TABLE `tbl_produto` DISABLE KEYS */;
INSERT INTO `tbl_produto` VALUES (1,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(2,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(3,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(4,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(5,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(6,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(7,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(8,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(9,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(10,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(11,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(12,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(13,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(14,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(15,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(16,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(17,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(18,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(19,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(20,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(21,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(22,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(23,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(24,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(25,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(26,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(27,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(28,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(29,'Coca-Cola','https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png','nao',5,0,0,''),(30,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,12,9,''),(31,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,12,9,''),(32,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,12,9,''),(33,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,12,9,''),(34,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,12,9,''),(35,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,12,9,''),(36,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,12,9,''),(37,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,12,9,''),(38,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,12,9,''),(39,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,12,9,'pizza'),(40,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,12,9,'pizza'),(41,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,12,9,'pizza'),(42,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,12,9,'pizza'),(43,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,12,9,'pizza'),(44,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,12,9,'pizza'),(45,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,12,9,'bebida'),(46,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,12,9,'bebida'),(47,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,0,2,'pizza'),(48,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,0,2,'pizza'),(49,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,0,2,'pizza'),(50,'Pizza de ','https://www.designi.com.br/images/preview/10000492.jpg','sim',69,0,2,'pizza');
/*!40000 ALTER TABLE `tbl_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_servicos`
--

DROP TABLE IF EXISTS `tbl_servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_servicos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) NOT NULL,
  `id_horario_funcionamento` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_horario_servicos` (`id_horario_funcionamento`),
  CONSTRAINT `FK_horario_servicos` FOREIGN KEY (`id_horario_funcionamento`) REFERENCES `tbl_horario_de_funcionamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_servicos`
--

LOCK TABLES `tbl_servicos` WRITE;
/*!40000 ALTER TABLE `tbl_servicos` DISABLE KEYS */;
INSERT INTO `tbl_servicos` VALUES (1,'Delivery',2),(2,'Delivery',2),(3,'Drive Thru',2);
/*!40000 ALTER TABLE `tbl_servicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vwbebida`
--

DROP TABLE IF EXISTS `vwbebida`;
/*!50001 DROP VIEW IF EXISTS `vwbebida`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vwbebida` AS SELECT 
 1 AS `id`,
 1 AS `teor_alcoolico`,
 1 AS `volume`,
 1 AS `id_produto`,
 1 AS `nome`,
 1 AS `imagem`,
 1 AS `status_promocao`,
 1 AS `preco`,
 1 AS `porcentagem_desconto`,
 1 AS `status_favorito`,
 1 AS `tipo_produto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vwpizza`
--

DROP TABLE IF EXISTS `vwpizza`;
/*!50001 DROP VIEW IF EXISTS `vwpizza`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vwpizza` AS SELECT 
 1 AS `id`,
 1 AS `id_produto`,
 1 AS `nome`,
 1 AS `imagem`,
 1 AS `status_promocao`,
 1 AS `preco`,
 1 AS `porcentagem_desconto`,
 1 AS `status_favorito`,
 1 AS `tipo_produto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vwpizza_ingrediente`
--

DROP TABLE IF EXISTS `vwpizza_ingrediente`;
/*!50001 DROP VIEW IF EXISTS `vwpizza_ingrediente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vwpizza_ingrediente` AS SELECT 
 1 AS `id`,
 1 AS `id_produto`,
 1 AS `nome`,
 1 AS `imagem`,
 1 AS `status_promocao`,
 1 AS `preco`,
 1 AS `porcentagem_desconto`,
 1 AS `status_favorito`,
 1 AS `tipo_produto`,
 1 AS `ingrediente_principal`,
 1 AS `acompanhamentos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vwservicos`
--

DROP TABLE IF EXISTS `vwservicos`;
/*!50001 DROP VIEW IF EXISTS `vwservicos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vwservicos` AS SELECT 
 1 AS `nome`,
 1 AS `abertura`,
 1 AS `fechamento`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vwbebida`
--

/*!50001 DROP VIEW IF EXISTS `vwbebida`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwbebida` AS select `tbl_bebida`.`id` AS `id`,`tbl_bebida`.`teor_alcoolico` AS `teor_alcoolico`,`tbl_bebida`.`volume` AS `volume`,`tbl_bebida`.`id_produto` AS `id_produto`,`tbl_produto`.`nome` AS `nome`,`tbl_produto`.`imagem` AS `imagem`,`tbl_produto`.`status_promocao` AS `status_promocao`,`tbl_produto`.`preco` AS `preco`,`tbl_produto`.`porcentagem_desconto` AS `porcentagem_desconto`,`tbl_produto`.`status_favorito` AS `status_favorito`,`tbl_produto`.`tipo_produto` AS `tipo_produto` from (`tbl_bebida` join `tbl_produto` on((`tbl_produto`.`id` = `tbl_bebida`.`id_produto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpizza`
--

/*!50001 DROP VIEW IF EXISTS `vwpizza`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpizza` AS select `tbl_pizza`.`id` AS `id`,`tbl_pizza`.`id_produto` AS `id_produto`,`tbl_produto`.`nome` AS `nome`,`tbl_produto`.`imagem` AS `imagem`,`tbl_produto`.`status_promocao` AS `status_promocao`,`tbl_produto`.`preco` AS `preco`,`tbl_produto`.`porcentagem_desconto` AS `porcentagem_desconto`,`tbl_produto`.`status_favorito` AS `status_favorito`,`tbl_produto`.`tipo_produto` AS `tipo_produto` from (`tbl_pizza` join `tbl_produto` on((`tbl_produto`.`id` = `tbl_pizza`.`id_produto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpizza_ingrediente`
--

/*!50001 DROP VIEW IF EXISTS `vwpizza_ingrediente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpizza_ingrediente` AS select `tbl_pizza`.`id` AS `id`,`tbl_pizza`.`id_produto` AS `id_produto`,`tbl_produto`.`nome` AS `nome`,`tbl_produto`.`imagem` AS `imagem`,`tbl_produto`.`status_promocao` AS `status_promocao`,`tbl_produto`.`preco` AS `preco`,`tbl_produto`.`porcentagem_desconto` AS `porcentagem_desconto`,`tbl_produto`.`status_favorito` AS `status_favorito`,`tbl_produto`.`tipo_produto` AS `tipo_produto`,`tbl_ingredientes`.`ingrediente_principal` AS `ingrediente_principal`,`tbl_ingredientes`.`acompanhamentos` AS `acompanhamentos` from (((`tbl_pizza` join `tbl_produto` on((`tbl_produto`.`id` = `tbl_pizza`.`id_produto`))) join `tbl_ingredientes_pizza` on((`tbl_pizza`.`id` = `tbl_ingredientes_pizza`.`id_pizza`))) join `tbl_ingredientes` on((`tbl_ingredientes`.`id` = `tbl_ingredientes_pizza`.`id_ingredientes`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwservicos`
--

/*!50001 DROP VIEW IF EXISTS `vwservicos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwservicos` AS select `tbl_servicos`.`nome` AS `nome`,`tbl_horario_de_funcionamento`.`abertura` AS `abertura`,`tbl_horario_de_funcionamento`.`fechamento` AS `fechamento` from (`tbl_servicos` join `tbl_horario_de_funcionamento` on((`tbl_horario_de_funcionamento`.`id` = `tbl_servicos`.`id_horario_funcionamento`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-07 11:24:11
