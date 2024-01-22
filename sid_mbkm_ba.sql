-- MySQL dump 10.17  Distrib 10.3.23-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: sid_mbkm
-- ------------------------------------------------------
-- Server version	10.3.23-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `berkas_penduduk`
--

DROP TABLE IF EXISTS `berkas_penduduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berkas_penduduk` (
  `id_berkas` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenis_berkas` int(11) NOT NULL,
  `nik` bigint(16) NOT NULL,
  `file` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_berkas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berkas_penduduk`
--

LOCK TABLES `berkas_penduduk` WRITE;
/*!40000 ALTER TABLE `berkas_penduduk` DISABLE KEYS */;
/*!40000 ALTER TABLE `berkas_penduduk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berkas_pengajuan_layanan`
--

DROP TABLE IF EXISTS `berkas_pengajuan_layanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berkas_pengajuan_layanan` (
  `id_berkas_pengajuan_layanan` int(11) NOT NULL AUTO_INCREMENT,
  `id_pengajuan` int(11) NOT NULL,
  `id_persyaratan_per_kategori_layanan` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_berkas_pengajuan_layanan`),
  KEY `c_berkaspengajuanlayanan_pengajuanlayanan` (`id_pengajuan`),
  KEY `c_berkaspengajuanlayanan_persyaratankategori` (`id_persyaratan_per_kategori_layanan`),
  CONSTRAINT `c_berkaspengajuanlayanan_pengajuanlayanan` FOREIGN KEY (`id_pengajuan`) REFERENCES `transaksi_pengajuan_layanan` (`id_pengajuan`),
  CONSTRAINT `c_berkaspengajuanlayanan_persyaratankategori` FOREIGN KEY (`id_persyaratan_per_kategori_layanan`) REFERENCES `master_persyaratan_per_kategori_layanan` (`id_persyaratan_per_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berkas_pengajuan_layanan`
--

LOCK TABLES `berkas_pengajuan_layanan` WRITE;
/*!40000 ALTER TABLE `berkas_pengajuan_layanan` DISABLE KEYS */;
INSERT INTO `berkas_pengajuan_layanan` VALUES (1,1,76,'files/berkaspenduduk/652cac2f13208Kartu Keluarga3220100199999999.pdf','2023-10-23 09:27:13','2023-10-23 09:27:13'),(2,2,7,'../../files/berkaslayananpenduduk/ktp/formf102/6535f828d4a77FormF1023514181709020001.pdf','2023-10-23 11:35:52','2023-10-23 11:35:52'),(3,2,8,'../../files/berkaslayananpenduduk/ktp/skpemeriksaangolongandarah/6535f828d4e5dSKPemeriksaanGolonganDarah3514181709020001.pdf','2023-10-23 11:35:52','2023-10-23 11:35:52'),(4,2,79,'files/berkaspenduduk/652c9856a7d27Kartu Keluarga3514181709020001.pdf','2023-10-23 11:35:52','2023-10-23 11:35:52'),(5,1,1,'../../files/berkaslayananpenduduk/ktp/formf102/65361201730b2FormF1023514181709020001.pdf','2023-10-23 13:26:09','2023-10-23 13:26:09'),(6,1,2,'../../files/berkaslayananpenduduk/ktp/fotoktprusak/653612017387cFotoKTPrusak3514181709020001.pdf','2023-10-23 13:26:09','2023-10-23 13:26:09'),(7,1,76,'files/berkaspenduduk/652cac2f13208Kartu Keluarga3220100199999999.pdf','2023-10-23 13:26:09','2023-10-23 13:26:09'),(8,4,3,'../../files/berkaslayananpenduduk/ktp/formf102/653612d253a4dFormF1023514181709020001.pdf','2023-10-23 13:29:38','2023-10-23 13:29:38'),(9,4,4,'../../files/berkaslayananpenduduk/ktp/skkehilanganktp/653612d2543f4SKKehilanganKTP3514181709020001.pdf','2023-10-23 13:29:38','2023-10-23 13:29:38'),(10,4,77,'files/berkaspenduduk/6535e2e2a4b96KartuKeluarga3507220505020002.pdf','2023-10-23 13:29:38','2023-10-23 13:29:38'),(11,2,7,'../../files/berkaslayananpenduduk/ktp/formf102/653613fe2bb90FormF1023514181709020001.pdf','2023-10-23 13:34:38','2023-10-23 13:34:38'),(12,2,8,'../../files/berkaslayananpenduduk/ktp/skpemeriksaangolongandarah/653613fe2bfdeSKPemeriksaanGolonganDarah3514181709020001.pdf','2023-10-23 13:34:38','2023-10-23 13:34:38'),(13,2,79,'files/berkaspenduduk/652c9856a7d27Kartu Keluarga3514181709020001.pdf','2023-10-23 13:34:38','2023-10-23 13:34:38'),(14,6,1,'../../files/berkaslayananpenduduk/ktp/formf102/653695171c7aaFormF1023514181709020001.pdf','2023-10-23 22:45:26','2023-10-23 22:45:26'),(15,6,2,'../../files/berkaslayananpenduduk/ktp/fotoktprusak/653695171da79FotoKTPrusak3514181709020001.pdf','2023-10-23 22:45:26','2023-10-23 22:45:26'),(16,6,76,'files/berkaspenduduk/652c9856a7d27Kartu Keluarga3514181709020001.pdf','2023-10-23 22:45:26','2023-10-23 22:45:26'),(17,7,5,'../../files/berkaslayananpenduduk/ktp/formf102/653696c7b336cFormF1023514181709020001.pdf','2023-10-23 22:50:01','2023-10-23 22:52:39'),(18,7,6,'../../files/berkaslayananpenduduk/ktp/fotokkterbitanterbaru/653696c7b42d2FotoKKterbitanterbaru3514181709020001.pdf','2023-10-23 22:50:01','2023-10-23 22:52:39'),(19,8,1,'../../files/berkaslayananpenduduk/ktp/formf102/65373005dc121FormF1023514181709020001.pdf','2023-10-24 09:44:53','2023-10-24 09:46:29'),(20,8,2,'../../files/berkaslayananpenduduk/ktp/fotoktprusak/65372fa544303FotoKTPrusak3514181709020001.pdf','2023-10-24 09:44:53','2023-10-24 09:44:53'),(21,8,76,'files/berkaspenduduk/652c9856a7d27Kartu Keluarga3514181709020001.pdf','2023-10-24 09:44:53','2023-10-24 09:46:29'),(22,9,1,'../../files/berkaslayananpenduduk/ktp/formf102/653730e4814deFormF1023514181709020001.pdf','2023-10-24 09:49:27','2023-10-24 09:50:12'),(23,9,2,'../../files/berkaslayananpenduduk/ktp/fotoktprusak/653730e48225eFotoKTPrusak3514181709020001.pdf','2023-10-24 09:49:27','2023-10-24 09:50:12'),(24,9,76,'files/berkaspenduduk/652c9856a7d27Kartu Keluarga3514181709020001.pdf','2023-10-24 09:49:27','2023-10-24 09:50:12'),(25,10,1,'../../files/berkaslayananpenduduk/ktp/formf102/6537343219e3fFormF1023507220505020002.pdf','2023-10-24 10:04:18','2023-10-24 10:04:18'),(26,10,2,'../../files/berkaslayananpenduduk/ktp/fotoktprusak/653734321ab88FotoKTPrusak3507220505020002.pdf','2023-10-24 10:04:18','2023-10-24 10:04:18'),(27,10,76,'files/berkaspenduduk/6535e2e2a4b96KartuKeluarga3507220505020002.pdf','2023-10-24 10:04:18','2023-10-24 10:04:18');
/*!40000 ALTER TABLE `berkas_pengajuan_layanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berkas_perubahan_penduduk`
--

DROP TABLE IF EXISTS `berkas_perubahan_penduduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berkas_perubahan_penduduk` (
  `id_berkas_perubahan_penduduk` int(11) NOT NULL AUTO_INCREMENT,
  `id_perubahan_penduduk` int(11) NOT NULL,
  `id_persyaratan_per_kategori_perubahan_penduduk` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_berkas_perubahan_penduduk`),
  KEY `c_berkasperubahan_perubahanpenduduk` (`id_perubahan_penduduk`),
  KEY `c_berkasperubahan_persyaratankategoriperubahan` (`id_persyaratan_per_kategori_perubahan_penduduk`),
  CONSTRAINT `c_berkasperubahan_persyaratankategoriperubahan` FOREIGN KEY (`id_persyaratan_per_kategori_perubahan_penduduk`) REFERENCES `master_persyaratan_per_kategori_perubahan_penduduk` (`id_persyaratan_per_kategori_perubahan_penduduk`),
  CONSTRAINT `c_berkasperubahan_perubahanpenduduk` FOREIGN KEY (`id_perubahan_penduduk`) REFERENCES `transaksi_perubahan_penduduk` (`id_perubahan_penduduk`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berkas_perubahan_penduduk`
--

LOCK TABLES `berkas_perubahan_penduduk` WRITE;
/*!40000 ALTER TABLE `berkas_perubahan_penduduk` DISABLE KEYS */;
INSERT INTO `berkas_perubahan_penduduk` VALUES (1,855934074,2,'../../files/penambahanpenduduk/pindahkedalam/6535e491d0d80SuratPindahKeDalam3514181709020001.pdf','2023-10-23 10:12:17','2023-10-23 10:12:17'),(2,175122366,2,'../../files/penambahanpenduduk/pindahkedalam/653614e508f76SuratPindahKeDalam3220100123220100.pdf','2023-10-23 13:38:29','2023-10-23 13:38:29');
/*!40000 ALTER TABLE `berkas_perubahan_penduduk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_transaksi_aset_penduduk`
--

DROP TABLE IF EXISTS `detail_transaksi_aset_penduduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_transaksi_aset_penduduk` (
  `id_detail_transaksi_aset` int(11) NOT NULL AUTO_INCREMENT,
  `id_aset` int(11) NOT NULL,
  `id_jenis_data_aset` int(11) NOT NULL,
  `data_aset` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_detail_transaksi_aset`),
  KEY `c_detailtransaksiaset_jenisdataaset` (`id_jenis_data_aset`),
  KEY `c_detailtransaksiaset_transaksiaset` (`id_aset`),
  CONSTRAINT `c_detailtransaksiaset_jenisdataaset` FOREIGN KEY (`id_jenis_data_aset`) REFERENCES `master_jenis_data_aset` (`id_jenis_data_aset`),
  CONSTRAINT `c_detailtransaksiaset_transaksiaset` FOREIGN KEY (`id_aset`) REFERENCES `transaksi_aset_penduduk` (`id_aset`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_transaksi_aset_penduduk`
--

LOCK TABLES `detail_transaksi_aset_penduduk` WRITE;
/*!40000 ALTER TABLE `detail_transaksi_aset_penduduk` DISABLE KEYS */;
INSERT INTO `detail_transaksi_aset_penduduk` VALUES (1,439349338,8,'Sapi','2023-10-23 10:07:14','2023-10-23 10:07:14'),(2,439349338,9,'2','2023-10-23 10:07:14','2023-10-23 10:17:10'),(3,441134609,5,'Honda Megapro','2023-10-23 10:54:29','2023-10-23 10:54:29'),(4,441134609,7,'Manusia','2023-10-23 10:54:29','2023-10-23 10:54:29'),(5,441134609,6,'N 345688 ACA','2023-10-23 10:54:29','2023-10-23 10:54:29'),(6,441134609,4,'Motor','2023-10-23 10:54:29','2023-10-23 10:54:29'),(7,894387033,5,'Motor','2023-10-23 14:11:43','2023-10-23 14:11:43'),(8,894387033,7,'Pribadi','2023-10-23 14:11:43','2023-10-23 14:11:43'),(9,894387033,6,'N 812 GK','2023-10-23 14:11:43','2023-10-23 14:11:43'),(10,894387033,4,'Roda 2','2023-10-23 14:11:43','2023-10-23 14:11:43');
/*!40000 ALTER TABLE `detail_transaksi_aset_penduduk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_transaksi_data_pengajuan_layanan`
--

DROP TABLE IF EXISTS `detail_transaksi_data_pengajuan_layanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_transaksi_data_pengajuan_layanan` (
  `id_detail_data_pengajuan` int(11) NOT NULL AUTO_INCREMENT,
  `id_pengajuan` int(11) NOT NULL,
  `id_detail_jenis_data_pengajuan_layanan` int(11) NOT NULL,
  `data` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_detail_data_pengajuan`),
  KEY `c_detailpengajuanlayanan_pengajuanlayanan` (`id_pengajuan`),
  KEY `c_detailpengajuanlayanan_jenispengajuan` (`id_detail_jenis_data_pengajuan_layanan`),
  CONSTRAINT `c_detailpengajuanlayanan_jenispengajuan` FOREIGN KEY (`id_detail_jenis_data_pengajuan_layanan`) REFERENCES `master_jenis_data_pengajuan_layanan` (`id_detail_jenis_data_pengajuan_layanan`),
  CONSTRAINT `c_detailpengajuanlayanan_pengajuanlayanan` FOREIGN KEY (`id_pengajuan`) REFERENCES `transaksi_pengajuan_layanan` (`id_pengajuan`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_transaksi_data_pengajuan_layanan`
--

LOCK TABLES `detail_transaksi_data_pengajuan_layanan` WRITE;
/*!40000 ALTER TABLE `detail_transaksi_data_pengajuan_layanan` DISABLE KEYS */;
INSERT INTO `detail_transaksi_data_pengajuan_layanan` VALUES (1,3,2,'3514180101000638','2023-10-23 09:27:13','2023-10-24 09:11:51'),(2,3,3,'','2023-10-23 09:27:13','2023-10-24 09:11:51'),(3,3,4,'','2023-10-23 09:27:13','2023-10-24 09:11:51'),(4,3,5,'','2023-10-23 09:27:13','2023-10-24 09:11:51'),(5,3,6,'','2023-10-23 09:27:13','2023-10-24 09:11:51'),(6,3,7,'','2023-10-23 09:27:13','2023-10-24 09:11:51'),(7,3,8,'','2023-10-23 09:27:13','2023-10-24 09:11:51'),(8,3,9,'','2023-10-23 09:27:13','2023-10-24 09:11:51'),(9,3,10,'','2023-10-23 09:27:13','2023-10-24 09:11:51'),(10,3,11,'','2023-10-23 09:27:13','2023-10-24 09:11:51'),(11,3,12,'','2023-10-23 09:27:13','2023-10-24 09:11:51'),(12,3,13,'','2023-10-23 09:27:13','2023-10-24 09:11:51'),(13,3,14,'','2023-10-23 09:27:13','2023-10-24 09:11:51'),(14,3,17,'','2023-10-23 09:27:13','2023-10-24 09:11:51'),(15,3,18,'','2023-10-23 09:27:13','2023-10-24 09:11:51'),(16,3,19,'','2023-10-23 09:27:13','2023-10-24 09:11:51'),(17,1,19,'Kawin','2023-10-23 09:27:13','2023-10-23 09:27:13'),(18,2,1,'Isra Yehova Asmaranda','2023-10-23 11:35:52','2023-10-23 11:35:52'),(19,2,2,'3514180101000638','2023-10-23 11:35:52','2023-10-23 11:35:52'),(20,2,3,'Malang','2023-10-23 11:35:52','2023-10-23 11:35:52'),(21,2,4,'2023-10-16','2023-10-23 11:35:52','2023-10-23 11:35:52'),(22,2,5,'Buruh','2023-10-23 11:35:52','2023-10-23 11:35:52'),(23,2,6,'081259950915','2023-10-23 11:35:52','2023-10-23 11:35:52'),(24,2,7,'Jl. Mertojoyo Sel. No.Blok C, Merjosari, Kec. Lowokwaru, Kota Malang, Jawa Timur ','2023-10-23 11:35:52','2023-10-23 11:35:52'),(25,2,8,'Dau','2023-10-23 11:35:52','2023-10-23 11:35:52'),(26,2,9,'Kucur','2023-10-23 11:35:52','2023-10-23 11:35:52'),(27,2,10,'06','2023-10-23 11:35:52','2023-10-23 11:35:52'),(28,2,11,'13','2023-10-23 11:35:52','2023-10-23 11:35:52'),(29,2,12,'65151','2023-10-23 11:35:52','2023-10-23 11:35:52'),(30,2,13,'Laki - Laki','2023-10-23 11:35:52','2023-10-23 11:35:52'),(31,2,14,'O','2023-10-23 11:35:52','2023-10-23 11:35:52'),(32,2,17,'Kristen','2023-10-23 11:35:52','2023-10-23 11:35:52'),(33,2,18,'Warga Negara Indonesia','2023-10-23 11:35:52','2023-10-23 11:35:52'),(34,2,19,'Belum Kawin','2023-10-23 11:35:52','2023-10-23 11:35:52'),(35,1,1,'GATHAN FITRA KRISNA','2023-10-23 13:26:09','2023-10-23 13:26:09'),(36,1,2,'2201001916012002','2023-10-23 13:26:09','2023-10-23 13:26:09'),(37,1,3,'Malang','2023-10-23 13:26:09','2023-10-23 13:26:09'),(38,1,4,'2001-12-22','2023-10-23 13:26:09','2023-10-23 13:26:09'),(39,1,5,'Yutuber','2023-10-23 13:26:09','2023-10-23 13:26:09'),(40,1,6,'087850886176','2023-10-23 13:26:09','2023-10-23 13:26:09'),(41,1,7,'Jl. jalankucur, Godehan, Kucur.','2023-10-23 13:26:09','2023-10-23 13:26:09'),(42,1,8,'Dau','2023-10-23 13:26:09','2023-10-23 13:26:09'),(43,1,9,'Kucur','2023-10-23 13:26:09','2023-10-23 13:26:09'),(44,1,10,'10','2023-10-23 13:26:09','2023-10-23 13:26:09'),(45,1,11,'24','2023-10-23 13:26:09','2023-10-23 13:26:09'),(46,1,12,'65151','2023-10-23 13:26:09','2023-10-23 13:26:09'),(47,1,13,'Laki - Laki','2023-10-23 13:26:09','2023-10-23 13:26:09'),(48,1,14,'O','2023-10-23 13:26:09','2023-10-23 13:26:09'),(49,1,17,'Islam','2023-10-23 13:26:09','2023-10-23 13:26:09'),(50,1,18,'Warga Negara Indonesia','2023-10-23 13:26:09','2023-10-23 13:26:09'),(51,1,19,'Kawin','2023-10-23 13:26:09','2023-10-23 13:26:09'),(52,4,1,'Grace','2023-10-23 13:29:38','2023-10-23 13:29:38'),(53,4,2,'3507220505020002','2023-10-23 13:29:38','2023-10-23 13:29:38'),(54,4,3,'Malang','2023-10-23 13:29:38','2023-10-23 13:29:38'),(55,4,4,'2002-07-17','2023-10-23 13:29:38','2023-10-23 13:29:38'),(56,4,5,'Sucikage','2023-10-23 13:29:38','2023-10-23 13:29:38'),(57,4,6,'081','2023-10-23 13:29:38','2023-10-23 13:29:38'),(58,4,7,'Mesir','2023-10-23 13:29:38','2023-10-23 13:29:38'),(59,4,8,'Dau','2023-10-23 13:29:38','2023-10-23 13:29:38'),(60,4,9,'Kucur','2023-10-23 13:29:38','2023-10-23 13:29:38'),(61,4,10,'07','2023-10-23 13:29:38','2023-10-23 13:29:38'),(62,4,11,'16','2023-10-23 13:29:38','2023-10-23 13:29:38'),(63,4,12,'65151','2023-10-23 13:29:38','2023-10-23 13:29:38'),(64,4,13,'Perempuan','2023-10-23 13:29:38','2023-10-23 13:29:38'),(65,4,14,'AB','2023-10-23 13:29:38','2023-10-23 13:29:38'),(66,4,17,'Kristen','2023-10-23 13:29:38','2023-10-23 13:29:38'),(67,4,18,'Warga Negara Indonesia','2023-10-23 13:29:38','2023-10-23 13:29:38'),(68,4,19,'Belum Kawin','2023-10-23 13:29:38','2023-10-23 13:29:38'),(69,2,1,'Isra Yehova Asmaranda','2023-10-23 13:34:38','2023-10-23 13:34:38'),(70,2,2,'3514180101000638','2023-10-23 13:34:38','2023-10-23 13:34:38'),(71,2,3,'Malang','2023-10-23 13:34:38','2023-10-23 13:34:38'),(72,2,4,'2023-10-16','2023-10-23 13:34:38','2023-10-23 13:34:38'),(73,2,5,'Buruh','2023-10-23 13:34:38','2023-10-23 13:34:38'),(74,2,6,'081259950915','2023-10-23 13:34:38','2023-10-23 13:34:38'),(75,2,7,'Jl. Mertojoyo Sel. No.Blok C, Merjosari, Kec. Lowokwaru, Kota Malang, Jawa Timur ','2023-10-23 13:34:38','2023-10-23 13:34:38'),(76,2,8,'Dau','2023-10-23 13:34:38','2023-10-23 13:34:38'),(77,2,9,'Kucur','2023-10-23 13:34:38','2023-10-23 13:34:38'),(78,2,10,'06','2023-10-23 13:34:38','2023-10-23 13:34:38'),(79,2,11,'13','2023-10-23 13:34:38','2023-10-23 13:34:38'),(80,2,12,'65151','2023-10-23 13:34:38','2023-10-23 13:34:38'),(81,2,13,'Laki - Laki','2023-10-23 13:34:38','2023-10-23 13:34:38'),(82,2,14,'O','2023-10-23 13:34:38','2023-10-23 13:34:38'),(83,2,17,'Kristen','2023-10-23 13:34:38','2023-10-23 13:34:38'),(84,2,18,'Warga Negara Indonesia','2023-10-23 13:34:38','2023-10-23 13:34:38'),(85,2,19,'Belum Kawin','2023-10-23 13:34:38','2023-10-23 13:34:38'),(86,6,1,'Isra Yehova Asmaranda','2023-10-23 22:45:26','2023-10-23 22:45:26'),(87,6,2,'3514180101000638','2023-10-23 22:45:26','2023-10-23 22:45:26'),(88,6,3,'Malang','2023-10-23 22:45:26','2023-10-23 22:45:26'),(89,6,4,'2023-10-16','2023-10-23 22:45:26','2023-10-23 22:45:26'),(90,6,5,'Buruh','2023-10-23 22:45:26','2023-10-23 22:45:26'),(91,6,6,'081259950915','2023-10-23 22:45:26','2023-10-23 22:45:26'),(92,6,7,'Jl. Mertojoyo Sel. No.Blok C, Merjosari, Kec. Lowokwaru, Kota Malang, Jawa Timur ','2023-10-23 22:45:26','2023-10-23 22:45:26'),(93,6,8,'Dau','2023-10-23 22:45:26','2023-10-23 22:45:26'),(94,6,9,'Kucur','2023-10-23 22:45:26','2023-10-23 22:45:26'),(95,6,10,'06','2023-10-23 22:45:26','2023-10-23 22:45:26'),(96,6,11,'13','2023-10-23 22:45:26','2023-10-23 22:45:26'),(97,6,12,'65151','2023-10-23 22:45:26','2023-10-23 22:45:26'),(98,6,13,'Laki - Laki','2023-10-23 22:45:26','2023-10-23 22:45:26'),(99,6,14,'O','2023-10-23 22:45:26','2023-10-23 22:45:26'),(100,6,17,'Kristen','2023-10-23 22:45:26','2023-10-23 22:45:26'),(101,6,18,'Warga Negara Indonesia','2023-10-23 22:45:26','2023-10-23 22:45:26'),(102,6,19,'Belum Kawin','2023-10-23 22:45:26','2023-10-23 22:45:26'),(103,7,1,'Shani Indira Natio','2023-10-23 22:50:01','2023-10-23 22:52:39'),(104,7,2,'3514180101000638','2023-10-23 22:50:01','2023-10-23 22:52:39'),(105,7,3,'Jogja','2023-10-23 22:50:01','2023-10-23 22:52:39'),(106,7,4,'2023-10-20','2023-10-23 22:50:01','2023-10-23 22:52:39'),(107,7,5,'Artis','2023-10-23 22:50:01','2023-10-23 22:52:39'),(108,7,6,'','2023-10-23 22:50:01','2023-10-23 22:52:39'),(109,7,7,'Jl. Malioboro','2023-10-23 22:50:01','2023-10-23 22:52:39'),(110,7,8,'Dau','2023-10-23 22:50:01','2023-10-23 22:52:39'),(111,7,9,'Kucur','2023-10-23 22:50:01','2023-10-23 22:52:39'),(112,7,10,'08','2023-10-23 22:50:01','2023-10-23 22:52:39'),(113,7,11,'17','2023-10-23 22:50:01','2023-10-23 22:52:39'),(114,7,12,'65151','2023-10-23 22:50:01','2023-10-23 22:52:39'),(115,7,13,'Perempuan','2023-10-23 22:50:01','2023-10-23 22:52:39'),(116,7,14,'AB','2023-10-23 22:50:01','2023-10-23 22:52:39'),(117,7,17,'Islam','2023-10-23 22:50:01','2023-10-23 22:52:39'),(118,7,18,'Warga Negara Indonesia','2023-10-23 22:50:01','2023-10-23 22:52:39'),(119,7,19,'Kawin','2023-10-23 22:50:01','2023-10-23 22:52:39'),(120,8,1,'Isra Yehova Asmaranda','2023-10-24 09:44:53','2023-10-24 09:46:29'),(121,8,2,'3514180101000638','2023-10-24 09:44:53','2023-10-24 09:46:29'),(122,8,3,'Malang','2023-10-24 09:44:53','2023-10-24 09:46:29'),(123,8,4,'2023-10-16','2023-10-24 09:44:53','2023-10-24 09:46:29'),(124,8,5,'Buruh','2023-10-24 09:44:53','2023-10-24 09:46:29'),(125,8,6,'','2023-10-24 09:44:53','2023-10-24 09:46:29'),(126,8,7,'Jl. Mertojoyo Sel. No.Blok C, Merjosari, Kec. Lowokwaru, Kota Malang, Jawa Timur ','2023-10-24 09:44:53','2023-10-24 09:46:29'),(127,8,8,'Dau','2023-10-24 09:44:53','2023-10-24 09:46:29'),(128,8,9,'Kucur','2023-10-24 09:44:53','2023-10-24 09:46:29'),(129,8,10,'06','2023-10-24 09:44:53','2023-10-24 09:46:29'),(130,8,11,'13','2023-10-24 09:44:53','2023-10-24 09:46:29'),(131,8,12,'65151','2023-10-24 09:44:53','2023-10-24 09:46:29'),(132,8,13,'Laki - Laki','2023-10-24 09:44:53','2023-10-24 09:46:29'),(133,8,14,'O','2023-10-24 09:44:53','2023-10-24 09:46:29'),(134,8,17,'Kristen','2023-10-24 09:44:53','2023-10-24 09:46:29'),(135,8,18,'Warga Negara Indonesia','2023-10-24 09:44:53','2023-10-24 09:46:29'),(136,8,19,'Belum Kawin','2023-10-24 09:44:53','2023-10-24 09:46:29'),(137,9,1,'Rara','2023-10-24 09:49:27','2023-10-24 09:50:12'),(138,9,2,'3514180101000638','2023-10-24 09:49:27','2023-10-24 09:50:12'),(139,9,3,'Malang','2023-10-24 09:49:27','2023-10-24 09:50:12'),(140,9,4,'2001-11-15','2023-10-24 09:49:27','2023-10-24 09:50:12'),(141,9,5,'Dokter','2023-10-24 09:49:27','2023-10-24 09:50:12'),(142,9,6,'','2023-10-24 09:49:27','2023-10-24 09:50:12'),(143,9,7,'Jl Blaablaa','2023-10-24 09:49:27','2023-10-24 09:50:12'),(144,9,8,'Dau','2023-10-24 09:49:27','2023-10-24 09:50:12'),(145,9,9,'Kucur','2023-10-24 09:49:27','2023-10-24 09:50:12'),(146,9,10,'07','2023-10-24 09:49:27','2023-10-24 09:50:12'),(147,9,11,'15','2023-10-24 09:49:27','2023-10-24 09:50:12'),(148,9,12,'65151','2023-10-24 09:49:27','2023-10-24 09:50:12'),(149,9,13,'Perempuan','2023-10-24 09:49:27','2023-10-24 09:50:12'),(150,9,14,'O','2023-10-24 09:49:27','2023-10-24 09:50:12'),(151,9,17,'Kristen','2023-10-24 09:49:27','2023-10-24 09:50:12'),(152,9,18,'Warga Negara Indonesia','2023-10-24 09:49:27','2023-10-24 09:50:12'),(153,9,19,'Belum Kawin','2023-10-24 09:49:27','2023-10-24 09:50:12'),(154,10,1,'Grace','2023-10-24 10:04:18','2023-10-24 10:04:18'),(155,10,2,'3507220505020002','2023-10-24 10:04:18','2023-10-24 10:04:18'),(156,10,3,'Malang','2023-10-24 10:04:18','2023-10-24 10:04:18'),(157,10,4,'2002-07-17','2023-10-24 10:04:18','2023-10-24 10:04:18'),(158,10,5,'Sucikage','2023-10-24 10:04:18','2023-10-24 10:04:18'),(159,10,6,'081','2023-10-24 10:04:18','2023-10-24 10:04:18'),(160,10,7,'Mesir','2023-10-24 10:04:18','2023-10-24 10:04:18'),(161,10,8,'Dau','2023-10-24 10:04:18','2023-10-24 10:04:18'),(162,10,9,'Kucur','2023-10-24 10:04:18','2023-10-24 10:04:18'),(163,10,10,'07','2023-10-24 10:04:18','2023-10-24 10:04:18'),(164,10,11,'16','2023-10-24 10:04:18','2023-10-24 10:04:18'),(165,10,12,'65151','2023-10-24 10:04:18','2023-10-24 10:04:18'),(166,10,13,'Perempuan','2023-10-24 10:04:18','2023-10-24 10:04:18'),(167,10,14,'AB','2023-10-24 10:04:18','2023-10-24 10:04:18'),(168,10,17,'Kristen','2023-10-24 10:04:18','2023-10-24 10:04:18'),(169,10,18,'Warga Negara Indonesia','2023-10-24 10:04:18','2023-10-24 10:04:18'),(170,10,19,'Belum Kawin','2023-10-24 10:04:18','2023-10-24 10:04:18');
/*!40000 ALTER TABLE `detail_transaksi_data_pengajuan_layanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_transaksi_data_perubahan_penduduk`
--

DROP TABLE IF EXISTS `detail_transaksi_data_perubahan_penduduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_transaksi_data_perubahan_penduduk` (
  `id_detail_data_perubahan_penduduk` int(11) NOT NULL AUTO_INCREMENT,
  `id_perubahan_penduduk` int(11) NOT NULL,
  `id_detail_jenis_data_perubahan_penduduk` int(11) NOT NULL,
  `data` varchar(255) NOT NULL,
  `data_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_detail_data_perubahan_penduduk`),
  KEY `c_dataperubahan_perubahanpenduduk` (`id_perubahan_penduduk`),
  KEY `c_dataperubahan_jenisdataperubahan` (`id_detail_jenis_data_perubahan_penduduk`),
  CONSTRAINT `c_dataperubahan_jenisdataperubahan` FOREIGN KEY (`id_detail_jenis_data_perubahan_penduduk`) REFERENCES `master_jenis_data_perubahan_penduduk` (`id_detail_jenis_data_perubahan_penduduk`),
  CONSTRAINT `c_dataperubahan_perubahanpenduduk` FOREIGN KEY (`id_perubahan_penduduk`) REFERENCES `transaksi_perubahan_penduduk` (`id_perubahan_penduduk`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_transaksi_data_perubahan_penduduk`
--

LOCK TABLES `detail_transaksi_data_perubahan_penduduk` WRITE;
/*!40000 ALTER TABLE `detail_transaksi_data_perubahan_penduduk` DISABLE KEYS */;
INSERT INTO `detail_transaksi_data_perubahan_penduduk` VALUES (23,98005370,1,'Kepin','2023-10-23 09:31:10','2023-10-23 11:47:02'),(24,98005370,2,'Laki - Laki','2023-10-23 09:31:10','2023-10-23 11:47:02'),(25,98005370,3,'Malang','2023-10-23 09:31:10','2023-10-23 11:47:02'),(26,98005370,4,'2023-10-02','2023-10-23 09:31:10','2023-10-23 11:47:02'),(27,98005370,5,'2','2023-10-23 09:31:10','2023-10-23 11:47:02'),(28,98005370,6,'Katolik','2023-10-23 09:31:10','2023-10-23 11:47:02'),(29,98005370,7,'ffffff','2023-10-23 09:31:10','2023-10-23 11:47:02'),(30,98005370,8,'qwqwqwq','2023-10-23 09:31:10','2023-10-23 11:47:02'),(31,98005370,9,'21','2023-10-23 09:31:10','2023-10-23 11:47:02'),(32,98005370,10,'Peternak','2023-10-23 09:31:10','2023-10-23 11:47:02'),(33,98005370,11,'Sumberejo','2023-10-23 09:31:10','2023-10-23 11:47:02'),(34,855934074,12,'3220100012345678','2023-10-23 10:12:02','2023-10-23 10:12:17'),(35,855934074,13,'Shani Indira Natio','2023-10-23 10:12:02','2023-10-23 10:12:17'),(36,855934074,14,'2211000120072002','2023-10-23 10:12:02','2023-10-23 10:12:17'),(37,855934074,15,'Paijo','2023-10-23 10:12:02','2023-10-23 10:12:17'),(38,855934074,16,'Jl. Malioboro','2023-10-23 10:12:02','2023-10-23 10:12:17'),(39,855934074,17,'Ke Hatiku','2023-10-23 10:12:02','2023-10-23 10:12:17'),(40,855934074,18,'1','2023-10-23 10:12:02','2023-10-23 10:12:17'),(41,421606550,1,'Tini','2023-10-23 10:20:25','2023-10-23 14:05:28'),(42,421606550,2,'Laki - Laki','2023-10-23 10:20:25','2023-10-23 14:05:28'),(43,421606550,3,'Malang','2023-10-23 10:20:25','2023-10-23 14:05:28'),(44,421606550,4,'2019-03-12','2023-10-23 10:20:25','2023-10-23 14:05:28'),(45,421606550,5,'1','2023-10-23 10:20:25','2023-10-23 14:05:28'),(46,421606550,6,'Katolik','2023-10-23 10:20:25','2023-10-23 14:05:28'),(47,421606550,7,'Genca','2023-10-23 10:20:25','2023-10-23 14:05:28'),(48,421606550,8,'Ratih','2023-10-23 10:20:25','2023-10-23 14:05:28'),(49,421606550,9,'45','2023-10-23 10:20:25','2023-10-23 14:05:28'),(50,421606550,10,'Petani','2023-10-23 10:20:25','2023-10-23 14:05:28'),(51,421606550,11,'jl blaablaa','2023-10-23 10:20:25','2023-10-23 14:05:28'),(63,268708460,19,'Shani Indira Natio','2023-10-23 10:44:16','2023-10-23 22:30:59'),(64,268708460,20,'Perempuan','2023-10-23 10:44:16','2023-10-23 22:30:59'),(65,268708460,21,'Jogja','2023-10-23 10:44:16','2023-10-23 22:30:59'),(66,268708460,22,'2023-10-20','2023-10-23 10:44:16','2023-10-23 22:30:59'),(67,268708460,23,'0','2023-10-23 10:44:16','2023-10-23 22:30:59'),(68,268708460,24,'Islam','2023-10-23 10:44:16','2023-10-23 22:30:59'),(69,268708460,25,'Artis','2023-10-23 10:44:16','2023-10-23 22:30:59'),(70,268708460,26,'3220100012345678','2023-10-23 10:44:16','2023-10-23 22:30:59'),(71,268708460,27,'Jl. Malioboro','2023-10-23 10:44:16','2023-10-23 22:30:59'),(72,268708460,28,'2023-10-23','2023-10-23 10:44:16','2023-10-23 22:30:59'),(73,268708460,29,'10:43','2023-10-23 10:44:16','2023-10-23 22:30:59'),(74,268708460,30,'Sawojajar','2023-10-23 10:44:16','2023-10-23 22:30:59'),(75,268708460,31,'Tidar','2023-10-23 10:44:16','2023-10-23 22:30:59'),(76,268708460,32,'Grace','2023-10-23 10:44:16','2023-10-23 22:30:59'),(77,268708460,33,'Perempuan','2023-10-23 10:44:16','2023-10-23 22:30:59'),(78,268708460,34,'Malang','2023-10-23 10:44:16','2023-10-23 22:30:59'),(79,268708460,35,'2002-07-17','2023-10-23 10:44:16','2023-10-23 22:30:59'),(80,268708460,36,'21','2023-10-23 10:44:16','2023-10-23 22:30:59'),(81,268708460,37,'Kristen','2023-10-23 10:44:16','2023-10-23 22:30:59'),(82,268708460,38,'Sucikage','2023-10-23 10:44:16','2023-10-23 22:30:59'),(83,268708460,39,'3507220505020002','2023-10-23 10:44:16','2023-10-23 22:30:59'),(84,268708460,40,'Mesir','2023-10-23 10:44:16','2023-10-23 22:30:59'),(85,175122366,12,'3220100012345678','2023-10-23 13:36:06','2023-10-23 13:38:29'),(86,175122366,13,'Shani Indira Natio','2023-10-23 13:36:06','2023-10-23 13:38:29'),(87,175122366,14,'2211000120072002','2023-10-23 13:36:06','2023-10-23 13:38:29'),(88,175122366,15,'Tino','2023-10-23 13:36:06','2023-10-23 13:38:29'),(89,175122366,16,'Jl. Malioboro','2023-10-23 13:36:06','2023-10-23 13:38:29'),(90,175122366,17,'Jl blaablaa','2023-10-23 13:36:06','2023-10-23 13:38:29'),(91,175122366,18,'2','2023-10-23 13:36:06','2023-10-23 13:38:29'),(92,636045891,19,'Shani Indira Natio','2023-10-23 14:07:01','2023-10-23 14:07:01'),(93,636045891,20,'Perempuan','2023-10-23 14:07:01','2023-10-23 14:07:01'),(94,636045891,21,'Jogja','2023-10-23 14:07:01','2023-10-23 14:07:01'),(95,636045891,22,'2023-10-20','2023-10-23 14:07:01','2023-10-23 14:07:01'),(96,636045891,23,'0','2023-10-23 14:07:01','2023-10-23 14:07:01'),(97,636045891,24,'Islam','2023-10-23 14:07:01','2023-10-23 14:07:01'),(98,636045891,25,'Artis','2023-10-23 14:07:01','2023-10-23 14:07:01'),(99,636045891,26,'3220100012345678','2023-10-23 14:07:01','2023-10-23 14:07:01'),(100,636045891,27,'Jl. Malioboro','2023-10-23 14:07:01','2023-10-23 14:07:01'),(101,636045891,28,'2023-10-19','2023-10-23 14:07:01','2023-10-23 14:07:01'),(102,636045891,29,'14:06','2023-10-23 14:07:01','2023-10-23 14:07:01'),(103,636045891,30,'Jl blaa','2023-10-23 14:07:01','2023-10-23 14:07:01'),(104,636045891,31,'Jl blaa','2023-10-23 14:07:01','2023-10-23 14:07:01'),(105,636045891,32,'Shani Indira Natio','2023-10-23 14:07:01','2023-10-23 14:07:01'),(106,636045891,33,'Perempuan','2023-10-23 14:07:01','2023-10-23 14:07:01'),(107,636045891,34,'Jogja','2023-10-23 14:07:01','2023-10-23 14:07:01'),(108,636045891,35,'2023-10-20','2023-10-23 14:07:01','2023-10-23 14:07:01'),(109,636045891,36,'0','2023-10-23 14:07:01','2023-10-23 14:07:01'),(110,636045891,37,'Islam','2023-10-23 14:07:01','2023-10-23 14:07:01'),(111,636045891,38,'Artis','2023-10-23 14:07:01','2023-10-23 14:07:01'),(112,636045891,39,'3220100012345678','2023-10-23 14:07:01','2023-10-23 14:07:01'),(113,636045891,40,'Jl. Malioboro','2023-10-23 14:07:01','2023-10-23 14:07:01'),(114,891773073,1,'Wowoqs','2023-10-23 22:41:17','2023-10-23 22:41:17'),(115,891773073,2,'Laki-laki','2023-10-23 22:41:17','2023-10-23 22:41:17'),(116,891773073,3,'Malang','2023-10-23 22:41:17','2023-10-23 22:41:17'),(117,891773073,4,'2012-02-17','2023-10-23 22:41:17','2023-10-23 22:41:17'),(118,891773073,5,'1','2023-10-23 22:41:17','2023-10-23 22:41:17'),(119,891773073,6,'Kristen','2023-10-23 22:41:17','2023-10-23 22:41:17'),(120,891773073,7,'A\'rif','2023-10-23 22:41:17','2023-10-23 22:41:17'),(121,891773073,8,'A\'mar','2023-10-23 22:41:17','2023-10-23 22:41:17'),(122,891773073,9,'31','2023-10-23 22:41:17','2023-10-23 22:41:17'),(123,891773073,10,'Peternak','2023-10-23 22:41:17','2023-10-23 22:41:17'),(124,891773073,11,'Njetak Ngasri','2023-10-23 22:41:17','2023-10-23 22:41:17'),(125,670862308,1,'Moreno','2023-10-23 23:03:43','2023-10-23 23:03:43'),(126,670862308,2,'Laki-laki','2023-10-23 23:03:43','2023-10-23 23:03:43'),(127,670862308,3,'Madiun','2023-10-23 23:03:43','2023-10-23 23:03:43'),(128,670862308,4,'2011-02-08','2023-10-23 23:03:43','2023-10-23 23:03:43'),(129,670862308,5,'2','2023-10-23 23:03:43','2023-10-23 23:03:43'),(130,670862308,6,'Islam','2023-10-23 23:03:43','2023-10-23 23:03:43'),(131,670862308,7,'A\'min','2023-10-23 23:03:43','2023-10-23 23:03:43'),(132,670862308,8,'A\'mar','2023-10-23 23:03:43','2023-10-23 23:03:43'),(133,670862308,9,'34','2023-10-23 23:03:43','2023-10-23 23:03:43'),(134,670862308,10,'Peternak','2023-10-23 23:03:43','2023-10-23 23:03:43'),(135,670862308,11,'&**!@*U@*!U','2023-10-23 23:03:43','2023-10-23 23:03:43'),(136,351936699,12,'3220100012345678','2023-10-23 23:30:33','2023-10-23 23:30:33'),(137,351936699,13,'Shani Indira Natio','2023-10-23 23:30:33','2023-10-23 23:30:33'),(138,351936699,14,'2211000120072002','2023-10-23 23:30:33','2023-10-23 23:30:33'),(139,351936699,15,'Bejon','2023-10-23 23:30:33','2023-10-23 23:30:33'),(140,351936699,16,'Jl. Malioboro','2023-10-23 23:30:33','2023-10-23 23:30:33'),(141,351936699,17,'Batu','2023-10-23 23:30:33','2023-10-23 23:30:33'),(142,351936699,18,'1','2023-10-23 23:30:33','2023-10-23 23:30:33');
/*!40000 ALTER TABLE `detail_transaksi_data_perubahan_penduduk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_transaksi_formulir_surat`
--

DROP TABLE IF EXISTS `detail_transaksi_formulir_surat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_transaksi_formulir_surat` (
  `id_detail_data_formulir` int(11) NOT NULL AUTO_INCREMENT,
  `id_sub_surat` int(11) NOT NULL,
  `id_persyaratan_kategori_surat` int(11) NOT NULL,
  `id_pengajuan_surat` int(11) NOT NULL,
  `data` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modifed` datetime NOT NULL,
  PRIMARY KEY (`id_detail_data_formulir`),
  KEY `c_detailformulirsurat_persyaratankategorisurat` (`id_persyaratan_kategori_surat`),
  KEY `c_detailformulirsurat_pengajuansurat` (`id_pengajuan_surat`),
  KEY `c_detailformulirsurat_subnamasurat` (`id_sub_surat`),
  CONSTRAINT `c_detailformulirsurat_pengajuansurat` FOREIGN KEY (`id_pengajuan_surat`) REFERENCES `transaksi_formulir_surat` (`id_pengajuan_surat`),
  CONSTRAINT `c_detailformulirsurat_persyaratankategorisurat` FOREIGN KEY (`id_persyaratan_kategori_surat`) REFERENCES `master_persyaratan_data_per_kategori_surat` (`id_persyaratan_kategori_surat`),
  CONSTRAINT `c_detailformulirsurat_subnamasurat` FOREIGN KEY (`id_sub_surat`) REFERENCES `master_sub_nama_surat` (`id_sub_nama_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=615 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_transaksi_formulir_surat`
--

LOCK TABLES `detail_transaksi_formulir_surat` WRITE;
/*!40000 ALTER TABLE `detail_transaksi_formulir_surat` DISABLE KEYS */;
INSERT INTO `detail_transaksi_formulir_surat` VALUES (1,2,301,190527359,'2','2023-10-16 10:29:16','2023-10-16 10:29:16'),(2,2,300,190527359,'KTP-EI','2023-10-16 10:29:16','2023-10-16 10:29:16'),(3,2,484,190527359,'WASTAM GANTENG BANGET','2023-10-16 10:29:16','2023-10-16 10:29:16'),(4,2,368,190527359,'087850886176','2023-10-16 10:29:16','2023-10-16 10:29:16'),(5,2,568,190527359,'Baru','2023-10-16 10:29:16','2023-10-16 10:29:16'),(6,2,569,190527359,'Penggantian Kepala Keluarga','2023-10-16 10:29:16','2023-10-16 10:29:16'),(7,2,570,190527359,'Menumpang dalam KK','2023-10-16 10:29:16','2023-10-16 10:29:16'),(8,2,571,190527359,'Hilang','2023-10-16 10:29:16','2023-10-16 10:29:16'),(9,2,572,190527359,'Baru','2023-10-16 10:29:16','2023-10-16 10:29:16'),(10,2,573,190527359,'Hilang','2023-10-16 10:29:16','2023-10-16 10:29:16'),(11,2,574,190527359,'Rusak','2023-10-16 10:29:16','2023-10-16 10:29:16'),(12,2,575,190527359,'Hilang','2023-10-16 10:29:16','2023-10-16 10:29:16'),(13,2,576,190527359,'Hilang','2023-10-16 10:29:16','2023-10-16 10:29:16'),(14,2,577,190527359,'Hilang','2023-10-16 10:29:16','2023-10-16 10:29:16'),(15,2,578,190527359,'Hilang','2023-10-16 10:29:16','2023-10-16 10:29:16'),(16,2,579,190527359,'Hilang','2023-10-16 10:29:16','2023-10-16 10:29:16'),(17,2,580,190527359,'Hilang / Rusak','2023-10-16 10:29:16','2023-10-16 10:29:16'),(18,2,631,190527359,'Hilang','2023-10-16 10:29:16','2023-10-16 10:29:16'),(19,2,630,190527359,'Hilang','2023-10-16 10:29:16','2023-10-16 10:29:16'),(20,2,638,190527359,'Hilang','2023-10-16 10:29:16','2023-10-16 10:29:16'),(21,2,632,190527359,'Hilang','2023-10-16 10:29:16','2023-10-16 10:29:16'),(22,2,585,190527359,'KK','2023-10-16 10:29:16','2023-10-16 10:29:16'),(23,2,633,190527359,'Hilang','2023-10-16 10:29:16','2023-10-16 10:29:16'),(24,2,634,190527359,'Hilang','2023-10-16 10:29:16','2023-10-16 10:29:16'),(25,2,632,190527359,'Hilang','2023-10-16 10:29:16','2023-10-16 10:29:16'),(26,2,394,190527359,'KK Lama / KK Rusak','2023-10-16 10:29:16','2023-10-16 10:29:16'),(27,2,395,190527359,'Buku Nikah / Kutipan Akta Perkawinan','2023-10-16 10:29:16','2023-10-16 10:29:16'),(28,2,396,190527359,'Kutipan Akta Pereraian','2023-10-16 10:29:16','2023-10-16 10:29:16'),(29,2,397,190527359,'Surat Keterangan Pindah','2023-10-16 10:29:16','2023-10-16 10:29:16'),(30,2,398,190527359,'Surat Keterangan Pindah Luar Negeri','2023-10-16 10:29:16','2023-10-16 10:29:16'),(31,2,399,190527359,'KTP-EI Rusak','2023-10-16 10:29:16','2023-10-16 10:29:16'),(32,2,400,190527359,'Dokumen Perjalanan','2023-10-16 10:29:16','2023-10-16 10:29:16'),(33,2,401,190527359,'Surat Keterangan Hilang dari Kepolisian','2023-10-16 10:29:16','2023-10-16 10:29:16'),(34,2,402,190527359,'Surat Keterangan / Bukti Perubahan Peristiwa Kependudukan dan Peristiwa Penting','2023-10-16 10:29:16','2023-10-16 10:29:16'),(35,2,403,190527359,'SPTJM Perkawinan / Perceraian belum tercatat','2023-10-16 10:29:16','2023-10-16 10:29:16'),(36,2,404,190527359,'Akta Kematian','2023-10-16 10:29:16','2023-10-16 10:29:16'),(37,2,405,190527359,'Surat Pernyataan penyebab terjadinya hilang atau rusak','2023-10-16 10:29:16','2023-10-16 10:29:16'),(38,2,406,190527359,'Surat Keterangan Pindah dari perwakilan RI','2023-10-16 10:29:16','2023-10-16 10:29:16'),(39,2,407,190527359,'Surat Pernyataan bersedia menerima sebagai anggota keluarga','2023-10-16 10:29:16','2023-10-16 10:29:16'),(40,2,408,190527359,'Surat kuasa pengasuhan anak dari orang tua / wali','2023-10-16 10:29:16','2023-10-16 10:29:16'),(41,2,409,190527359,'Kartu Izin Tinggal Tetap','2023-10-16 10:29:16','2023-10-16 10:29:16'),(42,1,301,328643373,'1','2023-10-20 14:36:07','2023-10-20 14:36:07'),(43,1,300,328643373,'Input Data Keluarga dan Anggota Keluarga WNI','2023-10-20 14:36:07','2023-10-20 14:36:07'),(44,1,249,328643373,'gathan','2023-10-20 14:36:07','2023-10-20 14:36:07'),(45,1,250,328643373,'desswwd','2023-10-20 14:36:07','2023-10-20 14:36:07'),(46,1,251,328643373,'desswwd','2023-10-20 14:36:07','2023-10-20 14:36:07'),(47,1,252,328643373,'65152','2023-10-20 14:36:07','2023-10-20 14:36:07'),(48,1,253,328643373,'98','2023-10-20 14:36:07','2023-10-20 14:36:07'),(49,1,254,328643373,'98','2023-10-20 14:36:07','2023-10-20 14:36:07'),(50,1,255,328643373,'12','2023-10-20 14:36:07','2023-10-20 14:36:07'),(51,1,256,328643373,'082193738173','2023-10-20 14:36:07','2023-10-20 14:36:07'),(52,1,257,328643373,'wedwd@gmail.com','2023-10-20 14:36:07','2023-10-20 14:36:07'),(53,1,258,328643373,'jawa timur','2023-10-20 14:36:07','2023-10-20 14:36:07'),(54,1,259,328643373,'malang','2023-10-20 14:36:07','2023-10-20 14:36:07'),(55,1,260,328643373,'cianjur','2023-10-20 14:36:07','2023-10-20 14:36:07'),(56,1,261,328643373,'magelang','2023-10-20 14:36:07','2023-10-20 14:36:07'),(57,1,262,328643373,'nedoan','2023-10-20 14:36:07','2023-10-20 14:36:07'),(58,1,263,328643373,'gajahan','2023-10-20 14:36:07','2023-10-20 14:36:07'),(59,1,264,328643373,'gajahan baeru','2023-10-20 14:36:07','2023-10-20 14:36:07'),(60,1,302,328643373,'tokyo','2023-10-20 14:36:07','2023-10-20 14:36:07'),(61,1,303,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(62,1,304,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(63,1,265,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(64,1,266,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(65,1,267,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(66,1,268,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(67,1,305,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(68,1,306,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(69,1,307,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(70,1,308,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(71,1,364,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(72,1,309,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(73,1,310,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(74,1,365,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(75,1,311,328643373,'Laki - Laki','2023-10-20 14:36:07','2023-10-20 14:36:07'),(76,1,312,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(77,1,313,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(78,1,314,328643373,'WNI','2023-10-20 14:36:07','2023-10-20 14:36:07'),(79,1,315,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(80,1,316,328643373,'Ada','2023-10-20 14:36:07','2023-10-20 14:36:07'),(81,1,317,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(82,1,318,328643373,'O','2023-10-20 14:36:07','2023-10-20 14:36:07'),(83,1,319,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(84,1,320,328643373,'Belum Kawin','2023-10-20 14:36:07','2023-10-20 14:36:07'),(85,1,321,328643373,'Ada','2023-10-20 14:36:07','2023-10-20 14:36:07'),(86,1,322,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(87,1,323,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(88,1,336,328643373,'Tidak Ada','2023-10-20 14:36:07','2023-10-20 14:36:07'),(89,1,337,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(90,1,338,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(91,1,339,328643373,'Kepala Keluarga','2023-10-20 14:36:07','2023-10-20 14:36:07'),(92,1,340,328643373,'Tidak Ada','2023-10-20 14:36:07','2023-10-20 14:36:07'),(93,1,341,328643373,'-','2023-10-20 14:36:07','2023-10-20 14:36:07'),(94,1,342,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(95,1,343,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(96,1,344,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(97,1,345,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(98,1,346,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(99,1,347,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(100,1,354,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(101,1,366,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(102,1,355,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(103,1,356,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(104,1,357,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(105,1,358,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(106,1,359,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(107,1,305,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(108,1,306,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(109,1,307,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(110,1,308,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(111,1,364,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(112,1,309,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(113,1,310,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(114,1,365,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(115,1,311,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(116,1,312,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(117,1,313,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(118,1,314,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(119,1,315,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(120,1,316,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(121,1,317,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(122,1,318,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(123,1,319,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(124,1,320,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(125,1,321,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(126,1,322,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(127,1,323,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(128,1,336,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(129,1,337,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(130,1,338,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(131,1,339,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(132,1,340,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(133,1,341,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(134,1,342,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(135,1,343,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(136,1,344,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(137,1,345,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(138,1,346,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(139,1,347,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(140,1,354,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(141,1,366,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(142,1,355,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(143,1,356,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(144,1,357,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(145,1,358,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(146,1,359,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(147,1,305,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(148,1,306,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(149,1,307,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(150,1,308,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(151,1,364,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(152,1,309,328643373,'-','2023-10-20 14:36:07','2023-10-20 14:36:07'),(153,1,310,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(154,1,365,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(155,1,311,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(156,1,312,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(157,1,313,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(158,1,314,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(159,1,315,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(160,1,316,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(161,1,317,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(162,1,318,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(163,1,319,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(164,1,320,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(165,1,321,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(166,1,322,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(167,1,323,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(168,1,336,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(169,1,337,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(170,1,338,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(171,1,339,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(172,1,340,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(173,1,341,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(174,1,342,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(175,1,343,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(176,1,344,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(177,1,345,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(178,1,346,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(179,1,347,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(180,1,354,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(181,1,366,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(182,1,355,328643373,'-','2023-10-20 14:36:07','2023-10-20 14:36:07'),(183,1,356,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(184,1,357,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(185,1,358,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(186,1,359,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(187,1,305,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(188,1,306,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(189,1,307,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(190,1,308,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(191,1,364,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(192,1,309,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(193,1,310,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(194,1,365,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(195,1,311,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(196,1,312,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(197,1,313,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(198,1,314,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(199,1,315,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(200,1,316,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(201,1,317,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(202,1,318,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(203,1,319,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(204,1,320,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(205,1,321,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(206,1,322,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(207,1,323,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(208,1,336,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(209,1,337,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(210,1,338,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(211,1,339,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(212,1,340,328643373,'-','2023-10-20 14:36:07','2023-10-20 14:36:07'),(213,1,341,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(214,1,342,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(215,1,343,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(216,1,344,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(217,1,345,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(218,1,346,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(219,1,347,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(220,1,354,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(221,1,366,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(222,1,355,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(223,1,356,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(224,1,357,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(225,1,358,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(226,1,359,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(227,1,305,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(228,1,306,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(229,1,307,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(230,1,308,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(231,1,364,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(232,1,309,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(233,1,310,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(234,1,365,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(235,1,311,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(236,1,312,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(237,1,313,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(238,1,314,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(239,1,315,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(240,1,316,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(241,1,317,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(242,1,318,328643373,'-','2023-10-20 14:36:07','2023-10-20 14:36:07'),(243,1,319,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(244,1,320,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(245,1,321,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(246,1,322,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(247,1,323,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(248,1,336,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(249,1,337,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(250,1,338,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(251,1,339,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(252,1,340,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(253,1,341,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(254,1,342,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(255,1,343,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(256,1,344,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(257,1,345,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(258,1,346,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(259,1,347,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(260,1,354,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(261,1,366,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(262,1,355,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(263,1,356,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(264,1,357,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(265,1,358,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(266,1,359,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(267,1,305,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(268,1,306,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(269,1,307,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(270,1,308,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(271,1,364,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(272,1,309,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(273,1,310,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(274,1,365,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(275,1,311,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(276,1,312,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(277,1,313,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(278,1,314,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(279,1,315,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(280,1,316,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(281,1,317,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(282,1,318,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(283,1,319,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(284,1,320,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(285,1,321,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(286,1,322,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(287,1,323,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(288,1,336,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(289,1,337,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(290,1,338,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(291,1,339,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(292,1,340,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(293,1,341,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(294,1,342,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(295,1,343,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(296,1,344,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(297,1,345,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(298,1,346,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(299,1,347,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(300,1,354,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(301,1,366,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(302,1,355,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(303,1,356,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(304,1,357,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(305,1,358,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(306,1,359,328643373,'','2023-10-20 14:36:07','2023-10-20 14:36:07'),(307,1,301,749381315,'1','2023-10-20 14:38:11','2023-10-20 14:38:11'),(308,1,300,749381315,'Input Data Keluarga dan Anggota Keluarga WNI','2023-10-20 14:38:11','2023-10-20 14:38:11'),(309,1,249,749381315,'249','2023-10-20 14:38:11','2023-10-20 14:38:11'),(310,1,250,749381315,'250','2023-10-20 14:38:11','2023-10-20 14:38:11'),(311,1,251,749381315,'251','2023-10-20 14:38:11','2023-10-20 14:38:11'),(312,1,252,749381315,'252','2023-10-20 14:38:11','2023-10-20 14:38:11'),(313,1,253,749381315,'253','2023-10-20 14:38:11','2023-10-20 14:38:11'),(314,1,254,749381315,'254','2023-10-20 14:38:11','2023-10-20 14:38:11'),(315,1,255,749381315,'255','2023-10-20 14:38:11','2023-10-20 14:38:11'),(316,1,256,749381315,'256','2023-10-20 14:38:11','2023-10-20 14:38:11'),(317,1,257,749381315,'257','2023-10-20 14:38:11','2023-10-20 14:38:11'),(318,1,258,749381315,'258','2023-10-20 14:38:11','2023-10-20 14:38:11'),(319,1,259,749381315,'259','2023-10-20 14:38:11','2023-10-20 14:38:11'),(320,1,260,749381315,'260','2023-10-20 14:38:11','2023-10-20 14:38:11'),(321,1,261,749381315,'261','2023-10-20 14:38:11','2023-10-20 14:38:11'),(322,1,262,749381315,'262','2023-10-20 14:38:11','2023-10-20 14:38:11'),(323,1,263,749381315,'263','2023-10-20 14:38:11','2023-10-20 14:38:11'),(324,1,264,749381315,'264','2023-10-20 14:38:11','2023-10-20 14:38:11'),(325,1,302,749381315,'302','2023-10-20 14:38:11','2023-10-20 14:38:11'),(326,1,303,749381315,'303','2023-10-20 14:38:11','2023-10-20 14:38:11'),(327,1,304,749381315,'304','2023-10-20 14:38:11','2023-10-20 14:38:11'),(328,1,265,749381315,'265','2023-10-20 14:38:11','2023-10-20 14:38:11'),(329,1,266,749381315,'266','2023-10-20 14:38:11','2023-10-20 14:38:11'),(330,1,267,749381315,'267','2023-10-20 14:38:11','2023-10-20 14:38:11'),(331,1,268,749381315,'268','2023-10-20 14:38:11','2023-10-20 14:38:11'),(332,1,305,749381315,'305','2023-10-20 14:38:11','2023-10-20 14:38:11'),(333,1,306,749381315,'306','2023-10-20 14:38:11','2023-10-20 14:38:11'),(334,1,307,749381315,'307','2023-10-20 14:38:11','2023-10-20 14:38:11'),(335,1,308,749381315,'308','2023-10-20 14:38:11','2023-10-20 14:38:11'),(336,1,364,749381315,'364','2023-10-20 14:38:11','2023-10-20 14:38:11'),(337,1,309,749381315,'309','2023-10-20 14:38:11','2023-10-20 14:38:11'),(338,1,310,749381315,'310','2023-10-20 14:38:11','2023-10-20 14:38:11'),(339,1,365,749381315,'365','2023-10-20 14:38:11','2023-10-20 14:38:11'),(340,1,311,749381315,'311','2023-10-20 14:38:11','2023-10-20 14:38:11'),(341,1,312,749381315,'312','2023-10-20 14:38:11','2023-10-20 14:38:11'),(342,1,313,749381315,'313','2023-10-20 14:38:11','2023-10-20 14:38:11'),(343,1,314,749381315,'314','2023-10-20 14:38:11','2023-10-20 14:38:11'),(344,1,315,749381315,'315','2023-10-20 14:38:11','2023-10-20 14:38:11'),(345,1,316,749381315,'316','2023-10-20 14:38:11','2023-10-20 14:38:11'),(346,1,317,749381315,'317','2023-10-20 14:38:11','2023-10-20 14:38:11'),(347,1,318,749381315,'318','2023-10-20 14:38:11','2023-10-20 14:38:11'),(348,1,319,749381315,'319','2023-10-20 14:38:11','2023-10-20 14:38:11'),(349,1,320,749381315,'320','2023-10-20 14:38:11','2023-10-20 14:38:11'),(350,1,321,749381315,'321','2023-10-20 14:38:11','2023-10-20 14:38:11'),(351,1,322,749381315,'322','2023-10-20 14:38:11','2023-10-20 14:38:11'),(352,1,323,749381315,'323','2023-10-20 14:38:11','2023-10-20 14:38:11'),(353,1,336,749381315,'336','2023-10-20 14:38:11','2023-10-20 14:38:11'),(354,1,337,749381315,'337','2023-10-20 14:38:11','2023-10-20 14:38:11'),(355,1,338,749381315,'338','2023-10-20 14:38:11','2023-10-20 14:38:11'),(356,1,339,749381315,'339','2023-10-20 14:38:11','2023-10-20 14:38:11'),(357,1,340,749381315,'340','2023-10-20 14:38:11','2023-10-20 14:38:11'),(358,1,341,749381315,'341','2023-10-20 14:38:11','2023-10-20 14:38:11'),(359,1,342,749381315,'342','2023-10-20 14:38:11','2023-10-20 14:38:11'),(360,1,343,749381315,'343','2023-10-20 14:38:11','2023-10-20 14:38:11'),(361,1,344,749381315,'344','2023-10-20 14:38:11','2023-10-20 14:38:11'),(362,1,345,749381315,'345','2023-10-20 14:38:11','2023-10-20 14:38:11'),(363,1,346,749381315,'346','2023-10-20 14:38:11','2023-10-20 14:38:11'),(364,1,347,749381315,'347','2023-10-20 14:38:11','2023-10-20 14:38:11'),(365,1,354,749381315,'354','2023-10-20 14:38:11','2023-10-20 14:38:11'),(366,1,366,749381315,'366','2023-10-20 14:38:11','2023-10-20 14:38:11'),(367,1,355,749381315,'355','2023-10-20 14:38:11','2023-10-20 14:38:11'),(368,1,356,749381315,'356','2023-10-20 14:38:11','2023-10-20 14:38:11'),(369,1,357,749381315,'357','2023-10-20 14:38:11','2023-10-20 14:38:11'),(370,1,358,749381315,'358','2023-10-20 14:38:11','2023-10-20 14:38:11'),(371,1,359,749381315,'359','2023-10-20 14:38:11','2023-10-20 14:38:11'),(372,1,305,749381315,'305','2023-10-20 14:38:11','2023-10-20 14:38:11'),(373,1,306,749381315,'306','2023-10-20 14:38:11','2023-10-20 14:38:11'),(374,1,307,749381315,'307','2023-10-20 14:38:11','2023-10-20 14:38:11'),(375,1,308,749381315,'308','2023-10-20 14:38:11','2023-10-20 14:38:11'),(376,1,364,749381315,'364','2023-10-20 14:38:11','2023-10-20 14:38:11'),(377,1,309,749381315,'309','2023-10-20 14:38:11','2023-10-20 14:38:11'),(378,1,310,749381315,'310','2023-10-20 14:38:11','2023-10-20 14:38:11'),(379,1,365,749381315,'365','2023-10-20 14:38:11','2023-10-20 14:38:11'),(380,1,311,749381315,'311','2023-10-20 14:38:11','2023-10-20 14:38:11'),(381,1,312,749381315,'312','2023-10-20 14:38:11','2023-10-20 14:38:11'),(382,1,313,749381315,'313','2023-10-20 14:38:11','2023-10-20 14:38:11'),(383,1,314,749381315,'314','2023-10-20 14:38:11','2023-10-20 14:38:11'),(384,1,315,749381315,'315','2023-10-20 14:38:11','2023-10-20 14:38:11'),(385,1,316,749381315,'316','2023-10-20 14:38:11','2023-10-20 14:38:11'),(386,1,317,749381315,'317','2023-10-20 14:38:11','2023-10-20 14:38:11'),(387,1,318,749381315,'318','2023-10-20 14:38:11','2023-10-20 14:38:11'),(388,1,319,749381315,'319','2023-10-20 14:38:11','2023-10-20 14:38:11'),(389,1,320,749381315,'320','2023-10-20 14:38:11','2023-10-20 14:38:11'),(390,1,321,749381315,'321','2023-10-20 14:38:11','2023-10-20 14:38:11'),(391,1,322,749381315,'322','2023-10-20 14:38:11','2023-10-20 14:38:11'),(392,1,323,749381315,'323','2023-10-20 14:38:11','2023-10-20 14:38:11'),(393,1,336,749381315,'336','2023-10-20 14:38:11','2023-10-20 14:38:11'),(394,1,337,749381315,'337','2023-10-20 14:38:11','2023-10-20 14:38:11'),(395,1,338,749381315,'338','2023-10-20 14:38:11','2023-10-20 14:38:11'),(396,1,339,749381315,'339','2023-10-20 14:38:11','2023-10-20 14:38:11'),(397,1,340,749381315,'340','2023-10-20 14:38:11','2023-10-20 14:38:11'),(398,1,341,749381315,'341','2023-10-20 14:38:11','2023-10-20 14:38:11'),(399,1,342,749381315,'342','2023-10-20 14:38:11','2023-10-20 14:38:11'),(400,1,343,749381315,'343','2023-10-20 14:38:11','2023-10-20 14:38:11'),(401,1,344,749381315,'344','2023-10-20 14:38:11','2023-10-20 14:38:11'),(402,1,345,749381315,'345','2023-10-20 14:38:11','2023-10-20 14:38:11'),(403,1,346,749381315,'346','2023-10-20 14:38:11','2023-10-20 14:38:11'),(404,1,347,749381315,'347','2023-10-20 14:38:11','2023-10-20 14:38:11'),(405,1,354,749381315,'354','2023-10-20 14:38:11','2023-10-20 14:38:11'),(406,1,366,749381315,'366','2023-10-20 14:38:11','2023-10-20 14:38:11'),(407,1,355,749381315,'355','2023-10-20 14:38:11','2023-10-20 14:38:11'),(408,1,356,749381315,'356','2023-10-20 14:38:11','2023-10-20 14:38:11'),(409,1,357,749381315,'357','2023-10-20 14:38:11','2023-10-20 14:38:11'),(410,1,358,749381315,'358','2023-10-20 14:38:11','2023-10-20 14:38:11'),(411,1,359,749381315,'359','2023-10-20 14:38:11','2023-10-20 14:38:11'),(412,1,305,749381315,'305','2023-10-20 14:38:11','2023-10-20 14:38:11'),(413,1,306,749381315,'306','2023-10-20 14:38:11','2023-10-20 14:38:11'),(414,1,307,749381315,'307','2023-10-20 14:38:11','2023-10-20 14:38:11'),(415,1,308,749381315,'308','2023-10-20 14:38:11','2023-10-20 14:38:11'),(416,1,364,749381315,'364','2023-10-20 14:38:11','2023-10-20 14:38:11'),(417,1,309,749381315,'309','2023-10-20 14:38:11','2023-10-20 14:38:11'),(418,1,310,749381315,'310','2023-10-20 14:38:11','2023-10-20 14:38:11'),(419,1,365,749381315,'365','2023-10-20 14:38:11','2023-10-20 14:38:11'),(420,1,311,749381315,'311','2023-10-20 14:38:11','2023-10-20 14:38:11'),(421,1,312,749381315,'312','2023-10-20 14:38:11','2023-10-20 14:38:11'),(422,1,313,749381315,'313','2023-10-20 14:38:11','2023-10-20 14:38:11'),(423,1,314,749381315,'314','2023-10-20 14:38:11','2023-10-20 14:38:11'),(424,1,315,749381315,'315','2023-10-20 14:38:11','2023-10-20 14:38:11'),(425,1,316,749381315,'316','2023-10-20 14:38:11','2023-10-20 14:38:11'),(426,1,317,749381315,'317','2023-10-20 14:38:11','2023-10-20 14:38:11'),(427,1,318,749381315,'318','2023-10-20 14:38:11','2023-10-20 14:38:11'),(428,1,319,749381315,'319','2023-10-20 14:38:11','2023-10-20 14:38:11'),(429,1,320,749381315,'320','2023-10-20 14:38:11','2023-10-20 14:38:11'),(430,1,321,749381315,'321','2023-10-20 14:38:11','2023-10-20 14:38:11'),(431,1,322,749381315,'322','2023-10-20 14:38:11','2023-10-20 14:38:11'),(432,1,323,749381315,'323','2023-10-20 14:38:11','2023-10-20 14:38:11'),(433,1,336,749381315,'336','2023-10-20 14:38:11','2023-10-20 14:38:11'),(434,1,337,749381315,'337','2023-10-20 14:38:11','2023-10-20 14:38:11'),(435,1,338,749381315,'338','2023-10-20 14:38:11','2023-10-20 14:38:11'),(436,1,339,749381315,'339','2023-10-20 14:38:11','2023-10-20 14:38:11'),(437,1,340,749381315,'340','2023-10-20 14:38:11','2023-10-20 14:38:11'),(438,1,341,749381315,'341','2023-10-20 14:38:11','2023-10-20 14:38:11'),(439,1,342,749381315,'342','2023-10-20 14:38:11','2023-10-20 14:38:11'),(440,1,343,749381315,'343','2023-10-20 14:38:11','2023-10-20 14:38:11'),(441,1,344,749381315,'344','2023-10-20 14:38:11','2023-10-20 14:38:11'),(442,1,345,749381315,'345','2023-10-20 14:38:11','2023-10-20 14:38:11'),(443,1,346,749381315,'346','2023-10-20 14:38:11','2023-10-20 14:38:11'),(444,1,347,749381315,'347','2023-10-20 14:38:11','2023-10-20 14:38:11'),(445,1,354,749381315,'354','2023-10-20 14:38:11','2023-10-20 14:38:11'),(446,1,366,749381315,'366','2023-10-20 14:38:11','2023-10-20 14:38:11'),(447,1,355,749381315,'355','2023-10-20 14:38:11','2023-10-20 14:38:11'),(448,1,356,749381315,'356','2023-10-20 14:38:11','2023-10-20 14:38:11'),(449,1,357,749381315,'357','2023-10-20 14:38:11','2023-10-20 14:38:11'),(450,1,358,749381315,'358','2023-10-20 14:38:11','2023-10-20 14:38:11'),(451,1,359,749381315,'359','2023-10-20 14:38:11','2023-10-20 14:38:11'),(452,1,305,749381315,'305','2023-10-20 14:38:11','2023-10-20 14:38:11'),(453,1,306,749381315,'306','2023-10-20 14:38:11','2023-10-20 14:38:11'),(454,1,307,749381315,'307','2023-10-20 14:38:11','2023-10-20 14:38:11'),(455,1,308,749381315,'308','2023-10-20 14:38:11','2023-10-20 14:38:11'),(456,1,364,749381315,'364','2023-10-20 14:38:11','2023-10-20 14:38:11'),(457,1,309,749381315,'309','2023-10-20 14:38:11','2023-10-20 14:38:11'),(458,1,310,749381315,'310','2023-10-20 14:38:11','2023-10-20 14:38:11'),(459,1,365,749381315,'365','2023-10-20 14:38:11','2023-10-20 14:38:11'),(460,1,311,749381315,'311','2023-10-20 14:38:11','2023-10-20 14:38:11'),(461,1,312,749381315,'312','2023-10-20 14:38:11','2023-10-20 14:38:11'),(462,1,313,749381315,'313','2023-10-20 14:38:11','2023-10-20 14:38:11'),(463,1,314,749381315,'314','2023-10-20 14:38:11','2023-10-20 14:38:11'),(464,1,315,749381315,'315','2023-10-20 14:38:11','2023-10-20 14:38:11'),(465,1,316,749381315,'316','2023-10-20 14:38:11','2023-10-20 14:38:11'),(466,1,317,749381315,'317','2023-10-20 14:38:11','2023-10-20 14:38:11'),(467,1,318,749381315,'318','2023-10-20 14:38:11','2023-10-20 14:38:11'),(468,1,319,749381315,'319','2023-10-20 14:38:11','2023-10-20 14:38:11'),(469,1,320,749381315,'320','2023-10-20 14:38:11','2023-10-20 14:38:11'),(470,1,321,749381315,'321','2023-10-20 14:38:11','2023-10-20 14:38:11'),(471,1,322,749381315,'322','2023-10-20 14:38:11','2023-10-20 14:38:11'),(472,1,323,749381315,'323','2023-10-20 14:38:11','2023-10-20 14:38:11'),(473,1,336,749381315,'336','2023-10-20 14:38:11','2023-10-20 14:38:11'),(474,1,337,749381315,'337','2023-10-20 14:38:11','2023-10-20 14:38:11'),(475,1,338,749381315,'338','2023-10-20 14:38:11','2023-10-20 14:38:11'),(476,1,339,749381315,'339','2023-10-20 14:38:11','2023-10-20 14:38:11'),(477,1,340,749381315,'340','2023-10-20 14:38:11','2023-10-20 14:38:11'),(478,1,341,749381315,'341','2023-10-20 14:38:11','2023-10-20 14:38:11'),(479,1,342,749381315,'342','2023-10-20 14:38:11','2023-10-20 14:38:11'),(480,1,343,749381315,'343','2023-10-20 14:38:11','2023-10-20 14:38:11'),(481,1,344,749381315,'344','2023-10-20 14:38:11','2023-10-20 14:38:11'),(482,1,345,749381315,'345','2023-10-20 14:38:11','2023-10-20 14:38:11'),(483,1,346,749381315,'346','2023-10-20 14:38:11','2023-10-20 14:38:11'),(484,1,347,749381315,'347','2023-10-20 14:38:11','2023-10-20 14:38:11'),(485,1,354,749381315,'354','2023-10-20 14:38:11','2023-10-20 14:38:11'),(486,1,366,749381315,'366','2023-10-20 14:38:11','2023-10-20 14:38:11'),(487,1,355,749381315,'355','2023-10-20 14:38:11','2023-10-20 14:38:11'),(488,1,356,749381315,'356','2023-10-20 14:38:11','2023-10-20 14:38:11'),(489,1,357,749381315,'357','2023-10-20 14:38:11','2023-10-20 14:38:11'),(490,1,358,749381315,'358','2023-10-20 14:38:11','2023-10-20 14:38:11'),(491,1,359,749381315,'359','2023-10-20 14:38:11','2023-10-20 14:38:11'),(492,1,305,749381315,'305','2023-10-20 14:38:11','2023-10-20 14:38:11'),(493,1,306,749381315,'306','2023-10-20 14:38:11','2023-10-20 14:38:11'),(494,1,307,749381315,'307','2023-10-20 14:38:11','2023-10-20 14:38:11'),(495,1,308,749381315,'308','2023-10-20 14:38:11','2023-10-20 14:38:11'),(496,1,364,749381315,'364','2023-10-20 14:38:11','2023-10-20 14:38:11'),(497,1,309,749381315,'309','2023-10-20 14:38:11','2023-10-20 14:38:11'),(498,1,310,749381315,'310','2023-10-20 14:38:11','2023-10-20 14:38:11'),(499,1,365,749381315,'365','2023-10-20 14:38:11','2023-10-20 14:38:11'),(500,1,311,749381315,'311','2023-10-20 14:38:11','2023-10-20 14:38:11'),(501,1,312,749381315,'312','2023-10-20 14:38:11','2023-10-20 14:38:11'),(502,1,313,749381315,'313','2023-10-20 14:38:11','2023-10-20 14:38:11'),(503,1,314,749381315,'314','2023-10-20 14:38:11','2023-10-20 14:38:11'),(504,1,315,749381315,'315','2023-10-20 14:38:11','2023-10-20 14:38:11'),(505,1,316,749381315,'316','2023-10-20 14:38:11','2023-10-20 14:38:11'),(506,1,317,749381315,'317','2023-10-20 14:38:11','2023-10-20 14:38:11'),(507,1,318,749381315,'318','2023-10-20 14:38:11','2023-10-20 14:38:11'),(508,1,319,749381315,'319','2023-10-20 14:38:11','2023-10-20 14:38:11'),(509,1,320,749381315,'320','2023-10-20 14:38:11','2023-10-20 14:38:11'),(510,1,321,749381315,'321','2023-10-20 14:38:11','2023-10-20 14:38:11'),(511,1,322,749381315,'322','2023-10-20 14:38:11','2023-10-20 14:38:11'),(512,1,323,749381315,'323','2023-10-20 14:38:11','2023-10-20 14:38:11'),(513,1,336,749381315,'336','2023-10-20 14:38:11','2023-10-20 14:38:11'),(514,1,337,749381315,'337','2023-10-20 14:38:11','2023-10-20 14:38:11'),(515,1,338,749381315,'338','2023-10-20 14:38:11','2023-10-20 14:38:11'),(516,1,339,749381315,'339','2023-10-20 14:38:11','2023-10-20 14:38:11'),(517,1,340,749381315,'340','2023-10-20 14:38:11','2023-10-20 14:38:11'),(518,1,341,749381315,'341','2023-10-20 14:38:11','2023-10-20 14:38:11'),(519,1,342,749381315,'342','2023-10-20 14:38:11','2023-10-20 14:38:11'),(520,1,343,749381315,'343','2023-10-20 14:38:11','2023-10-20 14:38:11'),(521,1,344,749381315,'344','2023-10-20 14:38:11','2023-10-20 14:38:11'),(522,1,345,749381315,'345','2023-10-20 14:38:11','2023-10-20 14:38:11'),(523,1,346,749381315,'346','2023-10-20 14:38:11','2023-10-20 14:38:11'),(524,1,347,749381315,'347','2023-10-20 14:38:11','2023-10-20 14:38:11'),(525,1,354,749381315,'354','2023-10-20 14:38:11','2023-10-20 14:38:11'),(526,1,366,749381315,'366','2023-10-20 14:38:11','2023-10-20 14:38:11'),(527,1,355,749381315,'355','2023-10-20 14:38:11','2023-10-20 14:38:11'),(528,1,356,749381315,'356','2023-10-20 14:38:11','2023-10-20 14:38:11'),(529,1,357,749381315,'357','2023-10-20 14:38:11','2023-10-20 14:38:11'),(530,1,358,749381315,'358','2023-10-20 14:38:11','2023-10-20 14:38:11'),(531,1,359,749381315,'359','2023-10-20 14:38:11','2023-10-20 14:38:11'),(532,1,305,749381315,'305','2023-10-20 14:38:11','2023-10-20 14:38:11'),(533,1,306,749381315,'306','2023-10-20 14:38:11','2023-10-20 14:38:11'),(534,1,307,749381315,'307','2023-10-20 14:38:11','2023-10-20 14:38:11'),(535,1,308,749381315,'308','2023-10-20 14:38:11','2023-10-20 14:38:11'),(536,1,364,749381315,'364','2023-10-20 14:38:11','2023-10-20 14:38:11'),(537,1,309,749381315,'309','2023-10-20 14:38:11','2023-10-20 14:38:11'),(538,1,310,749381315,'310','2023-10-20 14:38:11','2023-10-20 14:38:11'),(539,1,365,749381315,'365','2023-10-20 14:38:11','2023-10-20 14:38:11'),(540,1,311,749381315,'311','2023-10-20 14:38:11','2023-10-20 14:38:11'),(541,1,312,749381315,'312','2023-10-20 14:38:11','2023-10-20 14:38:11'),(542,1,313,749381315,'313','2023-10-20 14:38:11','2023-10-20 14:38:11'),(543,1,314,749381315,'314','2023-10-20 14:38:11','2023-10-20 14:38:11'),(544,1,315,749381315,'315','2023-10-20 14:38:11','2023-10-20 14:38:11'),(545,1,316,749381315,'316','2023-10-20 14:38:11','2023-10-20 14:38:11'),(546,1,317,749381315,'317','2023-10-20 14:38:11','2023-10-20 14:38:11'),(547,1,318,749381315,'318','2023-10-20 14:38:11','2023-10-20 14:38:11'),(548,1,319,749381315,'319','2023-10-20 14:38:11','2023-10-20 14:38:11'),(549,1,320,749381315,'320','2023-10-20 14:38:11','2023-10-20 14:38:11'),(550,1,321,749381315,'321','2023-10-20 14:38:11','2023-10-20 14:38:11'),(551,1,322,749381315,'322','2023-10-20 14:38:11','2023-10-20 14:38:11'),(552,1,323,749381315,'323','2023-10-20 14:38:11','2023-10-20 14:38:11'),(553,1,336,749381315,'336','2023-10-20 14:38:11','2023-10-20 14:38:11'),(554,1,337,749381315,'337','2023-10-20 14:38:11','2023-10-20 14:38:11'),(555,1,338,749381315,'338','2023-10-20 14:38:11','2023-10-20 14:38:11'),(556,1,339,749381315,'339','2023-10-20 14:38:11','2023-10-20 14:38:11'),(557,1,340,749381315,'340','2023-10-20 14:38:11','2023-10-20 14:38:11'),(558,1,341,749381315,'341','2023-10-20 14:38:11','2023-10-20 14:38:11'),(559,1,342,749381315,'342','2023-10-20 14:38:11','2023-10-20 14:38:11'),(560,1,343,749381315,'343','2023-10-20 14:38:11','2023-10-20 14:38:11'),(561,1,344,749381315,'344','2023-10-20 14:38:11','2023-10-20 14:38:11'),(562,1,345,749381315,'345','2023-10-20 14:38:11','2023-10-20 14:38:11'),(563,1,346,749381315,'346','2023-10-20 14:38:11','2023-10-20 14:38:11'),(564,1,347,749381315,'347','2023-10-20 14:38:11','2023-10-20 14:38:11'),(565,1,354,749381315,'354','2023-10-20 14:38:11','2023-10-20 14:38:11'),(566,1,366,749381315,'366','2023-10-20 14:38:11','2023-10-20 14:38:11'),(567,1,355,749381315,'355','2023-10-20 14:38:11','2023-10-20 14:38:11'),(568,1,356,749381315,'356','2023-10-20 14:38:11','2023-10-20 14:38:11'),(569,1,357,749381315,'357','2023-10-20 14:38:11','2023-10-20 14:38:11'),(570,1,358,749381315,'358','2023-10-20 14:38:11','2023-10-20 14:38:11'),(571,1,359,749381315,'359','2023-10-20 14:38:11','2023-10-20 14:38:11'),(572,14,187,615613982,'11','2023-10-23 19:13:41','2023-10-23 19:13:41'),(573,14,188,615613982,'11','2023-10-23 19:13:41','2023-10-23 19:13:41'),(574,14,189,615613982,'11','2023-10-23 19:13:41','2023-10-23 19:13:41'),(575,14,190,615613982,'11','2023-10-23 19:13:41','2023-10-23 19:13:41'),(576,14,191,615613982,'11','2023-10-23 19:13:41','2023-10-23 19:13:41'),(577,14,187,944495736,'122','2023-10-23 19:35:45','2023-10-23 19:35:45'),(578,14,188,944495736,'22','2023-10-23 19:35:45','2023-10-23 19:35:45'),(579,14,189,944495736,'12','2023-10-23 19:35:45','2023-10-23 19:35:45'),(580,14,190,944495736,'32','2023-10-23 19:35:45','2023-10-23 19:35:45'),(581,14,191,944495736,'12','2023-10-23 19:35:45','2023-10-23 19:35:45'),(582,27,192,182591557,'123','2023-10-23 19:40:17','2023-10-23 19:40:17'),(583,27,193,182591557,'123','2023-10-23 19:40:17','2023-10-23 19:40:17'),(584,27,194,182591557,'123','2023-10-23 19:40:17','2023-10-23 19:40:17'),(585,27,195,182591557,'123','2023-10-23 19:40:17','2023-10-23 19:40:17'),(586,27,196,182591557,'123','2023-10-23 19:40:17','2023-10-23 19:40:17'),(587,27,197,182591557,'123','2023-10-23 19:40:17','2023-10-23 19:40:17'),(588,27,192,253180020,'11','2023-10-23 19:43:25','2023-10-23 19:43:25'),(589,27,193,253180020,'11','2023-10-23 19:43:25','2023-10-23 19:43:25'),(590,27,194,253180020,'11','2023-10-23 19:43:25','2023-10-23 19:43:25'),(591,27,195,253180020,'11','2023-10-23 19:43:25','2023-10-23 19:43:25'),(592,27,196,253180020,'11','2023-10-23 19:43:25','2023-10-23 19:43:25'),(593,27,197,253180020,'11','2023-10-23 19:43:25','2023-10-23 19:43:25'),(594,14,187,441206353,'11','2023-10-23 19:43:38','2023-10-23 19:43:38'),(595,14,188,441206353,'11','2023-10-23 19:43:38','2023-10-23 19:43:38'),(596,14,189,441206353,'11','2023-10-23 19:43:38','2023-10-23 19:43:38'),(597,14,190,441206353,'11','2023-10-23 19:43:38','2023-10-23 19:43:38'),(598,14,191,441206353,'11','2023-10-23 19:43:38','2023-10-23 19:43:38'),(599,14,187,495135178,'11','2023-10-23 19:43:55','2023-10-23 19:43:55'),(600,14,188,495135178,'11','2023-10-23 19:43:55','2023-10-23 19:43:55'),(601,14,189,495135178,'11','2023-10-23 19:43:55','2023-10-23 19:43:55'),(602,14,190,495135178,'11','2023-10-23 19:43:55','2023-10-23 19:43:55'),(603,14,191,495135178,'11','2023-10-23 19:43:55','2023-10-23 19:43:55'),(604,14,187,706246481,'11','2023-10-23 19:44:11','2023-10-23 19:44:11'),(605,14,188,706246481,'11','2023-10-23 19:44:11','2023-10-23 19:44:11'),(606,14,189,706246481,'11','2023-10-23 19:44:11','2023-10-23 19:44:11'),(607,14,190,706246481,'11','2023-10-23 19:44:11','2023-10-23 19:44:11'),(608,14,191,706246481,'11','2023-10-23 19:44:11','2023-10-23 19:44:11'),(609,27,192,567724927,'11','2023-10-23 19:44:24','2023-10-23 19:44:24'),(610,27,193,567724927,'11','2023-10-23 19:44:24','2023-10-23 19:44:24'),(611,27,194,567724927,'11','2023-10-23 19:44:24','2023-10-23 19:44:24'),(612,27,195,567724927,'11','2023-10-23 19:44:24','2023-10-23 19:44:24'),(613,27,196,567724927,'11','2023-10-23 19:44:24','2023-10-23 19:44:24'),(614,27,197,567724927,'11','2023-10-23 19:44:24','2023-10-23 19:44:24');
/*!40000 ALTER TABLE `detail_transaksi_formulir_surat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_transaksi_penduduk`
--

DROP TABLE IF EXISTS `detail_transaksi_penduduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_transaksi_penduduk` (
  `id_detail_penduduk` int(11) NOT NULL AUTO_INCREMENT,
  `nik` bigint(16) NOT NULL,
  `id_jenis_data_penduduk` int(11) NOT NULL,
  `data_penduduk` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_detail_penduduk`),
  KEY `c_detailpenduduk_penduduk` (`nik`),
  KEY `c_detailpenduduk_jenisdata` (`id_jenis_data_penduduk`),
  CONSTRAINT `c_detailpenduduk_jenisdata` FOREIGN KEY (`id_jenis_data_penduduk`) REFERENCES `master_jenis_data_penduduk` (`id_jenis_data`),
  CONSTRAINT `c_detailpenduduk_penduduk` FOREIGN KEY (`nik`) REFERENCES `transaksi_penduduk` (`nik`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_transaksi_penduduk`
--

LOCK TABLES `detail_transaksi_penduduk` WRITE;
/*!40000 ALTER TABLE `detail_transaksi_penduduk` DISABLE KEYS */;
INSERT INTO `detail_transaksi_penduduk` VALUES (1,3514181709020001,1,'','2023-10-20 14:31:13','2023-10-20 14:31:13'),(2,3514181709020001,2,'','2023-10-20 14:31:13','2023-10-20 14:31:13'),(3,3220100123220100,1,'Gencana','2023-10-23 08:53:15','2023-10-23 08:53:15'),(4,3220100123220100,2,'Kamsahamida','2023-10-23 08:53:15','2023-10-23 08:53:15'),(5,3572023201010004,1,'Beni Purnomo','2023-10-23 09:17:45','2023-10-23 09:17:45'),(6,3572023201010004,2,'Nur Salsabila','2023-10-23 09:17:45','2023-10-23 09:17:45'),(7,3578046007020002,1,'','2023-10-23 09:50:21','2023-10-23 09:50:21'),(8,3578046007020002,2,'','2023-10-23 09:50:21','2023-10-23 09:50:21'),(9,3507220505020002,1,'Anton','2023-10-23 10:05:06','2023-10-23 10:05:06'),(10,3507220505020002,2,'Aisyah','2023-10-23 10:05:06','2023-10-23 10:05:06'),(11,3220100013456789,1,'Henri Perdana Natio','2023-10-23 10:48:34','2023-10-23 10:48:34'),(12,3220100013456789,2,'Siti Munawaroh','2023-10-23 10:48:34','2023-10-23 11:02:57'),(13,3322116655449988,1,'Gathan Fitra Krisna','2023-10-23 11:19:51','2023-10-23 11:19:51'),(14,3322116655449988,2,'Sintya Agustin','2023-10-23 11:19:51','2023-10-23 11:19:51'),(15,3220100012345678,1,'Anton','2023-10-23 14:04:46','2023-10-23 14:04:46'),(16,3220100012345678,2,'Siti','2023-10-23 14:04:46','2023-10-23 14:04:46'),(17,3241824182482177,1,'Tino','2023-10-24 09:08:50','2023-10-24 09:08:50'),(18,3241824182482177,2,'Tina','2023-10-24 09:08:50','2023-10-24 09:08:50');
/*!40000 ALTER TABLE `detail_transaksi_penduduk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_transaksi_role_akun`
--

DROP TABLE IF EXISTS `detail_transaksi_role_akun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_transaksi_role_akun` (
  `id_detail_role` int(11) NOT NULL AUTO_INCREMENT,
  `id_penjabat` int(11) NOT NULL,
  `id_data_role` int(11) NOT NULL,
  `data_role` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modifed` datetime NOT NULL,
  PRIMARY KEY (`id_detail_role`),
  KEY `c_detailrole_masterrole` (`id_penjabat`),
  KEY `c_detailrole_datarole` (`id_data_role`),
  CONSTRAINT `c_detailrole_datarole` FOREIGN KEY (`id_data_role`) REFERENCES `master_data_role_akun` (`id_data_role`),
  CONSTRAINT `c_detailrole_masterrole` FOREIGN KEY (`id_penjabat`) REFERENCES `master_role_akun` (`id_pejabat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_transaksi_role_akun`
--

LOCK TABLES `detail_transaksi_role_akun` WRITE;
/*!40000 ALTER TABLE `detail_transaksi_role_akun` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_transaksi_role_akun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_activity_masteruser`
--

DROP TABLE IF EXISTS `log_activity_masteruser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_activity_masteruser` (
  `nik` bigint(16) NOT NULL,
  `aksi` varchar(255) NOT NULL,
  `user_terkait` bigint(16) NOT NULL,
  `tanggal_waktu` datetime NOT NULL,
  `client_ip` varchar(15) NOT NULL,
  `mac_address` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_activity_masteruser`
--

LOCK TABLES `log_activity_masteruser` WRITE;
/*!40000 ALTER TABLE `log_activity_masteruser` DISABLE KEYS */;
INSERT INTO `log_activity_masteruser` VALUES (3514181709020001,'Menambahkan role',3572021111110004,'2023-10-23 08:39:27','180.248.27.44','302362149'),(3514181709020001,'Menambahkan role',3220100123220100,'2023-10-23 10:07:28','180.248.27.44','813978729'),(3514181709020001,'Menambahkan role',3507220505020002,'2023-10-23 22:07:50','180.248.29.237','170396505');
/*!40000 ALTER TABLE `log_activity_masteruser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_activity_user`
--

DROP TABLE IF EXISTS `log_activity_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_activity_user` (
  `nik` bigint(16) NOT NULL,
  `aksi` varchar(255) NOT NULL,
  `tanggal_waktu` datetime NOT NULL,
  `client_ip` varchar(15) NOT NULL,
  `mac_address` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_activity_user`
--

LOCK TABLES `log_activity_user` WRITE;
/*!40000 ALTER TABLE `log_activity_user` DISABLE KEYS */;
INSERT INTO `log_activity_user` VALUES (3514181709020001,'Keluar','2023-10-16 09:00:43','::1','169133584'),(3514181709020001,'Masuk','2023-10-16 09:01:08','::1','249857482'),(3514181709020001,'Keluar','2023-10-16 09:26:28','::1','249857482'),(3514181709020001,'Masuk','2023-10-16 09:35:21','::1','716064224'),(3514181709020001,'Keluar','2023-10-16 09:35:32','::1','716064224'),(3514181709020001,'Masuk','2023-10-16 09:46:46','::1','527553497'),(3514181709020001,'Keluar','2023-10-16 09:49:25','::1','527553497'),(3514181709020001,'Masuk','2023-10-16 09:59:37','::1','964871430'),(0,'Keluar','2023-10-16 10:15:00','::1','540885261'),(3514181709020001,'Masuk','2023-10-16 10:18:02','::1','759823933'),(3514181709020001,'Keluar','2023-10-16 10:18:17','::1','759823933'),(3220100199999999,'Keluar','2023-10-16 10:25:17','::1','348082945'),(3514181709020001,'Masuk','2023-10-16 10:25:22','::1','413447410'),(3514181709020001,'Keluar','2023-10-16 10:30:13','::1','413447410'),(3220100199999999,'Masuk','2023-10-16 10:30:18','::1','379870129'),(3514181709020001,'Masuk','2023-10-20 14:28:22','180.248.27.44','960312154'),(3220100199999999,'Masuk','2023-10-20 15:19:47','180.248.27.44','744017402'),(3220100199999999,'Masuk','2023-10-23 08:31:08','180.248.27.44','150115082'),(3220100199999999,'Keluar','2023-10-23 08:31:46','180.248.27.44','150115082'),(3514181709020001,'Masuk','2023-10-23 08:33:14','180.248.27.44','195921572'),(3514181709020001,'Keluar','2023-10-23 08:33:49','180.248.27.44','195921572'),(3220100012345678,'Masuk','2023-10-23 08:33:58','180.248.27.44','993647417'),(3220100012345678,'Keluar','2023-10-23 08:35:29','180.248.27.44','993647417'),(3220100199999999,'Masuk','2023-10-23 08:36:06','180.248.27.44','138947546'),(3514181709020001,'Masuk','2023-10-23 08:36:53','180.248.27.44','302362149'),(3220100123220100,'Masuk','2023-10-23 08:38:07','180.248.27.44','282291073'),(3220100123220100,'Keluar','2023-10-23 08:38:29','180.248.27.44','282291073'),(3572021111110004,'Keluar','2023-10-23 08:39:59','180.248.27.44','144903422'),(3572021111110004,'Masuk','2023-10-23 08:40:09','180.248.27.44','345343043'),(3514181709020001,'Masuk','2023-10-23 09:16:13','180.248.27.44','698818383'),(3514181709020001,'Keluar','2023-10-23 09:16:24','180.248.27.44','698818383'),(3514181709020001,'Masuk','2023-10-23 09:19:53','180.248.27.44','926069285'),(3514181709020001,'Keluar','2023-10-23 09:19:56','180.248.27.44','926069285'),(3514181709020001,'Masuk','2023-10-23 09:21:28','180.248.27.44','602624243'),(3514181709020001,'Masuk','2023-10-23 09:21:40','180.248.27.44','453755072'),(3514181709020001,'Keluar','2023-10-23 09:22:08','180.248.27.44','453755072'),(3514181709020001,'Masuk','2023-10-23 09:22:42','180.248.27.44','232788655'),(3220100199999999,'Masuk','2023-10-23 09:22:56','180.248.27.44','733562389'),(3514181709020001,'Masuk','2023-10-23 09:29:55','180.248.27.44','319755930'),(3514181709020001,'Keluar','2023-10-23 09:46:46','180.248.27.44','602624243'),(3514181709020001,'Masuk','2023-10-23 09:47:42','180.248.27.44','725547019'),(3572021111110004,'Masuk','2023-10-23 09:47:55','180.248.27.44','651592315'),(3578046007020002,'Masuk','2023-10-23 09:49:23','182.253.40.255','612651043'),(3572021111110004,'Keluar','2023-10-23 09:53:25','180.248.27.44','651592315'),(3572021111110004,'Masuk','2023-10-23 09:54:14','180.248.27.44','027536097'),(3572021111110004,'Masuk','2023-10-23 09:56:29','180.248.27.44','373573870'),(3572021111110004,'Keluar','2023-10-23 09:56:52','180.248.27.44','373573870'),(3220100123220100,'Masuk','2023-10-23 09:57:18','180.248.27.44','552685753'),(3572021111110004,'Keluar','2023-10-23 10:00:37','180.248.27.44','027536097'),(3220100123220100,'Keluar','2023-10-23 10:01:26','180.248.27.44','552685753'),(3514181709020001,'Keluar','2023-10-23 10:01:27','180.248.27.44','232788655'),(3220100123220100,'Masuk','2023-10-23 10:02:15','180.248.27.44','627972038'),(3507220505020002,'Keluar','2023-10-23 10:05:27','180.248.27.44','429145763'),(3507220505020002,'Masuk','2023-10-23 10:05:49','180.248.27.44','512390059'),(3514181709020001,'Masuk','2023-10-23 10:07:07','180.248.27.44','813978729'),(3220100123220100,'Keluar','2023-10-23 10:07:46','180.248.27.44','627972038'),(3220100123220100,'Masuk','2023-10-23 10:08:06','180.248.27.44','173855789'),(3220100123220100,'Keluar','2023-10-23 10:08:15','180.248.27.44','173855789'),(3220100123220100,'Masuk','2023-10-23 10:15:30','180.248.27.44','488458590'),(3514181709020001,'Masuk','2023-10-23 10:16:33','180.248.27.44','853655577'),(3514181709020001,'Masuk','2023-10-23 10:28:12','182.253.40.255','044754275'),(3514181709020001,'Masuk','2023-10-23 11:07:14','182.253.40.255','485979221'),(3514181709020001,'Keluar','2023-10-23 11:10:01','182.253.40.255','485979221'),(3514181709020001,'Masuk','2023-10-23 11:10:14','182.253.40.255','938475564'),(3514181709020001,'Keluar','2023-10-23 11:10:44','182.253.40.255','938475564'),(3514181709020001,'Masuk','2023-10-23 11:11:25','182.253.40.255','565933621'),(3514181709020001,'Keluar','2023-10-23 11:12:56','182.253.40.255','565933621'),(3514181709020001,'Keluar','2023-10-23 14:02:55','180.248.27.44','725547019'),(3514181709020001,'Keluar','2023-10-23 14:06:52','180.248.27.44','813978729'),(3514181709020001,'Masuk','2023-10-23 14:10:16','180.248.27.44','860905965'),(9876543210123456,'Keluar','2023-10-23 19:12:56','182.253.40.255','331746943'),(3514181709020001,'Masuk','2023-10-23 19:13:02','182.253.40.255','509252642'),(3514181709020001,'Masuk','2023-10-23 21:51:47','180.248.29.237','170396505'),(3514181709020001,'Keluar','2023-10-23 22:25:06','180.248.29.237','170396505'),(3572022222220004,'Keluar','2023-10-23 22:27:29','180.248.29.237','272396973'),(3514181709020001,'Masuk','2023-10-23 22:27:41','180.248.29.237','977763500'),(3220100199999999,'Masuk','2023-10-24 08:30:53','180.248.23.1','768782276'),(3578046007020002,'Keluar','2023-10-24 08:31:49','182.253.40.255','612651043'),(3578046007020002,'Masuk','2023-10-24 08:32:12','182.253.40.255','614782054'),(3514181709020001,'Masuk','2023-10-24 08:32:42','180.248.23.1','204612527'),(3220100123220100,'Masuk','2023-10-24 08:33:54','180.248.23.1','589441795'),(3578046007020002,'Keluar','2023-10-24 08:35:44','182.253.40.255','614782054'),(3514181709020001,'Masuk','2023-10-24 08:40:31','180.248.23.1','243088984'),(3507220505020002,'Masuk','2023-10-24 08:47:33','180.248.23.1','304911369'),(3514181709020001,'Masuk','2023-10-24 08:48:51','180.248.23.1','496981377'),(3578046007020002,'Masuk','2023-10-24 08:51:13','182.253.40.255','356628366'),(3514181709020001,'Masuk','2023-10-24 08:52:47','180.248.23.1','045958766'),(3514181709020001,'Masuk','2023-10-24 09:09:36','182.253.40.255','676524022'),(3507220505020002,'Keluar','2023-10-24 10:15:35','180.248.23.1','304911369'),(3507220505020002,'Masuk','2023-10-24 10:16:10','180.248.23.1','274493620');
/*!40000 ALTER TABLE `log_activity_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_agama`
--

DROP TABLE IF EXISTS `master_agama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_agama` (
  `id_agama` int(11) NOT NULL AUTO_INCREMENT,
  `agama` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_agama`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_agama`
--

LOCK TABLES `master_agama` WRITE;
/*!40000 ALTER TABLE `master_agama` DISABLE KEYS */;
INSERT INTO `master_agama` VALUES (1,'Katolik','2023-09-12 20:28:23','2023-09-12 20:28:23'),(2,'Islam','2023-09-12 20:28:23','2023-09-27 14:33:31'),(3,'Budha','2023-09-13 09:10:38','2023-09-13 09:10:38'),(4,'Konghucu','2023-09-13 09:20:16','2023-09-13 09:42:39'),(5,'Kristen','2023-09-13 10:54:17','2023-09-27 14:29:38'),(6,'Hindu','2023-09-13 10:54:17','2023-09-13 14:04:13');
/*!40000 ALTER TABLE `master_agama` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_akun`
--

DROP TABLE IF EXISTS `master_akun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_akun` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nik` bigint(16) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `status_user` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_user`),
  KEY `c_akun_statusakun` (`status_user`),
  CONSTRAINT `c_akun_statusakun` FOREIGN KEY (`status_user`) REFERENCES `master_status_akun` (`id_status_akun`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_akun`
--

LOCK TABLES `master_akun` WRITE;
/*!40000 ALTER TABLE `master_akun` DISABLE KEYS */;
INSERT INTO `master_akun` VALUES (1,3514181709020001,'123',1,'2023-10-16 08:55:23','2023-10-16 08:55:23'),(2,3220100199999999,'12345',1,'2023-10-16 10:19:09','2023-10-16 10:19:09'),(3,3220100012345678,'inshanity',1,'2023-10-20 15:15:46','2023-10-20 15:15:46'),(4,3578046007020002,'123',1,'2023-10-23 08:34:08','2023-10-23 08:34:08'),(5,3220100123220100,'123',1,'2023-10-23 08:35:06','2023-10-23 08:35:06'),(6,3572021111110004,'111213',1,'2023-10-23 08:36:40','2023-10-23 08:36:40'),(7,3572022222220004,'111213',1,'2023-10-23 09:53:40','2023-10-23 09:53:40'),(8,3507220505020002,'123',1,'2023-10-23 10:02:06','2023-10-23 10:02:06'),(9,3573021711020003,'123',1,'2023-10-23 11:05:39','2023-10-23 11:05:39'),(10,9876543210123456,'qwer',1,'2023-10-23 11:16:21','2023-10-23 11:16:21'),(11,3573041602030001,'Rubendwijaya25',1,'2023-10-23 11:27:42','2023-10-23 11:27:42');
/*!40000 ALTER TABLE `master_akun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_daftar_layanan`
--

DROP TABLE IF EXISTS `master_daftar_layanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_daftar_layanan` (
  `id_layanan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_layanan` varchar(255) NOT NULL,
  `status_required` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_layanan`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_daftar_layanan`
--

LOCK TABLES `master_daftar_layanan` WRITE;
/*!40000 ALTER TABLE `master_daftar_layanan` DISABLE KEYS */;
INSERT INTO `master_daftar_layanan` VALUES (1,'KTP',1,'2023-09-18 14:51:50','2023-09-18 14:51:50'),(2,'SKPWNI',1,'2023-08-31 04:38:54','2023-08-31 04:38:54'),(3,'Akta',1,'2023-08-31 04:38:54','2023-09-18 14:59:15'),(4,'KIA',1,'2023-08-31 04:38:54','2023-08-31 04:38:54'),(5,'KK',1,'2023-08-31 04:38:54','2023-08-31 04:38:54');
/*!40000 ALTER TABLE `master_daftar_layanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_data_formulir_surat`
--

DROP TABLE IF EXISTS `master_data_formulir_surat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_data_formulir_surat` (
  `id_data_formulir` int(11) NOT NULL AUTO_INCREMENT,
  `data_formulir` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_data_formulir`)
) ENGINE=InnoDB AUTO_INCREMENT=581 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_data_formulir_surat`
--

LOCK TABLES `master_data_formulir_surat` WRITE;
/*!40000 ALTER TABLE `master_data_formulir_surat` DISABLE KEYS */;
INSERT INTO `master_data_formulir_surat` VALUES (1,'panjang','2023-08-30 06:04:33','2023-08-30 06:04:33'),(2,'tinggi','2023-08-30 06:04:42','2023-08-30 06:04:42'),(7,'Kepanjangan','2023-09-06 06:13:09','2023-09-06 06:13:09'),(8,'alasan','2023-09-06 06:13:09','2023-09-06 06:13:09'),(9,'lampiran','2023-09-06 11:39:10','2023-09-29 14:09:29'),(10,'Jam Kematian','2023-09-07 10:26:33','2023-09-07 10:26:33'),(11,'NIK Pelapor','2023-09-07 10:35:39','2023-09-07 10:35:39'),(12,'nama_pelapor','2023-09-07 17:45:19','2023-09-07 17:45:19'),(13,'NIK Anak','2023-09-08 05:15:10','2023-09-08 05:15:10'),(14,'Keperluan','2023-09-08 05:19:43','2023-09-08 05:19:43'),(15,'Keterangan Lain','2023-09-08 05:19:56','2023-09-08 05:19:56'),(16,'NIK Ibu','2023-09-08 05:55:40','2023-09-08 05:55:40'),(17,'Hari Acara','2023-09-08 09:49:19','2023-09-08 09:49:19'),(18,'Tanggal Acara','2023-09-08 09:49:33','2023-09-08 09:49:33'),(19,'Jam Acara','2023-09-08 09:49:33','2023-09-08 09:49:33'),(20,'Tujuan','2023-09-11 12:12:14','2023-09-11 12:12:14'),(22,'Nama Berubah','2023-09-13 08:24:55','2023-09-13 08:24:55'),(23,'Tanggal Lahir Pelapor','2023-09-14 05:13:19','2023-09-14 05:13:19'),(24,'Tempat Lahir Pelapor','2023-09-14 05:13:19','2023-09-14 05:13:19'),(25,'tanggal_kematian','2023-09-14 10:44:10','2023-09-14 10:44:10'),(26,'penyebab_kematian','2023-09-14 10:44:10','2023-09-14 10:44:10'),(27,'rt_pelapor','2023-09-14 10:44:48','2023-09-14 10:44:48'),(28,'rw_pelapor','2023-09-14 10:44:48','2023-09-14 10:44:48'),(29,'dusun_pelapor','2023-09-14 10:45:05','2023-09-14 10:45:05'),(30,'Pekerjaan Pelapor','2023-09-14 10:46:51','2023-09-14 10:46:51'),(31,'tempat_kematian','2023-09-15 04:12:05','2023-09-15 04:12:05'),(32,'NIK Korban','2023-09-15 08:10:04','2023-09-15 08:10:04'),(33,'Nama Penolong','2023-09-15 10:58:16','2023-09-15 10:58:16'),(34,'nik_penolong','2023-09-15 10:58:16','2023-09-15 10:58:16'),(35,'tempat_lahir_penolong','2023-09-15 10:58:40','2023-09-15 10:58:40'),(36,'tanggal_lahir_penolong','2023-09-15 10:58:40','2023-09-15 10:58:40'),(37,'pekerjaan_penolong','2023-09-15 10:59:02','2023-09-15 10:59:02'),(38,'alamat_penolong','2023-09-15 10:59:02','2023-09-15 10:59:02'),(39,'nama_korban','2023-09-19 10:10:55','2023-09-19 10:10:55'),(40,'nomor_kk_korban','2023-09-19 10:10:55','2023-09-19 10:10:55'),(43,'Tempat Lahir Korban','2023-09-19 10:14:21','2023-09-19 10:14:21'),(44,'Tanggaal Lahir Korban','2023-09-19 10:14:21','2023-09-19 10:14:21'),(45,'alamat_korban','2023-09-19 10:14:38','2023-09-19 10:14:38'),(46,'nama_hibah','2023-09-20 05:32:28','2023-09-20 05:32:28'),(47,'tempat_lahir_hibah','2023-09-20 05:32:28','2023-09-20 05:32:28'),(48,'tanggal_lahir_hibah','2023-09-20 05:32:49','2023-09-20 05:32:49'),(49,'pekerjaan_hibah','2023-09-20 05:32:49','2023-09-20 05:32:49'),(50,'alamat_hibah','2023-09-20 05:35:37','2023-09-20 05:35:37'),(51,'rt_hibah','2023-09-20 05:35:37','2023-09-20 05:35:37'),(52,'desa_hibah','2023-09-20 05:35:37','2023-09-20 05:35:37'),(53,'Kecamatan Hibah','2023-09-20 05:35:37','2023-09-20 05:35:37'),(54,'Kabupaten Hibah','2023-09-20 05:35:37','2023-09-20 05:35:37'),(55,'Nomor Sertifikasi','2023-09-20 05:35:37','2023-09-20 05:35:37'),(56,'Nomor Kohir','2023-09-20 05:36:36','2023-09-20 05:36:36'),(57,'Luas Asal Tanah (M^2)','2023-09-20 05:36:36','2023-09-20 05:36:36'),(58,'luas_dihibahkaan','2023-09-20 05:37:06','2023-09-20 05:37:06'),(59,'Bagian Utara','2023-09-20 05:37:06','2023-09-20 05:37:06'),(60,'Bagian Selatan','2023-09-20 05:37:06','2023-09-20 05:37:06'),(61,'Bagian Timur','2023-09-20 05:37:06','2023-09-20 05:37:06'),(62,'Bagian Barat','2023-09-20 05:37:06','2023-09-20 05:37:06'),(63,'rw_hibah','2023-09-20 05:42:54','2023-09-20 05:42:54'),(64,'Saksi Satu','2023-09-20 06:01:32','2023-09-20 06:01:32'),(65,'penjelasan_saksi_satu','2023-09-20 06:01:32','2023-09-20 06:01:32'),(66,'Saksi Dua','2023-09-20 06:01:32','2023-09-20 06:01:32'),(67,'penjelasan_saksi_dua','2023-09-20 06:01:32','2023-09-20 06:01:32'),(68,'nomor_bidang','2023-09-20 06:02:14','2023-09-20 06:02:14'),(69,'Nama Pembeli','2023-09-20 12:24:31','2023-09-20 12:24:31'),(70,'Tempat Lahir Pembeli','2023-09-20 12:24:31','2023-09-20 12:24:31'),(71,'Tanggal Lahir Pembeli','2023-09-20 12:24:31','2023-09-20 12:24:31'),(72,'Pekerjaan Pembeli','2023-09-20 12:24:31','2023-09-20 12:24:31'),(73,'Dusun Pembeli','2023-09-20 12:24:31','2023-09-20 12:24:31'),(74,'RT Pembeli','2023-09-20 12:24:31','2023-09-20 12:24:31'),(75,'RW Pembeli','2023-09-20 12:24:31','2023-09-20 12:24:31'),(76,'Desa Pembeli','2023-09-20 12:24:31','2023-09-20 12:24:31'),(77,'Kecamatan Pembeli','2023-09-20 12:24:31','2023-09-20 12:24:31'),(78,'Kabupaten Pembeli','2023-09-20 12:24:31','2023-09-20 12:24:31'),(79,'Luas Tanah Dijual (M^2)','2023-09-20 12:30:28','2023-09-20 12:30:28'),(80,'Harga (Angka)','2023-09-20 12:30:28','2023-09-20 12:30:28'),(81,'Harga (Huruf)','2023-09-20 12:30:28','2023-09-20 12:30:28'),(82,'Nama Penyewa','2023-09-20 18:57:21','2023-09-20 18:57:21'),(83,'Tempat Lahir Penyewa','2023-09-20 18:57:21','2023-09-20 18:57:21'),(84,'Tanggal Lahir Penyewa','2023-09-20 18:57:21','2023-09-20 18:57:21'),(85,'NIK Penyewa','2023-09-20 18:57:21','2023-09-20 18:57:21'),(86,'Pekerjaan Penyewa','2023-09-20 18:57:21','2023-09-20 18:57:21'),(87,'Dusun Penyewa','2023-09-20 18:57:21','2023-09-20 18:57:21'),(88,'RT Penyewa','2023-09-20 18:57:21','2023-09-20 18:57:21'),(89,'RW Penyewa','2023-09-20 18:57:21','2023-09-20 18:57:21'),(90,'Luas Tanah Disewa (M^2)','2023-09-20 18:57:21','2023-09-20 18:57:21'),(91,'Harga Sewa Angka','2023-09-20 18:57:21','2023-09-20 18:57:21'),(92,'Harga Sewa Huruf','2023-09-20 18:57:21','2023-09-20 18:57:21'),(93,'Waktu Sewa (Tahun)','2023-09-20 18:57:21','2023-09-20 18:57:21'),(94,'Tanggal Sewa Awal','2023-09-20 18:57:21','2023-09-20 18:57:21'),(95,'Tanggal Sewa Akhir','2023-09-20 18:57:21','2023-09-20 18:57:21'),(96,'RT Korban','2023-09-20 20:15:14','2023-09-20 20:15:14'),(97,'RW Korban','2023-09-20 20:15:14','2023-09-20 20:15:14'),(98,'Jam Akhir Acara','2023-09-21 02:54:33','2023-09-21 02:54:33'),(99,'Jam Awal Acara','2023-09-21 02:54:33','2023-09-21 02:54:33'),(101,'Nama','2023-09-21 04:41:36','2023-09-21 04:41:36'),(102,'nama_petugas','2023-09-21 04:44:14','2023-09-21 04:44:14'),(103,'Nama Anak','2023-09-21 08:56:39','2023-09-21 08:56:39'),(104,'Tempat Lahir Anak','2023-09-21 08:57:39','2023-09-21 08:57:39'),(105,'Tanggal Lahir Anak','2023-09-21 08:57:39','2023-09-21 08:57:39'),(106,'Anak Ke','2023-09-21 08:58:28','2023-09-21 08:58:28'),(107,'Nama Ibu','2023-09-21 09:06:01','2023-09-21 09:06:01'),(108,'Tempat Lahir Ibu','2023-09-21 09:07:14','2023-09-21 09:07:14'),(109,'Tanggal Lahir Ibu','2023-09-21 09:07:14','2023-09-21 09:07:14'),(110,'Pekerjaan Ibu','2023-09-21 09:07:29','2023-09-21 09:07:29'),(111,'NIK Saksi Satu','2023-09-21 09:17:43','2023-09-21 09:17:43'),(112,'NIK Saksi Dua','2023-09-21 09:17:43','2023-09-21 09:17:43'),(113,'nama_pengaju','2023-09-22 03:41:35','2023-09-22 03:41:35'),(114,'nik_pengaju','2023-09-22 03:41:35','2023-09-22 03:41:35'),(115,'Tujuan Bank','2023-09-22 04:26:31','2023-09-22 04:26:31'),(116,'Nama Usaha','2023-09-22 04:26:31','2023-09-22 04:26:31'),(117,'Dusun Tempat Usaha','2023-09-22 04:26:31','2023-09-22 04:26:31'),(118,'RT Tempat Usaha','2023-09-22 04:26:31','2023-09-22 04:26:31'),(119,'RW Tempat Usaha','2023-09-22 04:26:31','2023-09-22 04:26:31'),(120,'Jenis Usaha','2023-09-22 05:09:51','2023-09-22 05:09:51'),(121,'Luas Tanah Sendiri (Sawah) dalam satuan M^2 / Ha','2023-09-22 05:09:51','2023-09-22 05:09:51'),(122,'Luas Tanah Tegal (Sendiri) dalam satuan M^2 / Ha','2023-09-22 05:09:51','2023-09-22 05:09:51'),(123,'Luas Tanah Sawah (Sewa) dalam satuan M^2 / Ha','2023-09-22 05:09:51','2023-09-22 05:09:51'),(124,'Luas Tanah Tegal (Sewa) dalam satuan M^2 / Ha','2023-09-22 05:09:51','2023-09-22 05:09:51'),(126,'Jenis Kelamin Anak','2023-09-22 06:29:31','2023-09-22 06:29:31'),(127,'Penggunaan (Perumahan/Pertanian/Pekarangan)','2023-09-25 04:29:49','2023-09-25 04:29:49'),(128,'Luas Tanah (M^2)','2023-09-25 04:29:49','2023-09-25 04:29:49'),(129,'Ukuran Usaha (m2)','2023-09-25 04:29:49','2023-09-25 04:29:49'),(130,'Nomor Sertifikat Hak Milik','2023-09-25 04:29:49','2023-09-25 04:29:49'),(131,'Harga tanah per meter perseginya (M^2)','2023-09-25 04:29:49','2023-09-25 04:29:49'),(132,'Harga ketetapan Pemerintah / NJOP (PBB) per meter perseginya (m2)','2023-09-25 04:29:49','2023-09-25 04:29:49'),(133,'Harga bangunan rumah per meter perseginya','2023-09-25 04:29:49','2023-09-25 04:29:49'),(134,'Batas letak persil sebelah utara','2023-09-25 04:29:49','2023-09-25 04:29:49'),(135,'Batas letak persil sebelah selatan','2023-09-25 04:29:49','2023-09-25 04:29:49'),(136,'Batas letak persil sebelah timur','2023-09-25 04:29:49','2023-09-25 04:29:49'),(137,'Batas letak persil sebelah barat','2023-09-25 04:29:49','2023-09-25 04:29:49'),(138,'Nama Lengkap','2023-09-25 04:38:02','2023-09-25 04:38:02'),(139,'Tempat Lahir','2023-09-25 04:38:02','2023-09-25 04:38:02'),(140,'Tanggal Lahir','2023-09-25 04:38:59','2023-09-25 04:38:59'),(141,'Jenis Kelamin','2023-09-25 04:38:59','2023-09-25 04:38:59'),(142,'Golongan Darah','2023-09-25 04:38:59','2023-09-25 04:38:59'),(143,'Pendidikan','2023-09-25 04:38:59','2023-09-25 04:38:59'),(144,'Alamat','2023-09-25 04:40:36','2023-09-25 04:40:36'),(145,'RT','2023-09-25 04:41:34','2023-09-25 04:41:34'),(146,'RW','2023-09-25 04:41:34','2023-09-25 04:41:34'),(147,'Desa','2023-09-25 04:41:40','2023-09-25 04:41:40'),(148,'Kecamatan','2023-09-25 04:41:40','2023-09-25 04:41:40'),(149,'Kota / Kabupaten','2023-09-25 04:41:50','2023-09-25 04:41:50'),(150,'Provinsi','2023-09-25 04:41:50','2023-09-25 04:41:50'),(151,'Kode Pos','2023-09-25 04:42:01','2023-09-25 04:42:01'),(152,'Nama Kuasa','2023-09-25 06:04:37','2023-09-25 06:04:37'),(153,'NIK Kuasa','2023-09-25 06:04:37','2023-09-25 06:04:37'),(154,'Pekerjaan Kuasa','2023-09-25 06:04:37','2023-09-25 06:04:37'),(155,'Alamat Kuasa','2023-09-25 06:04:37','2023-09-25 06:04:37'),(156,'nama_pasangan_satu','2023-09-26 04:22:58','2023-09-26 04:22:58'),(157,'nik_pasangan_satu','2023-09-26 04:22:58','2023-09-26 04:22:58'),(158,'tempat_lahir_pasangan_satu','2023-09-26 04:22:58','2023-09-26 04:22:58'),(159,'tanggal_lahir_pasangan_satu','2023-09-26 04:22:58','2023-09-26 04:22:58'),(160,'pekerjaan_pasangan_satu','2023-09-26 04:22:58','2023-09-26 04:22:58'),(161,'Alamat Pasangan Satu','2023-09-26 04:22:58','2023-09-26 04:22:58'),(162,'nama_pasangan_dua','2023-09-26 04:22:58','2023-09-26 04:22:58'),(163,'nik_pasangan_dua','2023-09-26 04:22:58','2023-09-26 04:22:58'),(164,'tempat_lahir_pasangan_dua','2023-09-26 04:22:58','2023-09-26 04:22:58'),(165,'tanggal_lahir_pasangan_dua','2023-09-26 04:22:58','2023-09-26 04:22:58'),(166,'pekerjaan_pasangan_dua','2023-09-26 04:22:58','2023-09-26 04:22:58'),(167,'alamat_pasangan_dua','2023-09-26 04:22:58','2023-09-26 04:22:58'),(168,'Tanggal Pembuatan','2023-09-26 04:22:58','2023-09-26 04:22:58'),(177,'nomor_akta_anak','2023-09-26 04:22:58','2023-09-26 04:22:58'),(178,'tanggal_lahir_akta','2023-09-26 04:22:58','2023-09-26 04:22:58'),(179,'nama_dinas','2023-09-26 04:22:58','2023-09-26 04:22:58'),(180,'alamat_dinas','2023-09-26 04:22:58','2023-09-26 04:22:58'),(185,'Alamat Ibu','2023-09-26 04:22:58','2023-09-26 04:22:58'),(186,'Nama Kepala Keluarga','2023-09-26 08:36:23','2023-09-26 08:36:23'),(187,'Alamat Tambahan','2023-09-26 08:36:52','2023-09-26 08:36:52'),(188,'Jumlah Anggota Keluarga','2023-09-26 08:37:03','2023-09-26 08:37:03'),(189,'Nomor Telepon','2023-09-26 08:46:39','2023-09-26 08:46:39'),(190,'Kelurahan','2023-09-26 08:48:54','2023-09-26 08:48:54'),(191,'Dusun','2023-09-26 08:49:05','2023-09-26 08:49:05'),(192,'Alamat WNI Luar Negeri','2023-09-26 08:49:16','2023-09-26 08:49:16'),(193,'Alamat Tambahan WNI Luar Negeri','2023-09-26 08:49:44','2023-09-26 08:49:44'),(194,'Kode Pos WNI Luar Negeri','2023-09-26 08:49:59','2023-09-26 08:49:59'),(195,'Jumlah Anggota Keluarga WNI Luar Negeri','2023-09-26 08:49:59','2023-09-26 08:49:59'),(196,'Nomor Telepon WNI Luar Negeri','2023-09-26 08:50:14','2023-09-26 08:50:14'),(197,'E-Mail WNI Luar Negeri','2023-09-26 08:50:14','2023-09-26 08:50:14'),(198,'Jenis Input Data KK dan Anggota Keluarga','2023-09-26 10:12:21','2023-09-26 10:12:21'),(199,'Pilihan Jenis Input Data Anggota KK dan Anggota Keluarga','2023-09-26 10:20:45','2023-09-26 10:20:45'),(200,'Kota Luar Negeri','2023-09-26 12:18:41','2023-09-26 12:18:41'),(201,'Negara Bagian Luar Negeri','2023-09-26 12:18:41','2023-09-26 12:18:41'),(202,'Negara Luar Negeri','2023-09-26 12:18:41','2023-09-26 12:18:41'),(203,'Gelar Depan','2023-09-27 04:21:32','2023-09-27 04:21:32'),(204,'Gelar Belakang','2023-09-27 04:21:32','2023-09-27 04:21:32'),(205,'Nomor Paspor','2023-09-27 04:21:32','2023-09-27 04:21:32'),(206,'Nama Sponsor','2023-09-27 04:21:32','2023-09-27 04:21:32'),(207,'Tipe Sponsor','2023-09-27 04:21:32','2023-09-27 04:21:32'),(209,'Kewarganegaraan','2023-09-27 04:24:51','2023-09-27 04:24:51'),(210,'No. SK Penetapan WNI','2023-09-27 04:24:51','2023-09-27 04:24:51'),(211,'Akta Lahir','2023-09-27 04:24:51','2023-09-27 04:24:51'),(212,'No. Akta Kelahiran','2023-09-27 04:24:51','2023-09-27 04:24:51'),(213,'Agama','2023-09-27 04:24:51','2023-09-27 04:24:51'),(214,'Nama organisasi kepercayaan terhadap Tuhan YME','2023-09-27 04:24:51','2023-09-27 04:24:51'),(215,'Status Perkawinan','2023-09-27 04:26:55','2023-09-27 04:26:55'),(216,'Akta Perkawinan','2023-09-27 04:26:55','2023-09-27 04:26:55'),(217,'No. Akta Perkawinan','2023-09-27 04:26:55','2023-09-27 04:26:55'),(218,'Tanggal Perkawinan','2023-09-27 04:26:55','2023-09-27 04:26:55'),(219,'Akta Cerai','2023-09-27 04:26:55','2023-09-27 04:26:55'),(220,'No Akta Perceraian','2023-09-27 04:26:55','2023-09-27 04:26:55'),(221,'Status Hubungan Dalam Keluarga','2023-09-27 04:28:11','2023-09-27 04:28:11'),(222,'Kelainan Fisik dan Mental','2023-09-27 04:28:11','2023-09-27 04:28:11'),(223,'Penyandang Cacat','2023-09-27 04:28:11','2023-09-27 04:28:11'),(224,'Nomor ITAS/ITAP','2023-09-27 04:28:11','2023-09-27 04:28:11'),(225,'Tempat Terbit ITAS/ITAP','2023-09-27 04:28:11','2023-09-27 04:28:11'),(226,'Tanggal Terbit ITAS/ITAP','2023-09-27 04:29:20','2023-09-27 04:29:20'),(227,'Tanggal Kedatangan Pertama','2023-09-27 04:29:21','2023-09-27 04:29:21'),(228,'NIK Ibu','2023-09-27 04:29:21','2023-09-27 04:29:21'),(229,'Nama Ibu','2023-09-27 04:29:21','2023-09-27 04:29:21'),(230,'NIK Ayah','2023-09-27 04:29:21','2023-09-27 04:29:21'),(231,'Nama Ayah','2023-09-27 04:29:21','2023-09-27 04:29:21'),(232,'Tanggal Perceraian','2023-09-27 04:53:51','2023-09-27 04:53:51'),(233,'Pekerjaan','2023-09-27 04:56:08','2023-09-27 04:56:08'),(234,'Tanggal Akhir ITAS/ITAP','2023-09-27 04:57:14','2023-09-27 04:57:14'),(235,'Tanggal Akhir Paspor','2023-09-27 06:03:31','2023-09-27 06:03:31'),(236,'Alamat Sponsor','2023-09-27 06:38:02','2023-09-27 06:38:02'),(237,'Tempat Kedatangan Pertama','2023-09-27 06:42:22','2023-09-27 06:42:22'),(238,'Nomor KK (Kartu Keluarga)','2023-09-27 06:45:57','2023-09-27 06:45:57'),(239,'nama_pengirim','2023-09-29 13:49:53','2023-09-29 13:49:53'),(240,'KK Lama / KK Rusak','2023-10-02 04:53:49','2023-10-02 04:53:49'),(241,'Buku Nikah / Kutipan Akta Perkawinan','2023-10-02 04:53:49','2023-10-02 04:53:49'),(242,'Kutipan Akta Perceraian','2023-10-02 04:53:49','2023-10-02 04:53:49'),(243,'Surat Keterangan Pindah','2023-10-02 04:53:49','2023-10-02 04:53:49'),(244,'Surat Keterangan Pindah Luar Negeri','2023-10-02 04:53:49','2023-10-02 04:53:49'),(245,'KTP-EI Rusak','2023-10-02 04:53:49','2023-10-02 04:53:49'),(246,'Dokumen Perjalanan','2023-10-02 04:53:49','2023-10-02 04:53:49'),(247,'Surat Keterangan Hilang dari Kepolisian','2023-10-02 04:53:49','2023-10-02 04:53:49'),(248,'Surat Keterangan / Bukti Perubahan Peristiwa Kependudukan dan Peristiwa Penting','2023-10-02 04:53:49','2023-10-02 04:53:49'),(249,'SPTJM Perkawinan / Perceraian belum Tercatat','2023-10-02 04:53:49','2023-10-02 04:53:49'),(250,'Akta Kematian','2023-10-02 04:53:49','2023-10-02 04:53:49'),(251,'Surat Pernyataan penyebab terjadinya hilang atau rusak','2023-10-02 04:53:49','2023-10-02 04:53:49'),(252,'Surat keterangan pindah dari perwakilan RI','2023-10-02 04:53:49','2023-10-02 04:53:49'),(253,'Surat penyataan bersedia menerima sebagai anggota keluarga','2023-10-02 04:53:49','2023-10-02 04:53:49'),(254,'Surat kuasa pengasuhan anak dari orang tua / wali','2023-10-02 04:53:49','2023-10-02 04:53:49'),(255,'Kartu Izin tinggal Tetap','2023-10-02 04:53:49','2023-10-02 04:53:49'),(256,'Tempat Dilahirkan','2023-10-02 04:58:18','2023-10-02 04:58:18'),(257,'Hari Lahir Anak','2023-10-02 04:59:13','2023-10-02 04:59:13'),(258,'Bulan Lahir Anak','2023-10-02 05:00:02','2023-10-02 05:00:02'),(259,'Tahun Lahir Anak','2023-10-02 05:00:02','2023-10-02 05:00:02'),(260,'Pukul Lahir','2023-10-02 05:02:29','2023-10-02 05:02:29'),(261,'Jenis Kelahiran','2023-10-02 05:03:12','2023-10-02 05:03:12'),(262,'Kelahiran Ke','2023-10-02 05:03:52','2023-10-02 05:03:52'),(263,'Penolong Kelahiran','2023-10-02 05:04:25','2023-10-02 05:04:25'),(264,'Berat Anak','2023-10-02 05:04:54','2023-10-02 05:04:54'),(265,'Panjang Anak','2023-10-02 05:04:54','2023-10-02 05:04:54'),(266,'Bulan Lahir Ibu','2023-10-02 05:06:42','2023-10-02 05:06:42'),(267,'Tahun Lahir Ibu','2023-10-02 05:06:42','2023-10-02 05:06:42'),(268,'Bulan Lahir Ayah','2023-10-02 05:06:42','2023-10-02 05:06:42'),(269,'Tahun Lahir Ayah','2023-10-02 05:06:42','2023-10-02 05:06:42'),(270,'Umur Ibu','2023-10-02 05:10:49','2023-10-02 05:10:49'),(271,'Umur Ayah','2023-10-02 05:10:49','2023-10-02 05:10:49'),(272,'Desa Atau Kelurahan Ibu','2023-10-02 05:15:01','2023-10-02 05:15:01'),(273,'Desa Atau Kelurahan Ayah','2023-10-02 05:15:01','2023-10-02 05:15:01'),(274,'Desa Atau Kelurahan Pelapor','2023-10-02 05:15:01','2023-10-02 05:15:01'),(275,'Desa Atau Kelurahan Saksi Satu','2023-10-02 05:15:01','2023-10-02 05:15:01'),(276,'Desa Atau Kelurahan Saksi Dua','2023-10-02 05:15:01','2023-10-02 05:15:01'),(277,'Kecamatan Ibu','2023-10-02 05:17:12','2023-10-02 05:17:12'),(278,'Kecamatan Ayah','2023-10-02 05:17:12','2023-10-02 05:17:12'),(279,'Kecamatan Pelapor','2023-10-02 05:17:12','2023-10-02 05:17:12'),(280,'Kecamatan Saksi Satu','2023-10-02 05:17:12','2023-10-02 05:17:12'),(281,'Kecamatan Saksi Dua','2023-10-02 05:17:12','2023-10-02 05:17:12'),(282,'Kabupaten Atau Kota Ibu','2023-10-02 05:17:46','2023-10-02 05:17:46'),(283,'Kabupaten Atau Kota Ayah','2023-10-02 05:17:46','2023-10-02 05:17:46'),(284,'Kabupaten Atau Kota Pelapor','2023-10-02 05:17:46','2023-10-02 05:17:46'),(285,'Kabupaten Atau Kota Saksi Satu','2023-10-02 05:17:46','2023-10-02 05:17:46'),(286,'Kabupaten Atau Kota Saksi Dua','2023-10-02 05:17:46','2023-10-02 05:17:46'),(287,'Provinsi Ibu','2023-10-02 05:20:43','2023-10-02 05:20:43'),(288,'Provinsi Ayah','2023-10-02 05:20:43','2023-10-02 05:20:43'),(289,'Provinsi Pelapor','2023-10-02 05:20:43','2023-10-02 05:20:43'),(290,'Provinsi Saksi Satu','2023-10-02 05:20:43','2023-10-02 05:20:43'),(291,'Provinsi Saksi Dua','2023-10-02 05:20:43','2023-10-02 05:20:43'),(292,'Kewarganegaraan Ibu','2023-10-02 05:21:36','2023-10-02 05:21:36'),(293,'Kewarganegaraan Ayah','2023-10-02 05:21:36','2023-10-02 05:21:36'),(294,'Kebangsaan Ibu','2023-10-02 05:22:06','2023-10-02 05:22:06'),(295,'Kebangsaan Ayah','2023-10-02 05:22:06','2023-10-02 05:22:06'),(296,'Tanggal Pencatatan Perkawinan','2023-10-02 05:22:39','2023-10-02 05:22:39'),(297,'Bulan Pencatatan Perkawinan','2023-10-02 05:22:39','2023-10-02 05:22:39'),(298,'Tahun Pencatatan Perkawinan','2023-10-02 05:22:39','2023-10-02 05:22:39'),(299,'Tanggal Lahir Ayah','2023-10-02 05:24:51','2023-10-02 05:24:51'),(300,'Pekerjaan Ayah','2023-10-02 05:24:51','2023-10-02 05:24:51'),(301,'Alamat Ayah','2023-10-02 05:24:51','2023-10-02 05:24:51'),(302,'Nama Pelapor','2023-10-02 05:24:51','2023-10-02 05:24:51'),(303,'Umur Pelapor','2023-10-02 05:36:08','2023-10-02 05:36:08'),(304,'Umur Saksi Satu','2023-10-02 05:36:08','2023-10-02 05:36:08'),(305,'Umur Saksi Dua','2023-10-02 05:36:08','2023-10-02 05:36:08'),(306,'Jenis Kelamin Pelapor','2023-10-02 05:36:59','2023-10-02 05:36:59'),(307,'Alamat Pelapor','2023-10-02 05:38:27','2023-10-02 05:38:27'),(308,'Alamat Saksi Satu','2023-10-02 05:38:27','2023-10-02 05:38:27'),(309,'Alamat Saksi Dua','2023-10-02 05:38:27','2023-10-02 05:38:27'),(310,'Nama Saksi Satu','2023-10-02 05:48:05','2023-10-02 05:48:05'),(311,'Nama Saksi Dua','2023-10-02 05:48:05','2023-10-02 05:48:05'),(312,'Pekerjaan Saksi Satu','2023-10-02 05:53:20','2023-10-02 05:53:20'),(313,'Pekerjaan Saksi Dua','2023-10-02 05:53:20','2023-10-02 05:53:20'),(314,'Tempat Pembuatan','2023-10-02 05:56:14','2023-10-02 05:56:14'),(315,'Kepala Dinas Kependudukan','2023-10-02 05:56:14','2023-10-02 05:56:14'),(316,'Alamat Asal','2023-10-02 08:59:24','2023-10-02 08:59:24'),(317,'RT Asal','2023-10-02 08:59:24','2023-10-02 08:59:24'),(318,'RW Asal','2023-10-02 08:59:24','2023-10-02 08:59:24'),(319,'Desa atau Kelurahan Asal','2023-10-02 08:59:24','2023-10-02 08:59:24'),(320,'Kecamatan Asal','2023-10-02 08:59:24','2023-10-02 08:59:24'),(321,'Kabupaten atau Kota Asal','2023-10-02 08:59:24','2023-10-02 08:59:24'),(322,'Provinsi Asal','2023-10-02 08:59:24','2023-10-02 08:59:24'),(323,'Kode Pos Asal','2023-10-02 08:59:24','2023-10-02 08:59:24'),(324,'Klasifikasi Pindah','2023-10-02 09:01:19','2023-10-02 09:01:19'),(325,'Alamat Pindah','2023-10-02 09:01:30','2023-10-02 09:01:30'),(326,'RT Pindah','2023-10-02 09:01:30','2023-10-02 09:01:30'),(327,'Desa Pindah','2023-10-02 09:01:30','2023-10-02 09:01:30'),(328,'Kecamatan Pindah','2023-10-02 09:01:30','2023-10-02 09:01:30'),(329,'Kabupaten atau Kota Pindah','2023-10-02 09:01:30','2023-10-02 09:01:30'),(330,'Provinsi Pindah','2023-10-02 09:01:30','2023-10-02 09:01:30'),(331,'RW Pindah','2023-10-02 09:01:30','2023-10-02 09:01:30'),(332,'Kode Pos Pindah','2023-10-02 09:01:30','2023-10-02 09:01:30'),(333,'Alasan Pindah','2023-10-02 09:02:41','2023-10-02 09:02:41'),(334,'Jenis Kepindahan','2023-10-02 09:02:41','2023-10-02 09:02:41'),(335,'Anggota Keluarga yang Tidak Pindah','2023-10-02 09:02:41','2023-10-02 09:02:41'),(336,'Anggota Keluarga yang Pindah','2023-10-02 09:02:41','2023-10-02 09:02:41'),(337,'Detail ALamat Sponsor','2023-10-02 09:09:19','2023-10-02 09:09:19'),(338,'Negara Tujuan','2023-10-02 09:09:19','2023-10-02 09:09:19'),(339,'Alamat Luar Negeri Tujuan','2023-10-02 09:09:19','2023-10-02 09:09:19'),(340,'Penanggung Jawab','2023-10-02 09:09:19','2023-10-02 09:09:19'),(341,'Tanggal Rencana Pindah','2023-10-02 09:09:19','2023-10-02 09:09:19'),(342,'Detail Alamat Luar Negeri Tujuan','2023-10-02 09:11:49','2023-10-02 09:11:49'),(343,'NIK Anggota Keluarga','2023-10-02 09:15:45','2023-10-02 09:15:45'),(346,'Jenis Kategori Permohonan Kartu Keluarga','2023-10-02 09:58:21','2023-10-02 09:58:21'),(347,'Jenis Kategori Permohonan Kartu Keluarga Baru','2023-10-02 09:58:21','2023-10-02 09:58:21'),(348,'Jenis Kategori Permohonan Kartu Keluarga Perubahan Data','2023-10-02 09:58:21','2023-10-02 09:58:21'),(349,'Jenis Kategori Permohonan Kartu Keluarga Hilang / Rusak','2023-10-02 09:58:21','2023-10-02 09:58:21'),(350,'Jenis Kategori Permohonan KTP-EI','2023-10-02 09:58:21','2023-10-02 09:58:21'),(351,'Jenis Kategori Permohonan KTP-EI Baru','2023-10-02 09:58:21','2023-10-02 09:58:21'),(352,'Jenis Kategori Permohonan KTP-EI Pindah Datang','2023-10-02 09:58:21','2023-10-02 09:58:21'),(353,'Jenis Kategori Permohonan KTP-EI Hilang / Rusak','2023-10-02 09:58:21','2023-10-02 09:58:21'),(354,'Jenis Kategori Permohonan KTP-EI Perpanjang ITAP','2023-10-02 09:58:21','2023-10-02 09:58:21'),(355,'Jenis Kategori Permohonan KTP-EI Perubahan Status Kewarganegaraan','2023-10-02 09:58:21','2023-10-02 09:58:21'),(356,'Jenis Kategori Permohonan KTP-EI Luar Domisili','2023-10-02 09:58:21','2023-10-02 09:58:21'),(357,'Jenis Kategori Permohonan KTP-EI Transmigrasi','2023-10-02 09:58:21','2023-10-02 09:58:21'),(358,'Jenis Kategori Permohonan Kartu Identitas Anak / KIA','2023-10-02 09:58:21','2023-10-02 09:58:21'),(359,'Jenis Kategori Permohonan KTP-EI Baru','2023-10-02 09:58:21','2023-10-02 09:58:21'),(360,'Jenis Kategori Permohonan KTP-EI Pindah Datang','2023-10-02 09:58:21','2023-10-02 09:58:21'),(361,'Jenis Kategori Permohonan KTP-EI Hilang / Rusak','2023-10-02 09:58:21','2023-10-02 09:58:21'),(362,'Jenis Kategori Permohonan KTP-EI Lainnya [FILE]','2023-10-02 09:58:21','2023-10-02 09:58:21'),(363,'Jenis Kategori Permohonan Perubahan Data','2023-10-02 09:58:21','2023-10-02 09:58:21'),(364,'Jenis Kategori Permohonan KK','2023-10-02 09:58:21','2023-10-02 09:58:21'),(365,'Jenis Kategori Permohonan KTP-EI','2023-10-02 09:58:21','2023-10-02 09:58:21'),(366,'Jenis Kategori Permohonan KTP-EI Lainnya [FILE]','2023-10-02 09:58:21','2023-10-02 09:58:21'),(367,'Jenis Permohonan','2023-10-02 10:19:02','2023-10-02 10:19:02'),(368,'Jenis Data Pelaporan Pencatatan Sipil','2023-10-09 03:58:13','2023-10-09 03:58:13'),(369,'Nomor Dokumen Perjalanan Pelapor','2023-10-09 03:59:53','2023-10-09 03:59:53'),(370,'Nomor Kartu Keluarga Pelapor','2023-10-09 04:00:42','2023-10-09 04:00:42'),(371,'Kewarganegaraan Pelapor','2023-10-09 04:01:19','2023-10-09 04:01:19'),(372,'Nomor Handphone Pelapor','2023-10-09 04:01:19','2023-10-09 04:01:19'),(373,'Email Pelapor','2023-10-09 04:02:49','2023-10-09 04:02:49'),(374,'Nama Data Subjek Akta Kesatu','2023-10-09 04:03:25','2023-10-09 04:03:25'),(375,'NIK Data Subjek Akta Kesatu','2023-10-09 04:03:25','2023-10-09 04:03:25'),(376,'Nomor Dokumen Perjalanan Data Subjek Akta Kesatu','2023-10-09 04:03:25','2023-10-09 04:03:25'),(377,'Nomor Kartu Keluarga Data Subjek Akta Kesatu','2023-10-09 04:03:25','2023-10-09 04:03:25'),(378,'Kewarganegaraan Data Subjek Akta Kesatu','2023-10-09 04:03:25','2023-10-09 04:03:25'),(379,'Nama Data Subjek Akta Kedua','2023-10-09 04:06:22','2023-10-09 04:06:22'),(380,'NIK Data Subjek Akta Kedua','2023-10-09 04:06:22','2023-10-09 04:06:22'),(381,'Nomor Dokumen Perjalanan Data Subjek Akta Kedua','2023-10-09 04:06:22','2023-10-09 04:06:22'),(382,'Nomor Kartu Keluarga Data Subjek Akta Kedua','2023-10-09 04:06:22','2023-10-09 04:06:22'),(383,'Kewarganegaraan Data Subjek Akta Kedua','2023-10-09 04:06:22','2023-10-09 04:06:22'),(384,'Nomor kartu keluarga saksi satu','2023-10-09 04:13:08','2023-10-09 04:13:08'),(385,'Nomor kartu keluarga saksi dua','2023-10-09 04:13:08','2023-10-09 04:13:08'),(386,'Kewarganegaraan saksi satu','2023-10-09 04:13:08','2023-10-09 04:13:08'),(387,'Kewarganegaraan saksi dua','2023-10-09 04:13:08','2023-10-09 04:13:08'),(388,'Tempat Lahir Ayah','2023-10-09 04:19:10','2023-10-09 04:19:10'),(390,'Jenis Kategori Permohonan KIA Hilang / Rusak','2023-10-09 04:41:15','2023-10-09 04:41:15'),(391,'Jenis Kategori Permohonan KIA Baru','2023-10-09 04:46:26','2023-10-09 04:46:26'),(392,'Jenis Kategori Permohonan KIA Perpanjangan ITAP','2023-10-09 04:46:26','2023-10-09 04:46:26'),(393,'Jenis Kategori Permohonan KIA Lainnya [FILE]','2023-10-09 04:46:26','2023-10-09 04:46:26'),(394,'Jenis Kategori Permohonan Perubahan Data KK','2023-10-09 04:46:26','2023-10-09 04:46:26'),(395,'Jenis Kategori Permohonan Perubahan Data KTP-EI','2023-10-09 04:46:26','2023-10-09 04:46:26'),(396,'Jenis Kategori Permohonan Perubahan Data KIA [FILE]','2023-10-09 04:46:26','2023-10-09 04:46:26'),(397,'Lamanya dalam Kandungan Lahir Mati','2023-10-09 04:52:50','2023-10-09 04:52:50'),(398,'Jenis Kelamin Lahir Mati','2023-10-09 04:52:50','2023-10-09 04:52:50'),(399,'Tanggal Lahir Mati','2023-10-09 04:52:50','2023-10-09 04:52:50'),(400,'Bulan Lahir Mati','2023-10-09 04:52:50','2023-10-09 04:52:50'),(401,'Tahun Lahir Mati','2023-10-09 04:52:50','2023-10-09 04:52:50'),(402,'Jenis Kelahiran Lahir Mati','2023-10-09 04:52:50','2023-10-09 04:52:50'),(403,'Anak Ke Lahir Mati','2023-10-09 04:52:50','2023-10-09 04:52:50'),(404,'Tempat Dilahirkan Lahir Mati','2023-10-09 04:52:50','2023-10-09 04:52:50'),(405,'Penolong Kelahiran Lahir Mati','2023-10-09 04:52:50','2023-10-09 04:52:50'),(406,'Sebab Lahir Mati','2023-10-09 04:52:50','2023-10-09 04:52:50'),(407,'Yang Menentukan Lahir Mati','2023-10-09 04:52:50','2023-10-09 04:52:50'),(408,'Tempat Kelahiran Lahir Mati','2023-10-09 04:52:50','2023-10-09 04:52:50'),(409,'NIK Ayah dari Suami','2023-10-09 06:09:31','2023-10-09 06:09:31'),(410,'NIK Ayah dari Istri','2023-10-09 06:09:31','2023-10-09 06:09:31'),(411,'Nama Ayah dari Suami','2023-10-09 06:09:31','2023-10-09 06:09:31'),(412,'Nama Ayah dari Istri','2023-10-09 06:09:31','2023-10-09 06:09:31'),(413,'NIK Ibu dari Suami','2023-10-09 06:09:31','2023-10-09 06:09:31'),(414,'NIK Ibu dari Istri','2023-10-09 06:09:31','2023-10-09 06:09:31'),(415,'Nama Ibu dari Suami','2023-10-09 06:09:31','2023-10-09 06:09:31'),(416,'Nama Ibu dari Istri','2023-10-09 06:09:31','2023-10-09 06:09:31'),(417,'Status Perkawinan sebelum Kawin','2023-10-09 06:11:16','2023-10-09 06:11:16'),(418,'Perkawinan yang ke','2023-10-09 06:11:16','2023-10-09 06:11:16'),(419,'Istri yang ke','2023-10-09 06:11:45','2023-10-09 06:11:45'),(420,'Hari Pemberkatan Perkawinan','2023-10-09 06:12:05','2023-10-09 06:12:05'),(421,'Tanggal Pemberkatan Perkawinan','2023-10-09 06:12:05','2023-10-09 06:12:05'),(422,'Bulan Pemberkatan Perkawinan','2023-10-09 06:12:05','2023-10-09 06:12:05'),(423,'Tahun Pemberkatan Perkawinan','2023-10-09 06:12:05','2023-10-09 06:12:05'),(424,'Hari Melapor','2023-10-09 06:12:05','2023-10-09 06:12:05'),(425,'Tanggal Melapor','2023-10-09 06:12:05','2023-10-09 06:12:05'),(426,'Bulan Melapor','2023-10-09 06:12:05','2023-10-09 06:12:05'),(427,'Tahun Melapor','2023-10-09 06:12:05','2023-10-09 06:12:05'),(428,'jam melapor','2023-10-09 06:13:16','2023-10-09 06:13:16'),(429,'Agama Perkawinan','2023-10-09 06:17:37','2023-10-09 06:17:37'),(430,'Kepercayaan','2023-10-09 06:17:37','2023-10-09 06:17:37'),(431,'Nama Organisasi Kepercayaan','2023-10-09 06:17:37','2023-10-09 06:17:37'),(432,'Nama Pengadilan','2023-10-09 06:17:37','2023-10-09 06:17:37'),(433,'Tanggal Penetapan Pengadilan','2023-10-09 06:17:37','2023-10-09 06:17:37'),(434,'Bulan Penetapan Pengadilan','2023-10-09 06:17:37','2023-10-09 06:17:37'),(435,'Tahun Penetapan Pengadilan','2023-10-09 06:17:37','2023-10-09 06:17:37'),(436,'Nama Pemuka Agama atau Kepercayaan','2023-10-09 06:18:44','2023-10-09 06:18:44'),(437,'Nomor Surat Ijin dari Perwakilan','2023-10-09 06:18:44','2023-10-09 06:18:44'),(438,'Nomor Passport','2023-10-09 06:18:44','2023-10-09 06:18:44'),(439,'Perjanjian Perkawiann dibuat oleh Notaris','2023-10-09 06:18:44','2023-10-09 06:18:44'),(440,'Nomor Akta Notaris','2023-10-09 06:18:44','2023-10-09 06:18:44'),(441,'Tanggal Akta Notaris','2023-10-09 06:18:44','2023-10-09 06:18:44'),(442,'Jumlah Anak','2023-10-09 06:18:44','2023-10-09 06:18:44'),(443,'Bulan Perkawinan','2023-10-09 08:55:31','2023-10-09 08:55:31'),(444,'Tahun Perkawinan','2023-10-09 08:55:31','2023-10-09 08:55:31'),(445,'Nomor Akta Perkawinan','2023-10-09 08:55:31','2023-10-09 08:55:31'),(446,'Tanggal Akta Perkawinan','2023-10-09 08:55:31','2023-10-09 08:55:31'),(447,'Bulan Akta Perkawinan','2023-10-09 08:55:31','2023-10-09 08:55:31'),(448,'Tahun Akta Perkawinan','2023-10-09 08:55:31','2023-10-09 08:55:31'),(449,'Nomor Putusan Pengadilan','2023-10-09 08:55:31','2023-10-09 08:55:31'),(450,'Tanggal Putusan Pengadilan','2023-10-09 08:55:31','2023-10-09 08:55:31'),(451,'Bulan Putusan Pengadilan','2023-10-09 08:55:31','2023-10-09 08:55:31'),(452,'Tahun Putusan Pengadilan','2023-10-09 08:55:31','2023-10-09 08:55:31'),(453,'Tanggal Pelaporan Perkawinan di luar Negeri','2023-10-09 08:57:45','2023-10-09 08:57:45'),(454,'Bulan Pelaporan Perkawinan di luar Negeri','2023-10-09 08:57:45','2023-10-09 08:57:45'),(455,'Tahun Pelaporan Perkawinan di luar Negeri','2023-10-09 08:57:45','2023-10-09 08:57:45'),(456,'Tempat Pencatatan Perkawinan','2023-10-10 04:33:29','2023-10-10 04:33:29'),(457,'Nomor Penetapan Pengadilan','2023-10-10 04:43:36','2023-10-10 04:43:36'),(458,'Nomor Surat Keterangan Panitera Pengadilan','2023-10-10 05:00:21','2023-10-10 05:00:21'),(459,'Tanggal Surat Keterangan Panitera Pengadilan','2023-10-10 05:02:20','2023-10-10 05:02:20'),(460,'Bulan Surat Keterangan Panitera Pengadilan','2023-10-10 05:02:20','2023-10-10 05:02:20'),(461,'Tahun Surat Keterangan Panitera Pengadilan','2023-10-10 05:02:20','2023-10-10 05:02:20'),(462,'Bulan Perceraian','2023-10-10 05:17:46','2023-10-10 05:17:46'),(463,'Tahun Perceraian','2023-10-10 05:17:46','2023-10-10 05:17:46'),(464,'Tanggal Perceraian Luar Negeri','2023-10-10 05:18:45','2023-10-10 05:18:45'),(465,'Bulan Perceraian Luar Negeri','2023-10-10 05:18:45','2023-10-10 05:18:45'),(466,'Tahun Perceraian Luar Negeri','2023-10-10 05:18:45','2023-10-10 05:18:45'),(467,'Bulan Kematian','2023-10-10 05:52:38','2023-10-10 05:52:38'),(468,'Tahun Kematian','2023-10-10 05:52:38','2023-10-10 05:52:38'),(469,'Yang Menerangkan','2023-10-10 05:54:06','2023-10-10 05:54:06'),(470,'Nama Anak Angkat','2023-10-10 06:31:27','2023-10-10 06:31:27'),(471,'Nomor Akta Kelahiran Anak Angkat','2023-10-10 06:31:27','2023-10-10 06:31:27'),(472,'Tanggal Akta Kelahiran Pengangkatan Anak','2023-10-10 06:31:27','2023-10-10 06:31:27'),(473,'Bulan Akta Kelahiran Pengangkatan Anak','2023-10-10 06:31:27','2023-10-10 06:31:27'),(474,'Tahun Akta Kelahiran Pengangkatan Anak','2023-10-10 06:31:27','2023-10-10 06:31:27'),(475,'Dinas atau Kabupaten yang Menerbitkan Pengangkatan Anak Angkat','2023-10-10 06:31:27','2023-10-10 06:31:27'),(476,'Nama Ibu Kandung Anak Angkat','2023-10-10 06:31:27','2023-10-10 06:31:27'),(477,'NIK Ibu Anak Angkat','2023-10-10 06:31:27','2023-10-10 06:31:27'),(478,'Kewarganegaraan Ibu Anak Angkat','2023-10-10 06:31:27','2023-10-10 06:31:27'),(479,'Nama Ayah Kandung Anak Angkat','2023-10-10 06:31:27','2023-10-10 06:31:27'),(480,'NIK Ayah Kandung Anak Angkat','2023-10-10 06:31:27','2023-10-10 06:31:27'),(481,'Kewarganegaraan Ayah Anak Angkat','2023-10-10 06:31:27','2023-10-10 06:31:27'),(482,'Nama Ibu Angkat ','2023-10-10 06:34:00','2023-10-10 06:34:00'),(483,'NIK Ibu Angkat','2023-10-10 06:34:00','2023-10-10 06:34:00'),(484,'Nomor Paspor Ibu Angkat','2023-10-10 06:34:00','2023-10-10 06:34:00'),(485,'Nama Ayah Angkat ','2023-10-10 06:34:00','2023-10-10 06:34:00'),(486,'NIK Ayah Angkat','2023-10-10 06:34:00','2023-10-10 06:34:00'),(487,'Nomor Paspor Ayah Angkat','2023-10-10 06:34:00','2023-10-10 06:34:00'),(488,'Tanggal Penetapan Pengadilan Anak Angkat','2023-10-10 06:35:08','2023-10-10 06:35:08'),(489,'Bulan Penetapan Pengadilan Anak Angkat','2023-10-10 06:35:08','2023-10-10 06:35:08'),(490,'Tahun Penetapan Pengadilan Anak Angkat','2023-10-10 06:35:08','2023-10-10 06:35:08'),(491,'Nama Lembaga Pengadilan','2023-10-10 08:19:04','2023-10-10 08:19:04'),(492,'Tempat Lembaga Pengadilan','2023-10-10 08:19:04','2023-10-10 08:19:04'),(493,'Nomor Akta Kelahiran','2023-10-10 09:14:35','2023-10-10 09:14:35'),(494,'Tanggal Penerbitan Akta Kelahiran','2023-10-10 09:54:57','2023-10-10 09:54:57'),(495,'Bulan Penerbitan Akta Kelahiran','2023-10-10 09:54:57','2023-10-10 09:54:57'),(496,'Tahun Penerbitan Akta Kelahiran','2023-10-10 09:54:57','2023-10-10 09:54:57'),(497,'Dinas Kabupaten atau Kota yang menerbitkan Akta Kelahiran','2023-10-10 10:56:53','2023-10-10 10:56:53'),(498,'Tanggal Kelahiran Anak','2023-10-10 11:00:02','2023-10-10 11:00:02'),(499,'Bulan Kelahiran Anak','2023-10-10 11:00:02','2023-10-10 11:00:02'),(500,'Tahun Kelahiran Anak','2023-10-10 11:00:02','2023-10-10 11:00:02'),(501,'Tanggal Perkawinan Anak','2023-10-10 11:10:10','2023-10-10 11:10:10'),(502,'Bulan Perkawinan Anak','2023-10-10 11:10:10','2023-10-10 11:10:10'),(503,'Tahun Perkawinan Anak','2023-10-10 11:10:10','2023-10-10 11:10:10'),(504,'Nama Ibu Kandung Pengakuan Anak','2023-10-11 04:51:05','2023-10-11 04:51:05'),(505,'NIK Ibu Kandung Pengakuan Anak','2023-10-11 04:51:05','2023-10-11 04:51:05'),(506,'Kewarganegaraan Ibu Kandung Pengakuan Anak','2023-10-11 04:51:05','2023-10-11 04:51:05'),(507,'Nama Ayah Kandung Pengakuan Anak','2023-10-11 04:51:05','2023-10-11 04:51:05'),(508,'NIK Ayah Kandung Pengakuan Anak','2023-10-11 04:51:05','2023-10-11 04:51:05'),(509,'Kewarganegaraan Ayah Kandung Pengakuan Anak','2023-10-11 04:51:05','2023-10-11 04:51:05'),(510,'Tanggal Penetapan Pengadilan Pengakuan Anak','2023-10-11 04:51:05','2023-10-11 04:51:05'),(511,'Bulan Penetapan Pengadilan Pengakuan Anak','2023-10-11 04:51:05','2023-10-11 04:51:05'),(512,'Tahun Penetapan Pengadilan Pengakuan Anak','2023-10-11 04:51:05','2023-10-11 04:51:05'),(513,'Nomor Penetapan Pengadilan Pengakuan Anak','2023-10-11 04:51:05','2023-10-11 04:51:05'),(514,'Nama Lembaga Pengadilan Pengakuan Anak','2023-10-11 04:51:05','2023-10-11 04:51:05'),(515,'Tempat Lembaga Pengadilan Pengakuan Anak','2023-10-11 04:51:05','2023-10-11 04:51:05'),(516,'Nama Ibu Kandung Pengesahan Anak','2023-10-11 05:00:56','2023-10-11 05:00:56'),(517,'NIK Ibu Kandung Pengesahan Anak','2023-10-11 05:00:56','2023-10-11 05:00:56'),(518,'Kewarganegaraan Ibu Kandung Pengesahan Anak','2023-10-11 05:00:56','2023-10-11 05:00:56'),(519,'Nama Ayah Kandung Pengesahan Anak','2023-10-11 05:00:56','2023-10-11 05:00:56'),(520,'NIK Ayah Kandung Pengesahan Anak','2023-10-11 05:00:56','2023-10-11 05:00:56'),(521,'Kewarganegaraan Ayah Kandung Pengesahan Anak','2023-10-11 05:00:56','2023-10-11 05:00:56'),(522,'Tanggal Penetapan Pengadilan Pengesahan Anak','2023-10-11 05:04:46','2023-10-11 05:04:46'),(523,'Bulan Penetapan Pengadilan Pengesahan Anak','2023-10-11 05:04:46','2023-10-11 05:04:46'),(524,'Tahun Penetapan Pengadilan Pengesahan Anak','2023-10-11 05:04:46','2023-10-11 05:04:46'),(525,'Nomor Penetapan Pengadilan Pengesahan Anak','2023-10-11 05:04:46','2023-10-11 05:04:46'),(526,'Nama Lembaga Pengadilan Pengesahan Anak','2023-10-11 05:04:46','2023-10-11 05:04:46'),(527,'Tempat Lembaga Pengadilan Pengesahan Anak','2023-10-11 05:04:46','2023-10-11 05:04:46'),(528,'Nama Lama','2023-10-11 05:07:52','2023-10-11 05:07:52'),(529,'Nama Baru','2023-10-11 05:07:52','2023-10-11 05:07:52'),(530,'Nama Ayah atau Ibu atau Wali','2023-10-11 05:07:52','2023-10-11 05:07:52'),(531,'NIK Ayah atau Ibu atau Wali','2023-10-11 05:07:52','2023-10-11 05:07:52'),(532,'Kewarganegaraan Ayah atau Ibu atau Wali','2023-10-11 05:07:52','2023-10-11 05:07:52'),(533,'Tanggal Penetapan Pengadilan Perubahan Nama','2023-10-11 05:07:52','2023-10-11 05:07:52'),(534,'Bulan Penetapan Pengadilan Perubahan Nama','2023-10-11 05:07:52','2023-10-11 05:07:52'),(535,'Tahun Penetapan Pengadilan Perubahan Nama','2023-10-11 05:07:52','2023-10-11 05:07:52'),(536,'Nomor Penetapan Pengadilan Perubahan Nama','2023-10-11 05:07:52','2023-10-11 05:07:52'),(537,'Nama Lembaga Pengadilan Perubahan Nama','2023-10-11 05:07:52','2023-10-11 05:07:52'),(538,'Tempat Lembaga Pengadilan Perubahan Nama','2023-10-11 05:07:52','2023-10-11 05:07:52'),(539,'Kewarganegaraan Baru','2023-10-11 05:12:25','2023-10-11 05:12:25'),(540,'Nama Suami atau Istri','2023-10-11 05:13:15','2023-10-11 05:13:15'),(541,'NIK Suami atau Istri','2023-10-11 05:13:15','2023-10-11 05:13:15'),(542,'Nomor Afidavit','2023-10-11 05:13:15','2023-10-11 05:13:15'),(543,'Nomor Keputusan Presiden','2023-10-11 05:23:11','2023-10-11 05:23:11'),(544,'Tanggal Keputusan Presiden','2023-10-11 05:23:11','2023-10-11 05:23:11'),(545,'Bulan Keputusan Presiden','2023-10-11 05:23:11','2023-10-11 05:23:11'),(546,'Tahun Keputusan Presiden','2023-10-11 05:23:11','2023-10-11 05:23:11'),(547,'Nomor Berita Acara Sumpah atau Janji Setia','2023-10-11 05:23:11','2023-10-11 05:23:11'),(548,'Nama Jabatan Yang Menerbitkan BAS atau Janji Setia','2023-10-11 05:23:11','2023-10-11 05:23:11'),(549,'Tanggal BAS atau Janji Setia','2023-10-11 05:23:11','2023-10-11 05:23:11'),(550,'Bulan BAS atau Janji Setia','2023-10-11 05:23:11','2023-10-11 05:23:11'),(551,'Tahun BAS atau Janji Setia','2023-10-11 05:23:11','2023-10-11 05:23:11'),(552,'Nomor Keputusan Menteri Bidang Kewarganegaraan','2023-10-11 05:23:11','2023-10-11 05:23:11'),(553,'Tanggal Keputusan Menteri','2023-10-11 05:23:11','2023-10-11 05:23:11'),(554,'Bulan Keputusan Menteri','2023-10-11 05:23:11','2023-10-11 05:23:11'),(555,'Tahun Keputusan Menteri','2023-10-11 05:23:11','2023-10-11 05:23:11'),(556,'Jenis Kelamin Lama','2023-10-11 06:39:38','2023-10-11 06:39:38'),(557,'Jenis Kelamin Baru','2023-10-11 06:39:38','2023-10-11 06:39:38'),(558,'Tanggal Penetapan Pengadilan Peristiwa Penting','2023-10-11 06:40:36','2023-10-11 06:40:36'),(559,'Bulan Penetapan Pengadilan Peristiwa Penting','2023-10-11 06:40:36','2023-10-11 06:40:36'),(560,'Tahun Penetapan Pengadilan Peristiwa Penting','2023-10-11 06:40:36','2023-10-11 06:40:36'),(561,'Nomor Penetapan Pengadilan Peristiwa Penting','2023-10-11 06:40:36','2023-10-11 06:40:36'),(562,'Nama Lembaga Pengadilan Peristiwa Penting','2023-10-11 06:40:36','2023-10-11 06:40:36'),(563,'Tempat Lembaga Pengadilan Peristiwa Penting','2023-10-11 06:40:36','2023-10-11 06:40:36'),(564,'Nomor Akta Yang Ingin Dibetulkan atau Ditarik','2023-10-11 09:19:01','2023-10-11 09:19:01'),(565,'Nama Ayah atau Ibu atau Wali Pembetulan Akta','2023-10-11 09:19:01','2023-10-11 09:19:01'),(566,'NIK Ayah atau Ibu atau Wali Pembetulan Akta','2023-10-11 09:19:01','2023-10-11 09:19:01'),(567,'Akta yang Dibatalkan ','2023-10-11 09:19:01','2023-10-11 09:19:01'),(568,'Nomor Akta yang DIbatalkan','2023-10-11 09:19:01','2023-10-11 09:19:01'),(569,'Tanggal Penetapan Pengadilan Pembatalan Akta','2023-10-11 09:19:01','2023-10-11 09:19:01'),(570,'Bulan Penetapan Pengadilan Pembatalan Akta','2023-10-11 09:19:01','2023-10-11 09:19:01'),(571,'Tahun Penetapan Pengadilan Pembatalan Akta','2023-10-11 09:19:01','2023-10-11 09:19:01'),(572,'Nomor Penetapan Pengadilan Pembatalan Akta','2023-10-11 09:19:01','2023-10-11 09:19:01'),(573,'Nama Lembaga Pengadilan Pembatalan Akta','2023-10-11 09:19:01','2023-10-11 09:19:01'),(574,'Tempat Lembaga Pengadilan Pembatalan Akta','2023-10-11 09:19:01','2023-10-11 09:19:01'),(575,'Jenis Peristiwa Penting ','2023-10-11 10:54:19','2023-10-11 10:54:19'),(576,'Nomor Surat Keterangan Pelaporan Pencatatan Sipil dari Perwakilan RI ','2023-10-11 10:54:19','2023-10-11 10:54:19'),(577,'Tanggal Surat Keterangan Pelaporan Pencatatan Sipil dari Perwakilan RI ','2023-10-11 10:54:19','2023-10-11 10:54:19'),(578,'Kantor Perwakilan yang melakukan Pencatatan','2023-10-11 10:54:19','2023-10-11 10:54:19'),(579,'Nomor Bukti Pencatatan Sipil dari Negara Setempat ','2023-10-11 10:54:19','2023-10-11 10:54:19'),(580,'Tanggal Penerbitan dari Negara Setempat','2023-10-11 10:54:19','2023-10-11 10:54:19');
/*!40000 ALTER TABLE `master_data_formulir_surat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_data_role_akun`
--

DROP TABLE IF EXISTS `master_data_role_akun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_data_role_akun` (
  `id_data_role` int(11) NOT NULL AUTO_INCREMENT,
  `data_role_akun` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_data_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_data_role_akun`
--

LOCK TABLES `master_data_role_akun` WRITE;
/*!40000 ALTER TABLE `master_data_role_akun` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_data_role_akun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_dusun`
--

DROP TABLE IF EXISTS `master_dusun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_dusun` (
  `id_dusun` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dusun` varchar(255) NOT NULL,
  `nama_kasun` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_dusun`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_dusun`
--

LOCK TABLES `master_dusun` WRITE;
/*!40000 ALTER TABLE `master_dusun` DISABLE KEYS */;
INSERT INTO `master_dusun` VALUES (1,'Sumber Bendo','Kepala Dusun Sumber Bendo','2023-08-29 05:00:46','2023-08-29 05:00:46'),(2,'Godehan','Kepala Dusunnya Godehan','2023-08-29 05:00:46','2023-08-29 05:00:46'),(3,'Ketohan','Kepala Dusun Ketohan','2023-08-29 05:00:46','2023-08-29 05:00:46'),(4,'Klaseman','Kepala Dusun Klaseman','2023-08-29 05:00:46','2023-08-29 05:00:46'),(5,'Klampok','Kepala Dusun Klampok','2023-08-29 05:00:46','2023-08-29 05:00:46'),(6,'Krajan','Kepala Dusun Krajan','2023-08-29 05:00:46','2023-08-29 05:00:46'),(7,'Turi','Kepala Dusun Turi','2023-08-29 05:00:46','2023-08-29 05:00:46');
/*!40000 ALTER TABLE `master_dusun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_golongandarah`
--

DROP TABLE IF EXISTS `master_golongandarah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_golongandarah` (
  `id_golongandarah` int(11) NOT NULL AUTO_INCREMENT,
  `nama_golongandarah` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_golongandarah`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_golongandarah`
--

LOCK TABLES `master_golongandarah` WRITE;
/*!40000 ALTER TABLE `master_golongandarah` DISABLE KEYS */;
INSERT INTO `master_golongandarah` VALUES (1,'A','2023-09-13 09:11:44','2023-09-13 09:11:44'),(2,'B','2023-09-13 09:11:44','2023-09-13 09:11:44'),(3,'AB','2023-09-13 09:12:14','2023-09-13 09:12:14'),(4,'O','2023-09-13 09:12:14','2023-09-13 09:12:14');
/*!40000 ALTER TABLE `master_golongandarah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_hak_akses`
--

DROP TABLE IF EXISTS `master_hak_akses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_hak_akses` (
  `id_hak` int(11) NOT NULL AUTO_INCREMENT,
  `id_jabatan` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `tanggal_dibuat` datetime NOT NULL,
  `tanggal_dimodifikasi` datetime NOT NULL,
  PRIMARY KEY (`id_hak`),
  KEY `c_hak_menu` (`id_menu`),
  KEY `c_hak_jabatan` (`id_jabatan`),
  CONSTRAINT `c_hak_jabatan` FOREIGN KEY (`id_jabatan`) REFERENCES `master_jabatan` (`id_jabatan`),
  CONSTRAINT `c_hak_menu` FOREIGN KEY (`id_menu`) REFERENCES `master_menu` (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_hak_akses`
--

LOCK TABLES `master_hak_akses` WRITE;
/*!40000 ALTER TABLE `master_hak_akses` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_hak_akses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_jabatan`
--

DROP TABLE IF EXISTS `master_jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_jabatan` (
  `id_jabatan` int(11) NOT NULL AUTO_INCREMENT,
  `jabatan` char(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_jabatan`
--

LOCK TABLES `master_jabatan` WRITE;
/*!40000 ALTER TABLE `master_jabatan` DISABLE KEYS */;
INSERT INTO `master_jabatan` VALUES (1,'RT','2023-08-29 05:47:22','2023-09-08 15:08:23'),(2,'RW','2023-08-29 05:47:22','2023-08-29 05:47:22'),(3,'Kepala Dusun','2023-08-29 05:47:40','2023-08-29 05:47:40'),(4,'Kepala Desa','2023-08-29 05:47:40','2023-08-29 05:47:40'),(5,'Admin Desa','2023-08-29 05:47:56','2023-09-08 15:08:29');
/*!40000 ALTER TABLE `master_jabatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_jenis_aset`
--

DROP TABLE IF EXISTS `master_jenis_aset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_jenis_aset` (
  `id_jenis_aset` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_aset` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_jenis_aset`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_jenis_aset`
--

LOCK TABLES `master_jenis_aset` WRITE;
/*!40000 ALTER TABLE `master_jenis_aset` DISABLE KEYS */;
INSERT INTO `master_jenis_aset` VALUES (1,'Aset Lahan','2023-09-07 09:25:31','2023-10-24 09:25:00'),(12,'Aset Rumah','2023-09-07 04:04:05','2023-09-07 09:56:49'),(13,'Aset Ternak','2023-09-07 09:49:06','2023-09-07 09:49:06'),(14,'Aset Transportasi','2023-09-15 05:06:20','2023-09-15 05:06:20'),(17,'Aset Infrastruktur','2023-10-24 09:23:10','2023-10-24 09:23:10'),(18,'Aset Pribadi','2023-10-24 09:29:40','2023-10-24 09:29:40');
/*!40000 ALTER TABLE `master_jenis_aset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_jenis_berkas`
--

DROP TABLE IF EXISTS `master_jenis_berkas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_jenis_berkas` (
  `id_jenis_berkas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_berkas` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_jenis_berkas`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_jenis_berkas`
--

LOCK TABLES `master_jenis_berkas` WRITE;
/*!40000 ALTER TABLE `master_jenis_berkas` DISABLE KEYS */;
INSERT INTO `master_jenis_berkas` VALUES (1,'SPTJM Kelahiran','2023-09-01 10:19:51','2023-09-06 09:27:11'),(2,'Surat Pindah Ke Dalam','2023-09-04 04:23:47','2023-09-04 04:23:47'),(3,'SPTJM Kematian','2023-09-04 04:23:47','2023-09-04 04:23:47'),(4,'Surat Pindah Keluar','2023-09-04 04:23:47','2023-09-04 04:23:47'),(10,'KTP anak','2023-09-04 04:53:50','2023-09-04 04:53:50'),(12,'Akta kematian','2023-09-05 13:10:36','2023-09-26 11:53:17'),(13,'tes1','2023-09-05 13:10:55','2023-09-05 13:10:55'),(14,'Form F1.02','2023-09-07 10:18:06','2023-09-07 10:18:06'),(15,'Foto KTP rusak','2023-09-07 10:18:06','2023-09-07 10:18:06'),(16,'SK Kehilangan KTP','2023-09-07 10:18:06','2023-09-07 10:18:06'),(17,'Foto KK terbitan terbaru','2023-09-07 10:18:06','2023-09-07 10:18:06'),(18,'SK Pemeriksaan Golongan Darah','2023-09-07 10:18:06','2023-09-07 10:18:06'),(20,'Akta kelahiran','2023-09-12 05:25:18','2023-09-12 05:25:18'),(21,'Foto KIA rusak','2023-09-12 05:25:18','2023-09-12 05:25:18'),(22,'Foto anak 3x4','2023-09-12 05:25:18','2023-09-12 05:25:18'),(23,'SK Kehilangan KIA','2023-09-12 05:25:18','2023-09-12 05:25:18'),(25,'Foto KIA lama','2023-09-12 05:25:18','2023-09-12 05:25:18'),(26,'Form F1.03','2023-09-12 05:32:56','2023-09-12 05:32:56'),(27,'Surat Keterangan Tidak Mampu Joko','2023-09-14 09:37:23','2023-09-14 09:40:48'),(28,'Form F2.01','2023-09-15 00:28:37','2023-09-15 00:28:37'),(29,'SK Kelahiran','2023-09-15 00:34:55','2023-09-15 00:34:55'),(30,'SK Kematian','2023-09-15 01:44:17','2023-09-15 01:44:17'),(31,'Form F1.06','2023-09-15 04:56:37','2023-09-15 04:56:37'),(32,'Foto SKPWNI','2023-09-15 04:56:37','2023-09-15 04:56:37'),(33,'Foto SPTJM Nikah','2023-09-15 04:56:37','2023-09-15 04:56:37'),(34,'Akta Perkawinan','2023-09-15 04:56:37','2023-09-15 04:56:37'),(35,'Akta Perceraian','2023-09-15 04:56:37','2023-09-15 04:56:37'),(36,'SPTJM Cerai','2023-09-15 04:56:37','2023-09-15 04:56:37'),(37,'Ijazah terbaru','2023-09-15 04:56:37','2023-09-15 04:56:37'),(38,'Akta kelahiran KK baru','2023-09-15 04:56:37','2023-09-15 04:56:37'),(39,'Sertifikat Memeluk Agama','2023-09-15 04:56:37','2023-09-15 04:56:37'),(41,'SK Pindah Datang','2023-09-15 04:56:37','2023-09-15 04:56:37'),(42,'SK Datang dari Luar Negeri','2023-09-15 04:56:37','2023-09-15 04:56:37'),(43,'Paspor','2023-09-15 04:56:37','2023-09-15 04:56:37'),(44,'Surat Izin Tinggal Tetap','2023-09-15 04:56:37','2023-09-15 04:56:37'),(45,'Surat Keterangan Catatan Kepolisian','2023-09-15 04:56:37','2023-09-15 04:56:37'),(46,'Buku Nikah','2023-09-15 05:34:44','2023-09-15 05:34:44'),(47,'Foto KK suami','2023-09-15 05:34:44','2023-09-15 05:34:44'),(48,'Foto KTP suami','2023-09-15 05:34:44','2023-09-15 05:34:44'),(49,'SK Domisili','2023-09-15 05:34:44','2023-09-15 05:34:44'),(50,'Akta Kematian','2023-09-15 05:36:06','2023-09-15 05:36:06'),(51,'Foto KK rusak','2023-09-15 05:46:11','2023-09-15 05:46:11'),(52,'SK Kehilangan KK','2023-09-15 05:48:32','2023-09-15 05:48:32'),(53,'Foto KK istri','2023-09-15 08:22:40','2023-09-15 08:22:40'),(54,'Foto KTP istri','2023-09-15 08:22:40','2023-09-15 08:22:40'),(55,'Foto KK sistem','2023-09-15 08:32:07','2023-09-15 08:32:07'),(56,'Foto KTP sistem','2023-09-15 08:32:07','2023-09-15 08:32:07'),(57,'Surat Ijin Mendirikan Bangunan','2023-09-15 14:38:31','2023-09-15 14:38:31'),(58,'KK Layanan','2023-09-19 04:33:40','2023-09-19 04:33:40'),(59,'kartu keluarga','2023-09-26 11:47:45','2023-09-26 11:47:45');
/*!40000 ALTER TABLE `master_jenis_berkas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_jenis_berkas_penduduk`
--

DROP TABLE IF EXISTS `master_jenis_berkas_penduduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_jenis_berkas_penduduk` (
  `id_jenis_berkas` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_berkas_penduduk` varchar(255) NOT NULL,
  `status_required` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_jenis_berkas`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_jenis_berkas_penduduk`
--

LOCK TABLES `master_jenis_berkas_penduduk` WRITE;
/*!40000 ALTER TABLE `master_jenis_berkas_penduduk` DISABLE KEYS */;
INSERT INTO `master_jenis_berkas_penduduk` VALUES (1,'Kartu Keluarga',1,'2023-09-01 09:40:00','2023-09-01 09:40:00'),(2,'Kartu Tanda Penduduk',2,'2023-09-01 09:40:23','2023-09-01 09:40:23'),(6,'Akta Kelahiran',1,'2023-09-12 20:56:06','2023-09-12 15:55:15'),(7,'Akta Pernikahan',2,'2023-09-12 20:56:06','2023-09-12 15:55:15'),(12,'Ijazah',2,'2023-09-12 20:56:53','2023-09-12 15:56:44'),(13,'KIA',2,'2023-09-12 20:56:53','2023-09-12 15:56:44'),(16,'Paspor',2,'2023-09-13 11:44:20','2023-09-13 06:44:12'),(17,'KITAP',2,'2023-09-13 11:44:20','2023-09-13 06:44:12'),(19,'Akta Perceraian',2,'2023-09-13 11:44:43','2023-09-13 06:44:39');
/*!40000 ALTER TABLE `master_jenis_berkas_penduduk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_jenis_data_aset`
--

DROP TABLE IF EXISTS `master_jenis_data_aset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_jenis_data_aset` (
  `id_jenis_data_aset` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_data_aset` varchar(250) NOT NULL,
  `tipe_data` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_jenis_data_aset`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_jenis_data_aset`
--

LOCK TABLES `master_jenis_data_aset` WRITE;
/*!40000 ALTER TABLE `master_jenis_data_aset` DISABLE KEYS */;
INSERT INTO `master_jenis_data_aset` VALUES (1,'Obyek','text','2023-09-15 05:14:57','2023-09-15 05:14:57'),(2,'Lokasi','text','2023-09-15 05:14:57','2023-09-15 05:14:57'),(3,'Luas','text','2023-09-15 05:16:41','2023-09-15 05:16:41'),(4,'Jenis Transportasi','text','2023-09-15 05:16:41','2023-09-15 05:16:41'),(5,'Detail Jenis Transportasi','text','2023-09-15 05:18:00','2023-09-15 05:18:00'),(6,'Plat Nomor','text','2023-09-15 05:18:00','2023-09-15 05:18:00'),(7,'Jenis Kepemilikan','text','2023-09-15 05:18:30','2023-09-15 05:18:30'),(8,'Jenis Ternak','text','2023-09-15 05:18:30','2023-09-15 05:18:30'),(9,'Jumlah Ternak','text','2023-09-15 05:18:30','2023-09-15 05:18:30'),(10,'Keterangan','text','2023-09-15 13:55:16','2023-09-15 13:55:16');
/*!40000 ALTER TABLE `master_jenis_data_aset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_jenis_data_penduduk`
--

DROP TABLE IF EXISTS `master_jenis_data_penduduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_jenis_data_penduduk` (
  `id_jenis_data` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_data_penduduk` varchar(255) NOT NULL,
  `tipe_data` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_jenis_data`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_jenis_data_penduduk`
--

LOCK TABLES `master_jenis_data_penduduk` WRITE;
/*!40000 ALTER TABLE `master_jenis_data_penduduk` DISABLE KEYS */;
INSERT INTO `master_jenis_data_penduduk` VALUES (1,'Nama Ayah','text','2023-09-14 09:18:35','2023-09-14 04:18:08'),(2,'Nama Ibu','text','2023-09-14 09:18:35','2023-09-14 04:18:08');
/*!40000 ALTER TABLE `master_jenis_data_penduduk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_jenis_data_pengajuan_layanan`
--

DROP TABLE IF EXISTS `master_jenis_data_pengajuan_layanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_jenis_data_pengajuan_layanan` (
  `id_detail_jenis_data_pengajuan_layanan` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_data_perubahan` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_detail_jenis_data_pengajuan_layanan`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_jenis_data_pengajuan_layanan`
--

LOCK TABLES `master_jenis_data_pengajuan_layanan` WRITE;
/*!40000 ALTER TABLE `master_jenis_data_pengajuan_layanan` DISABLE KEYS */;
INSERT INTO `master_jenis_data_pengajuan_layanan` VALUES (1,'nama_lengkap','2023-09-12 15:25:20','2023-09-12 10:23:41'),(2,'nomor_kk','2023-09-12 15:25:20','2023-09-12 10:23:41'),(3,'kota_lahir','2023-09-20 14:40:39','2023-09-20 09:39:01'),(4,'tanggal_lahir','2023-09-20 14:40:39','2023-09-20 09:39:01'),(5,'pekerjaan','2023-09-20 14:40:39','2023-09-20 09:39:01'),(6,'nomor_telepon','2023-09-20 14:40:39','2023-09-20 09:39:01'),(7,'alamat','2023-09-20 14:40:39','2023-09-20 09:39:01'),(8,'kecamatan','2023-09-20 14:40:39','2023-09-20 09:39:01'),(9,'kelurahan','2023-09-20 14:40:39','2023-09-20 09:39:01'),(10,'rw','2023-09-20 14:40:39','2023-09-20 09:39:01'),(11,'rt','2023-09-20 14:40:39','2023-09-20 09:39:01'),(12,'kode_pos','2023-09-20 14:40:39','2023-09-20 09:39:01'),(13,'jenis_kelamin','2023-09-20 14:40:39','2023-09-20 09:39:01'),(14,'golongan_darah','2023-09-20 14:40:39','2023-09-20 09:39:01'),(15,'nama_kepala_keluarga','2023-09-20 14:40:39','2023-09-20 09:39:01'),(16,'nomor_akta_kelahiran','2023-09-20 14:40:39','2023-09-20 09:39:01'),(17,'agama','2023-09-20 15:05:28','2023-09-20 10:05:10'),(18,'kewarganegaraan','2023-09-20 15:05:28','2023-09-20 10:05:10'),(19,'status_kawin','2023-09-22 13:41:16','2023-09-22 08:40:50'),(20,'dusun','2023-09-29 09:29:15','2023-09-29 09:29:15');
/*!40000 ALTER TABLE `master_jenis_data_pengajuan_layanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_jenis_data_perubahan_penduduk`
--

DROP TABLE IF EXISTS `master_jenis_data_perubahan_penduduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_jenis_data_perubahan_penduduk` (
  `id_detail_jenis_data_perubahan_penduduk` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori_perubahan` int(11) NOT NULL,
  `jenis_data_perubahan` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_detail_jenis_data_perubahan_penduduk`),
  KEY `c_jenisdataperubahan_kategoriperubahan` (`id_kategori_perubahan`),
  CONSTRAINT `c_jenisdataperubahan_kategoriperubahan` FOREIGN KEY (`id_kategori_perubahan`) REFERENCES `master_kategori_perubahan_penduduk` (`id_kategori_perubahan`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_jenis_data_perubahan_penduduk`
--

LOCK TABLES `master_jenis_data_perubahan_penduduk` WRITE;
/*!40000 ALTER TABLE `master_jenis_data_perubahan_penduduk` DISABLE KEYS */;
INSERT INTO `master_jenis_data_perubahan_penduduk` VALUES (1,1,'Nama Anak','2023-08-30 05:10:49','2023-09-06 11:19:41'),(2,1,'Jenis Kelamin Anak','2023-08-30 05:10:49','2023-08-30 05:10:49'),(3,1,'Tempat Lahir','2023-08-31 09:16:57','2023-08-31 09:16:57'),(4,1,'Tanggal Lahir','2023-08-31 09:16:57','2023-08-31 09:16:57'),(5,1,'Anak Ke','2023-09-05 11:08:54','2023-09-05 11:08:54'),(6,1,'Agama','2023-09-11 16:43:33','2023-09-11 16:43:33'),(7,1,'Nama Kepala Keluarga','2023-09-11 16:44:16','2023-09-11 16:44:16'),(8,1,'Nama Orang Tua','2023-09-11 16:44:16','2023-09-11 16:44:16'),(9,1,'Umur Orang Tua','2023-09-12 11:42:46','2023-09-12 11:42:46'),(10,1,'Pekerjaan Orang Tua','2023-09-12 16:36:41','2023-09-12 16:36:41'),(11,1,'Alamat','2023-09-12 16:36:41','2023-09-12 16:36:41'),(12,2,'NIK','2023-09-12 16:45:15','2023-09-12 16:45:15'),(13,2,'Nama Lengkap yang Pindah','2023-09-12 16:45:15','2023-09-12 16:45:15'),(14,2,'Nomor KK','2023-09-12 16:45:15','2023-09-12 16:45:15'),(15,2,'Nama Kepala Keluarga','2023-09-12 16:45:15','2023-09-12 16:45:15'),(16,2,'Alamat Sekarang','2023-09-12 16:45:15','2023-09-12 16:45:15'),(17,2,'Alamat Tujuan','2023-09-12 16:45:15','2023-09-12 16:45:15'),(18,2,'Jumlah Anggota yang Pindah','2023-09-12 16:45:15','2023-09-12 16:45:15'),(19,3,'Nama','2023-09-12 16:45:15','2023-09-12 16:45:15'),(20,3,'Jenis Kelamin','2023-09-12 16:56:33','2023-09-12 16:56:33'),(21,3,'Tempat Lahir','2023-09-12 16:56:33','2023-09-12 16:56:33'),(22,3,'Tanggal Lahir','2023-09-12 16:56:33','2023-09-12 16:56:33'),(23,3,'Umur','2023-09-12 16:56:33','2023-09-12 16:56:33'),(24,3,'Agama','2023-09-12 16:56:33','2023-09-12 16:56:33'),(25,3,'Pekerjaan','2023-09-12 16:56:33','2023-09-12 16:56:33'),(26,3,'NIK','2023-09-12 16:56:33','2023-09-12 16:56:33'),(27,3,'Alamat','2023-09-12 16:56:33','2023-09-12 16:56:33'),(28,3,'Tanggal Meninggal','2023-09-12 16:56:33','2023-09-12 16:56:33'),(29,3,'Pukul Meninggal','2023-09-12 16:56:33','2023-09-12 16:56:33'),(30,3,'Alamat Meninggal','2023-09-12 16:56:33','2023-09-12 16:56:33'),(31,3,'Lokasi Makam ','2023-09-12 16:56:33','2023-09-12 16:56:33'),(32,3,'Nama Pelapor','2023-09-12 16:56:33','2023-09-12 16:56:33'),(33,3,'Jenis Kelamin Pelapor','2023-09-12 16:56:33','2023-09-12 16:56:33'),(34,3,'Tempat Lahir Pelapor','2023-09-12 16:56:33','2023-09-12 16:56:33'),(35,3,'Tanggal Lahir Pelapor','2023-09-12 16:56:33','2023-09-12 16:56:33'),(36,3,'Umur Pelapor','2023-09-12 16:56:33','2023-09-12 16:56:33'),(37,3,'Agama Pelapor','2023-09-12 16:56:33','2023-09-12 16:56:33'),(38,3,'Pekerjaan Pelapor','2023-09-12 17:04:10','2023-09-12 17:04:10'),(39,3,'NIK Pelapor','2023-09-12 17:04:10','2023-09-12 17:04:10'),(40,3,'Alamat Pelapor','2023-09-12 17:04:10','2023-09-12 17:04:10'),(41,4,'NIK','2023-09-12 17:04:10','2023-09-12 17:04:10'),(42,4,'Nama Lengkap yang Pindah','2023-09-12 17:04:10','2023-09-12 17:04:10'),(43,4,'Nomor KK','2023-09-12 17:04:10','2023-09-12 17:04:10'),(44,4,'Nama Kepala Keluarga','2023-09-12 17:04:10','2023-09-12 17:04:10'),(45,4,'Alamat Sekarang','2023-09-12 17:04:10','2023-09-12 17:04:10'),(46,4,'Alamat Tujuan','2023-09-13 08:53:24','2023-09-13 08:53:24'),(47,4,'Jumlah Anggota','2023-09-13 08:53:24','2023-09-13 08:53:24'),(48,4,'Keluarga yang Pindah','2023-09-13 08:53:24','2023-09-13 08:53:24'),(62,1,'Testing 1','2023-10-24 08:53:30','2023-10-24 08:53:30');
/*!40000 ALTER TABLE `master_jenis_data_perubahan_penduduk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_jenis_kelamin`
--

DROP TABLE IF EXISTS `master_jenis_kelamin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_jenis_kelamin` (
  `id_jenis_kelamin` int(11) NOT NULL AUTO_INCREMENT,
  `kelamin` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_jenis_kelamin`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_jenis_kelamin`
--

LOCK TABLES `master_jenis_kelamin` WRITE;
/*!40000 ALTER TABLE `master_jenis_kelamin` DISABLE KEYS */;
INSERT INTO `master_jenis_kelamin` VALUES (1,'Laki - Laki','2023-08-29 05:06:02','2023-08-29 05:06:02'),(2,'Perempuan','2023-08-29 05:06:02','2023-08-29 05:06:02');
/*!40000 ALTER TABLE `master_jenis_kelamin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_jenis_konten`
--

DROP TABLE IF EXISTS `master_jenis_konten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_jenis_konten` (
  `id_jenis_konten` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_konten` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_modified` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_jenis_konten`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_jenis_konten`
--

LOCK TABLES `master_jenis_konten` WRITE;
/*!40000 ALTER TABLE `master_jenis_konten` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_jenis_konten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_jenis_menu`
--

DROP TABLE IF EXISTS `master_jenis_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_jenis_menu` (
  `id_jenis_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jenis_menu` varchar(50) NOT NULL,
  `title_menu` varchar(50) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id_jenis_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_jenis_menu`
--

LOCK TABLES `master_jenis_menu` WRITE;
/*!40000 ALTER TABLE `master_jenis_menu` DISABLE KEYS */;
INSERT INTO `master_jenis_menu` VALUES (1,'Perubahan Penduduk','kependudukan',1),(2,'keuangan','keuangan',1),(3,'Master Data','admin',1),(4,'Validasi Data','admin',2),(5,'Log Activity','admin',4),(6,'User','admin',3),(7,'Layanan','kependudukan',3),(8,'Surat Menyurat','kependudukan',4),(9,'Laporan Penduduk','kependudukan',5),(10,'Profil Desa','admin',5),(121,'Informasi Penduduk','kependudukan',2);
/*!40000 ALTER TABLE `master_jenis_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_jenis_perubahan`
--

DROP TABLE IF EXISTS `master_jenis_perubahan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_jenis_perubahan` (
  `id_jenis_perubahan` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_perubahan` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_jenis_perubahan`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_jenis_perubahan`
--

LOCK TABLES `master_jenis_perubahan` WRITE;
/*!40000 ALTER TABLE `master_jenis_perubahan` DISABLE KEYS */;
INSERT INTO `master_jenis_perubahan` VALUES (1,'Penambahan penduduk','2023-08-30 05:06:36','2023-08-30 05:06:36'),(2,'Pengurangan penduduk','2023-08-30 05:06:36','2023-08-30 05:06:36'),(11,'Perubahan data pada KK','2023-09-15 11:04:46','2023-09-15 11:04:46'),(12,'Penduduk','2023-09-15 14:42:00','2023-09-15 14:42:10'),(13,'Perubahan data pada KTP','2023-09-26 09:15:35','2023-09-26 09:15:35');
/*!40000 ALTER TABLE `master_jenis_perubahan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_kategori_daftar_layanan`
--

DROP TABLE IF EXISTS `master_kategori_daftar_layanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_kategori_daftar_layanan` (
  `id_kategori_layanan` int(11) NOT NULL AUTO_INCREMENT,
  `id_layanan` int(11) NOT NULL,
  `nama_kategori_layanan` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_kategori_layanan`),
  KEY `c_kategoridaftarlayanan_daftarlayanan` (`id_layanan`),
  CONSTRAINT `c_kategoridaftarlayanan_daftarlayanan` FOREIGN KEY (`id_layanan`) REFERENCES `master_daftar_layanan` (`id_layanan`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_kategori_daftar_layanan`
--

LOCK TABLES `master_kategori_daftar_layanan` WRITE;
/*!40000 ALTER TABLE `master_kategori_daftar_layanan` DISABLE KEYS */;
INSERT INTO `master_kategori_daftar_layanan` VALUES (1,1,'(ktp) rusak','2023-08-31 05:17:14','2023-09-18 16:18:00'),(2,1,'(ktp) hilang','2023-08-31 05:17:14','2023-08-31 05:17:14'),(3,1,'(ktp) perubahandata','2023-08-31 05:17:14','2023-08-31 05:17:14'),(4,1,'(ktp) baru','2023-08-31 05:17:14','2023-08-31 05:17:14'),(5,3,'(Akta) kelahiran','2023-08-31 09:32:42','2023-08-31 09:32:42'),(6,3,'(Akta) kematian','2023-08-31 09:32:42','2023-08-31 09:32:42'),(7,4,'(KIA) rusak','2023-08-31 09:33:12','2023-08-31 09:33:12'),(8,4,'(KIA) hilang','2023-08-31 09:33:12','2023-08-31 09:33:12'),(9,4,'(KIA) perubahandata','2023-08-31 09:33:12','2023-08-31 09:33:12'),(10,4,'(KIA) baru','2023-08-31 09:33:12','2023-08-31 09:33:12'),(11,2,'(SKPWNI) baru','2023-08-31 09:34:00','2023-08-31 09:34:00'),(12,5,'(KK) rusak','2023-09-14 09:45:32','2023-09-14 09:45:32'),(13,5,'(KK) hilang','2023-09-14 09:45:32','2023-09-14 09:45:32'),(14,5,'(KK) ubah alamat','2023-09-14 09:46:07','2023-09-14 09:46:07'),(15,5,'(KK) ubah status kawin','2023-09-14 09:46:07','2023-09-14 09:46:07'),(16,5,'(KK) ubah pekerjaan','2023-09-14 09:46:07','2023-09-14 09:46:07'),(17,5,'(KK) ubah pendidikan','2023-09-14 09:46:07','2023-09-14 09:46:07'),(18,5,'(KK) ubah nama','2023-09-14 09:46:07','2023-09-14 09:46:07'),(19,5,'(KK) ubah agama','2023-09-14 09:46:07','2023-09-14 09:46:07'),(20,5,'(KK) baru tambah anggota','2023-09-14 09:47:11','2023-09-14 09:47:11'),(21,5,'(KK) baru numpang kk','2023-09-14 09:47:11','2023-09-14 09:47:11'),(22,5,'(KK) baru kurang anggota','2023-09-14 09:47:11','2023-09-14 09:47:11'),(23,5,'(KK) baru pernikahan','2023-09-14 09:47:11','2023-09-14 09:47:11'),(24,5,'(KK) baru cerai','2023-09-14 09:47:11','2023-09-14 09:47:11'),(25,5,'(KK) baru pindah domisili','2023-09-14 09:47:11','2023-09-14 09:47:11'),(26,5,'(KK) Pergantian Kepala Keluarga','2023-09-15 08:47:54','2023-09-15 08:47:54');
/*!40000 ALTER TABLE `master_kategori_daftar_layanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_kategori_kritik_saran`
--

DROP TABLE IF EXISTS `master_kategori_kritik_saran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_kategori_kritik_saran` (
  `id_kategori_ks` int(11) NOT NULL AUTO_INCREMENT,
  `Kategori_ks` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_modified` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_kategori_ks`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_kategori_kritik_saran`
--

LOCK TABLES `master_kategori_kritik_saran` WRITE;
/*!40000 ALTER TABLE `master_kategori_kritik_saran` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_kategori_kritik_saran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_kategori_perubahan_penduduk`
--

DROP TABLE IF EXISTS `master_kategori_perubahan_penduduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_kategori_perubahan_penduduk` (
  `id_kategori_perubahan` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenis_perubahan` int(11) NOT NULL,
  `kategori_perubahan` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_kategori_perubahan`),
  KEY `c_kategoriperubahan_jenisperubahan` (`id_jenis_perubahan`),
  CONSTRAINT `c_kategoriperubahan_jenisperubahan` FOREIGN KEY (`id_jenis_perubahan`) REFERENCES `master_jenis_perubahan` (`id_jenis_perubahan`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_kategori_perubahan_penduduk`
--

LOCK TABLES `master_kategori_perubahan_penduduk` WRITE;
/*!40000 ALTER TABLE `master_kategori_perubahan_penduduk` DISABLE KEYS */;
INSERT INTO `master_kategori_perubahan_penduduk` VALUES (1,1,'Kelahiran','2023-08-30 05:07:13','2023-09-06 14:12:22'),(2,1,'Perpindahan warga ke dalam','2023-08-30 05:07:13','2023-08-30 05:07:13'),(3,2,'Kematian','2023-09-05 05:47:47','2023-09-05 05:47:47'),(4,2,'Perpindahan warga keluar','2023-09-05 05:47:47','2023-09-07 14:43:45'),(6,2,'test','2023-09-05 11:17:16','2023-09-15 16:25:41'),(7,11,'Perubahan data KK','2023-09-15 14:41:13','2023-09-15 14:41:13'),(8,12,'tess12','2023-09-18 11:14:18','2023-09-18 11:18:07');
/*!40000 ALTER TABLE `master_kategori_perubahan_penduduk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_kewarganegaraan`
--

DROP TABLE IF EXISTS `master_kewarganegaraan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_kewarganegaraan` (
  `id_kwn` int(11) NOT NULL AUTO_INCREMENT,
  `kewarganegaraan` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_kwn`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_kewarganegaraan`
--

LOCK TABLES `master_kewarganegaraan` WRITE;
/*!40000 ALTER TABLE `master_kewarganegaraan` DISABLE KEYS */;
INSERT INTO `master_kewarganegaraan` VALUES (1,'Warga Negara Asing','2023-08-29 05:01:07','2023-08-29 05:01:07'),(2,'Warga Negara Indonesia','2023-08-29 05:01:07','2023-08-29 05:01:07');
/*!40000 ALTER TABLE `master_kewarganegaraan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_menu`
--

DROP TABLE IF EXISTS `master_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenis_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `link_menu` varchar(50) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id_menu`),
  KEY `c_menu_jenismenu` (`id_jenis_menu`),
  CONSTRAINT `c_menu_jenismenu` FOREIGN KEY (`id_jenis_menu`) REFERENCES `master_jenis_menu` (`id_jenis_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_menu`
--

LOCK TABLES `master_menu` WRITE;
/*!40000 ALTER TABLE `master_menu` DISABLE KEYS */;
INSERT INTO `master_menu` VALUES (1,3,'Jenis Perubahan penduduk','masterjenisperubahanpenduduk',1),(2,3,'Kategori Perubahan Penduduk','masterkategoriperubahanpenduduk',2),(4,6,'User','masteruser',1),(5,3,'Persyaratan Perubahan Penduduk','masterpersyaratanperubahanpenduduk',4),(6,1,'Kelahiran','kelahiran',1),(9,6,'Beri Jabatan','berijabatan',2),(10,3,'Jabatan','masterjabatan',2),(13,3,'Jenis Perubahan','jenisperubahan',1),(14,3,'Kategori Perubahan Penduduk','kategoriperubahanpenduduk',1),(16,8,'Surat Masuk','suratmasuk',1),(17,8,'Surat Keluar','suratkeluar',2),(18,3,'Persyaratan Per Kategori Perubahan Penduduk','persyaratanperkategoriperubahanpenduduk',1),(20,7,'Layanan KTP','layananktp',2),(21,7,'Layanan KIA','layanankia',3),(22,7,'Layanan KK','layanankk',4),(23,7,'Layanan Akta','layananakta',5),(24,7,'Layanan SKPWNI','layananskpwni',6),(25,3,'Jenis Berkas','jenisberkas',1),(26,7,'[Admin] List Pengajuan Layanan','layananview',1),(27,3,'Persyaratan Per Kategori Surat','persyaratanperkategorisurat',4),(28,3,'Data Formulir Surat','dataformulirsurat',4),(29,3,'Nama Surat','namasurat',4),(30,3,'Sub Nama Surat','subnamasurat',4),(34,10,'Kelola Kritik & Saran','kelolakritikdansaran',2),(37,10,'Kelola Konten','kelolakonten',1),(63,4,'Validasi Aset Penduduk','validasiasetpenduduk',2),(67,1,'Penduduk Pindah Keluar','pindahkeluar',4),(68,1,'Penduduk Pindah Kedalam','pindahkedalam',2),(98,3,'Jenis Aset','jenisaset',1),(99,1,'Kematian','kematian',3),(101,4,'Verifikasi Berkas Penduduk','verifikasiberkaspenduduk',3),(103,121,'Aset Penduduk','asetpenduduk',2),(105,4,'Verifikasi Surat Keluar','verifikasisuratkeluar',5),(106,3,'Agama','agama',2),(107,3,'Pekerjaan','pekerjaan',2),(110,3,'Dusun','dusun',2),(111,3,'Rt','rt',2),(112,3,'Rw','rw',2),(113,121,'Biodata Penduduk','biodatapenduduk',1),(114,3,'Golongan Darah','golongandarah',2),(115,3,'SHDRT','shdrt',2),(116,4,'Verifikasi Data Penduduk','verifikasidatapenduduk',1),(117,3,'Daftar Layanan Kependudukan','daftarlayanan',3),(118,3,'Kategori Layanan Kependudukan','kategoridaftarlayanan',3),(119,3,'Persyaratan per Kategori Layanan','persyaratanperkategoridaftarlayanan',3),(120,3,'Jenis Data Pengajuan Layanan','jenisdatapengajuanlayanan',3),(121,4,'Verifikasi Berkas Perubahan Penduduk','verifikasiberkasperubahanpenduduk',4);
/*!40000 ALTER TABLE `master_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_nama_surat`
--

DROP TABLE IF EXISTS `master_nama_surat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_nama_surat` (
  `id_surat` int(11) NOT NULL AUTO_INCREMENT,
  `nama_surat` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_nama_surat`
--

LOCK TABLES `master_nama_surat` WRITE;
/*!40000 ALTER TABLE `master_nama_surat` DISABLE KEYS */;
INSERT INTO `master_nama_surat` VALUES (1,'Form F','2023-08-30 06:04:53','2023-09-27 15:07:38'),(2,'Surat Keterangan Usaha','2023-08-30 06:05:03','2023-08-30 06:05:03'),(3,'Surat Keterangan Tidak Mampu','2023-09-01 09:41:27','2023-09-01 09:41:27'),(4,'Surat Izin Keramaian','2023-09-01 09:41:27','2023-09-01 09:41:27'),(5,'SPTJM Kematian','2023-09-01 09:41:27','2023-09-01 09:41:27'),(6,'SPTJM Kelahiran','2023-09-01 09:41:27','2023-09-01 09:41:27'),(7,'Surat Keterangan Tanah','2023-09-01 09:41:27','2023-09-01 09:41:27'),(8,'Surat Keterangan Domisili','2023-09-01 09:41:27','2023-09-01 09:41:27'),(9,'Surat Pemberitauan Hajat','2023-09-05 13:13:59','2023-09-05 14:15:09'),(13,'Surat Keterangan Nikah','2023-09-13 09:07:59','2023-09-13 09:07:59'),(14,'Surat Izin Mendirikan Bangunan','2023-09-27 15:01:02','2023-09-27 15:01:02');
/*!40000 ALTER TABLE `master_nama_surat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_pekerjaan`
--

DROP TABLE IF EXISTS `master_pekerjaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pekerjaan` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_pekerjaan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_pekerjaan`
--

LOCK TABLES `master_pekerjaan` WRITE;
/*!40000 ALTER TABLE `master_pekerjaan` DISABLE KEYS */;
INSERT INTO `master_pekerjaan` VALUES (1,'Petani','2023-09-12 20:28:12','2023-09-18 14:43:19'),(2,'Peternak','2023-09-12 20:28:12','2023-09-12 20:28:12'),(3,'Pegawai Negeri Sipil','2023-09-13 09:36:08','2023-09-13 11:15:07'),(4,'Wiraswastawan','2023-09-27 13:30:57','2023-09-27 13:30:57');
/*!40000 ALTER TABLE `master_pekerjaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_pendidikan`
--

DROP TABLE IF EXISTS `master_pendidikan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_pendidikan` (
  `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT,
  `pendidikan` varchar(255) NOT NULL,
  PRIMARY KEY (`id_pendidikan`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_pendidikan`
--

LOCK TABLES `master_pendidikan` WRITE;
/*!40000 ALTER TABLE `master_pendidikan` DISABLE KEYS */;
INSERT INTO `master_pendidikan` VALUES (1,'TK'),(2,'SD'),(3,'SMP'),(4,'SMA'),(5,'S1'),(10,'S2');
/*!40000 ALTER TABLE `master_pendidikan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_persyaratan_data_per_kategori_surat`
--

DROP TABLE IF EXISTS `master_persyaratan_data_per_kategori_surat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_persyaratan_data_per_kategori_surat` (
  `id_persyaratan_kategori_surat` int(11) NOT NULL AUTO_INCREMENT,
  `id_sub_surat` int(11) NOT NULL,
  `id_data_formulir` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_persyaratan_kategori_surat`),
  KEY `c_persyaratankategorisurat_dataformulir` (`id_data_formulir`),
  KEY `c_persyaratankategorisurat_namasurat` (`id_sub_surat`),
  CONSTRAINT `c_persyaratankategorisurat_dataformulir` FOREIGN KEY (`id_data_formulir`) REFERENCES `master_data_formulir_surat` (`id_data_formulir`),
  CONSTRAINT `c_persyaratankategorisurat_namasurat` FOREIGN KEY (`id_sub_surat`) REFERENCES `master_sub_nama_surat` (`id_sub_nama_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=917 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_persyaratan_data_per_kategori_surat`
--

LOCK TABLES `master_persyaratan_data_per_kategori_surat` WRITE;
/*!40000 ALTER TABLE `master_persyaratan_data_per_kategori_surat` DISABLE KEYS */;
INSERT INTO `master_persyaratan_data_per_kategori_surat` VALUES (37,17,10,'2023-09-07 10:26:59','2023-09-07 10:26:59'),(39,26,22,'2023-09-07 17:45:43','2023-09-07 17:45:43'),(51,17,25,'2023-09-14 10:44:27','2023-09-14 10:44:27'),(57,17,31,'2023-09-15 04:15:45','2023-09-15 04:15:45'),(63,17,32,'2023-09-15 08:48:45','2023-09-15 08:48:45'),(70,17,39,'2023-09-19 10:18:36','2023-09-19 10:18:36'),(71,17,40,'2023-09-19 10:18:36','2023-09-19 10:18:36'),(72,13,46,'2023-09-20 05:39:10','2023-09-20 05:39:10'),(73,13,47,'2023-09-20 05:39:10','2023-09-20 05:39:10'),(74,13,48,'2023-09-20 05:39:10','2023-09-20 05:39:10'),(75,13,49,'2023-09-20 05:39:10','2023-09-20 05:39:10'),(76,13,50,'2023-09-20 05:39:10','2023-09-20 05:39:10'),(77,13,52,'2023-09-20 05:39:10','2023-09-20 05:39:10'),(78,13,53,'2023-09-20 05:39:10','2023-09-20 05:39:10'),(79,13,54,'2023-09-20 05:39:10','2023-09-20 05:39:10'),(80,13,51,'2023-09-20 05:39:10','2023-09-20 05:39:10'),(81,13,63,'2023-09-20 05:43:05','2023-09-20 05:43:05'),(82,13,55,'2023-09-20 05:43:15','2023-09-20 05:43:15'),(83,13,56,'2023-09-20 05:43:15','2023-09-20 05:43:15'),(84,13,57,'2023-09-20 05:43:15','2023-09-20 05:43:15'),(85,13,58,'2023-09-20 05:43:15','2023-09-20 05:43:15'),(86,13,59,'2023-09-20 05:43:15','2023-09-20 05:43:15'),(87,13,60,'2023-09-20 05:43:15','2023-09-20 05:43:15'),(88,13,61,'2023-09-20 05:43:15','2023-09-20 05:43:15'),(89,13,62,'2023-09-20 05:43:15','2023-09-20 05:43:15'),(90,13,68,'2023-09-20 06:02:43','2023-09-20 06:02:43'),(91,13,64,'2023-09-20 06:02:43','2023-09-20 06:02:43'),(92,13,65,'2023-09-20 06:02:43','2023-09-20 06:02:43'),(93,13,66,'2023-09-20 06:02:43','2023-09-20 06:02:43'),(94,13,67,'2023-09-20 06:02:43','2023-09-20 06:02:43'),(95,17,43,'2023-09-20 10:44:38','2023-09-20 10:44:38'),(97,17,44,'2023-09-20 10:45:08','2023-09-20 10:45:08'),(98,11,69,'2023-09-20 12:34:38','2023-09-20 12:34:38'),(99,11,70,'2023-09-20 12:34:38','2023-09-20 12:34:38'),(100,11,71,'2023-09-20 12:34:38','2023-09-20 12:34:38'),(101,11,72,'2023-09-20 12:34:38','2023-09-20 12:34:38'),(102,11,73,'2023-09-20 12:34:38','2023-09-20 12:34:38'),(103,11,74,'2023-09-20 12:34:38','2023-09-20 12:34:38'),(104,11,75,'2023-09-20 12:34:38','2023-09-20 12:34:38'),(105,11,76,'2023-09-20 12:34:38','2023-09-20 12:34:38'),(106,11,77,'2023-09-20 12:34:38','2023-09-20 12:34:38'),(107,11,78,'2023-09-20 12:34:38','2023-09-20 12:34:38'),(108,11,57,'2023-09-20 12:34:38','2023-09-20 12:34:38'),(109,11,79,'2023-09-20 12:34:38','2023-09-20 12:34:38'),(110,11,55,'2023-09-20 12:34:38','2023-09-20 12:34:38'),(111,11,56,'2023-09-20 12:34:38','2023-09-20 12:34:38'),(112,11,68,'2023-09-20 12:34:38','2023-09-20 12:34:38'),(113,11,80,'2023-09-20 12:34:38','2023-09-20 12:34:38'),(114,11,81,'2023-09-20 12:34:38','2023-09-20 12:34:38'),(115,11,59,'2023-09-20 12:40:33','2023-09-20 12:40:33'),(116,11,60,'2023-09-20 12:40:33','2023-09-20 12:40:33'),(117,11,61,'2023-09-20 12:40:33','2023-09-20 12:40:33'),(118,11,62,'2023-09-20 12:40:33','2023-09-20 12:40:33'),(119,11,64,'2023-09-20 12:46:22','2023-09-20 12:46:22'),(120,11,65,'2023-09-20 12:46:22','2023-09-20 12:46:22'),(121,11,66,'2023-09-20 12:46:22','2023-09-20 12:46:22'),(122,11,67,'2023-09-20 12:46:22','2023-09-20 12:46:22'),(131,12,82,'2023-09-20 19:05:21','2023-09-20 19:05:21'),(132,12,83,'2023-09-20 19:05:21','2023-09-20 19:05:21'),(133,12,84,'2023-09-20 19:05:21','2023-09-20 19:05:21'),(134,12,85,'2023-09-20 19:05:21','2023-09-20 19:05:21'),(135,12,86,'2023-09-20 19:05:21','2023-09-20 19:05:21'),(136,12,87,'2023-09-20 19:05:21','2023-09-20 19:05:21'),(137,12,88,'2023-09-20 19:05:21','2023-09-20 19:05:21'),(138,12,89,'2023-09-20 19:05:21','2023-09-20 19:05:21'),(139,12,55,'2023-09-20 19:07:47','2023-09-20 19:07:47'),(140,12,68,'2023-09-20 19:07:47','2023-09-20 19:07:47'),(141,12,57,'2023-09-20 19:08:13','2023-09-20 19:08:13'),(142,12,90,'2023-09-20 19:08:13','2023-09-20 19:08:13'),(143,12,59,'2023-09-20 19:08:28','2023-09-20 19:08:28'),(144,12,60,'2023-09-20 19:08:28','2023-09-20 19:08:28'),(145,12,61,'2023-09-20 19:08:28','2023-09-20 19:08:28'),(146,12,62,'2023-09-20 19:08:28','2023-09-20 19:08:28'),(147,12,91,'2023-09-20 19:09:13','2023-09-20 19:09:13'),(148,12,92,'2023-09-20 19:09:13','2023-09-20 19:09:13'),(149,12,93,'2023-09-20 19:09:13','2023-09-20 19:09:13'),(150,12,94,'2023-09-20 19:09:13','2023-09-20 19:09:13'),(151,12,95,'2023-09-20 19:09:13','2023-09-20 19:09:13'),(152,12,64,'2023-09-20 19:12:59','2023-09-20 19:12:59'),(153,12,65,'2023-09-20 19:12:59','2023-09-20 19:12:59'),(154,12,66,'2023-09-20 19:12:59','2023-09-20 19:12:59'),(155,12,67,'2023-09-20 19:12:59','2023-09-20 19:12:59'),(156,17,96,'2023-09-20 20:15:44','2023-09-20 20:15:44'),(157,17,97,'2023-09-20 20:15:44','2023-09-20 20:15:44'),(158,25,17,'2023-09-21 02:50:34','2023-09-21 02:50:34'),(159,25,18,'2023-09-21 02:50:34','2023-09-21 02:50:34'),(160,25,99,'2023-09-21 02:55:43','2023-09-21 02:55:43'),(161,25,98,'2023-09-21 02:55:43','2023-09-21 02:55:43'),(162,18,103,'2023-09-21 08:56:47','2023-09-21 08:56:47'),(163,18,13,'2023-09-21 08:56:47','2023-09-21 08:56:47'),(164,18,104,'2023-09-21 08:57:54','2023-09-21 08:57:54'),(165,18,105,'2023-09-21 08:57:54','2023-09-21 08:57:54'),(170,18,106,'2023-09-21 09:06:08','2023-09-21 09:06:08'),(171,18,107,'2023-09-21 09:06:08','2023-09-21 09:06:08'),(172,18,16,'2023-09-21 09:07:31','2023-09-21 09:07:31'),(173,18,108,'2023-09-21 09:07:31','2023-09-21 09:07:31'),(174,18,109,'2023-09-21 09:08:17','2023-09-21 09:08:17'),(175,18,110,'2023-09-21 09:08:38','2023-09-21 09:08:38'),(176,18,33,'2023-09-21 09:08:38','2023-09-21 09:08:38'),(177,18,34,'2023-09-21 09:09:05','2023-09-21 09:09:05'),(178,18,35,'2023-09-21 09:09:05','2023-09-21 09:09:05'),(179,18,36,'2023-09-21 09:09:22','2023-09-21 09:09:22'),(180,18,37,'2023-09-21 09:09:22','2023-09-21 09:09:22'),(181,18,38,'2023-09-21 09:17:59','2023-09-21 09:17:59'),(182,18,64,'2023-09-21 09:17:59','2023-09-21 09:17:59'),(184,18,111,'2023-09-21 09:17:59','2023-09-21 09:17:59'),(185,18,66,'2023-09-21 09:22:54','2023-09-21 09:22:54'),(186,18,112,'2023-09-21 10:04:37','2023-09-21 10:04:37'),(187,14,115,'2023-09-22 04:28:07','2023-09-22 04:28:07'),(188,14,116,'2023-09-22 04:28:07','2023-09-22 04:28:07'),(189,14,117,'2023-09-22 04:28:07','2023-09-22 04:28:07'),(190,14,118,'2023-09-22 04:28:07','2023-09-22 04:28:07'),(191,14,119,'2023-09-22 04:28:07','2023-09-22 04:28:07'),(192,27,116,'2023-09-22 05:11:57','2023-09-22 05:11:57'),(193,27,120,'2023-09-22 05:11:57','2023-09-22 05:11:57'),(194,27,121,'2023-09-22 05:11:57','2023-09-22 05:11:57'),(195,27,122,'2023-09-22 05:11:57','2023-09-22 05:11:57'),(196,27,123,'2023-09-22 05:11:57','2023-09-22 05:11:57'),(197,27,124,'2023-09-22 05:11:57','2023-09-22 05:11:57'),(198,28,115,'2023-09-22 05:31:34','2023-09-22 05:31:34'),(199,28,14,'2023-09-22 05:31:34','2023-09-22 05:31:34'),(200,28,116,'2023-09-22 05:31:34','2023-09-22 05:31:34'),(201,28,118,'2023-09-22 05:31:34','2023-09-22 05:31:34'),(202,28,119,'2023-09-22 05:31:34','2023-09-22 05:31:34'),(203,28,117,'2023-09-22 05:31:34','2023-09-22 05:31:34'),(204,15,103,'2023-09-22 06:27:25','2023-09-22 06:27:25'),(205,15,104,'2023-09-22 06:27:25','2023-09-22 06:27:25'),(206,15,105,'2023-09-22 06:27:52','2023-09-22 06:27:52'),(207,15,126,'2023-09-22 06:31:48','2023-09-22 06:31:48'),(208,19,101,'2023-09-22 08:16:00','2023-09-22 08:16:00'),(209,17,45,'2023-09-22 08:25:50','2023-09-22 08:25:50'),(210,29,115,'2023-09-25 03:52:13','2023-09-25 03:52:13'),(211,29,116,'2023-09-25 03:52:13','2023-09-25 03:52:13'),(212,29,117,'2023-09-25 03:52:13','2023-09-25 03:52:13'),(213,29,118,'2023-09-25 03:52:13','2023-09-25 03:52:13'),(214,29,119,'2023-09-25 03:52:13','2023-09-25 03:52:13'),(215,4,138,'2023-09-25 04:37:39','2023-09-25 04:37:39'),(216,4,139,'2023-09-25 04:37:39','2023-09-25 04:37:39'),(217,4,140,'2023-09-25 04:37:39','2023-09-25 04:37:39'),(218,4,141,'2023-09-25 04:37:39','2023-09-25 04:37:39'),(219,4,107,'2023-09-25 04:37:39','2023-09-25 04:37:39'),(220,4,142,'2023-09-25 04:37:39','2023-09-25 04:37:39'),(221,4,143,'2023-09-25 04:37:39','2023-09-25 04:37:39'),(222,4,144,'2023-09-25 04:37:39','2023-09-25 04:37:39'),(223,4,145,'2023-09-25 04:37:39','2023-09-25 04:37:39'),(224,4,146,'2023-09-25 04:37:39','2023-09-25 04:37:39'),(225,4,147,'2023-09-25 04:37:39','2023-09-25 04:37:39'),(226,4,148,'2023-09-25 04:37:39','2023-09-25 04:37:39'),(227,4,149,'2023-09-25 04:37:39','2023-09-25 04:37:39'),(228,4,150,'2023-09-25 04:37:39','2023-09-25 04:37:39'),(229,4,151,'2023-09-25 04:37:39','2023-09-25 04:37:39'),(230,30,128,'2023-09-25 04:32:27','2023-09-25 04:32:27'),(231,30,130,'2023-09-25 04:32:27','2023-09-25 04:32:27'),(232,30,131,'2023-09-25 04:32:27','2023-09-25 04:32:27'),(233,30,132,'2023-09-25 04:32:27','2023-09-25 04:32:27'),(234,30,133,'2023-09-25 04:32:27','2023-09-25 04:32:27'),(235,30,134,'2023-09-25 04:32:27','2023-09-25 04:32:27'),(236,30,135,'2023-09-25 04:32:27','2023-09-25 04:32:27'),(237,30,136,'2023-09-25 04:32:27','2023-09-25 04:32:27'),(238,30,137,'2023-09-25 04:32:27','2023-09-25 04:32:27'),(239,30,127,'2023-09-25 04:32:27','2023-09-25 04:32:27'),(240,30,116,'2023-09-25 05:01:09','2023-09-25 05:01:09'),(241,30,117,'2023-09-25 04:32:27','2023-09-25 04:32:27'),(242,30,118,'2023-09-25 04:32:27','2023-09-25 04:32:27'),(243,30,119,'2023-09-25 04:32:27','2023-09-25 04:32:27'),(244,30,129,'2023-09-25 04:32:27','2023-09-25 04:32:27'),(245,7,152,'2023-09-25 06:04:02','2023-09-25 06:04:02'),(246,7,153,'2023-09-25 06:04:02','2023-09-25 06:04:02'),(247,7,154,'2023-09-25 06:04:02','2023-09-25 06:04:02'),(248,7,155,'2023-09-25 06:04:02','2023-09-25 06:04:02'),(249,1,186,'2023-09-26 08:53:09','2023-09-26 08:53:09'),(250,1,144,'2023-09-26 08:53:09','2023-09-26 08:53:09'),(251,1,187,'2023-09-26 08:53:09','2023-09-26 08:53:09'),(252,1,151,'2023-09-26 08:54:21','2023-09-26 08:54:21'),(253,1,145,'2023-09-26 08:54:21','2023-09-26 08:54:21'),(254,1,146,'2023-09-26 08:54:21','2023-09-26 08:54:21'),(255,1,188,'2023-09-26 08:54:21','2023-09-26 08:54:21'),(256,1,189,'2023-09-26 08:54:21','2023-09-26 08:54:21'),(257,1,101,'2023-09-26 08:54:21','2023-09-26 08:54:21'),(258,1,150,'2023-09-26 08:59:46','2023-09-26 08:59:46'),(259,1,149,'2023-09-26 08:59:46','2023-09-26 08:59:46'),(260,1,148,'2023-09-26 08:59:46','2023-09-26 08:59:46'),(261,1,190,'2023-09-26 08:59:46','2023-09-26 08:59:46'),(262,1,191,'2023-09-26 08:59:46','2023-09-26 08:59:46'),(263,1,192,'2023-09-26 09:06:20','2023-09-26 09:06:20'),(264,1,193,'2023-09-26 09:06:20','2023-09-26 09:06:20'),(265,1,194,'2023-09-26 09:06:20','2023-09-26 09:06:20'),(266,1,195,'2023-09-26 09:06:20','2023-09-26 09:06:20'),(267,1,196,'2023-09-26 09:06:20','2023-09-26 09:06:20'),(268,1,197,'2023-09-26 09:06:20','2023-09-26 09:06:20'),(269,10,156,'2023-09-26 09:09:02','2023-09-26 09:09:02'),(270,10,157,'2023-09-26 09:09:02','2023-09-26 09:09:02'),(271,10,158,'2023-09-26 09:09:02','2023-09-26 09:09:02'),(272,10,159,'2023-09-26 09:09:02','2023-09-26 09:09:02'),(273,10,160,'2023-09-26 09:09:02','2023-09-26 09:09:02'),(274,10,161,'2023-09-26 09:09:02','2023-09-26 09:09:02'),(275,10,162,'2023-09-26 09:09:02','2023-09-26 09:09:02'),(276,10,163,'2023-09-26 09:09:02','2023-09-26 09:09:02'),(277,10,164,'2023-09-26 09:09:02','2023-09-26 09:09:02'),(278,10,165,'2023-09-26 09:09:02','2023-09-26 09:09:02'),(279,10,166,'2023-09-26 09:09:02','2023-09-26 09:09:02'),(280,10,167,'2023-09-26 09:09:02','2023-09-26 09:09:02'),(281,10,64,'2023-09-26 09:09:02','2023-09-26 09:09:02'),(282,10,111,'2023-09-26 09:09:02','2023-09-26 09:09:02'),(283,10,66,'2023-09-26 09:09:02','2023-09-26 09:09:02'),(284,10,112,'2023-09-26 09:09:02','2023-09-26 09:09:02'),(285,31,103,'2023-09-26 09:24:19','2023-09-26 09:24:19'),(286,31,13,'2023-09-26 09:24:19','2023-09-26 09:24:19'),(287,31,126,'2023-09-26 09:24:19','2023-09-26 09:24:19'),(288,31,104,'2023-09-26 09:24:19','2023-09-26 09:24:19'),(289,31,105,'2023-09-26 09:24:19','2023-09-26 09:24:19'),(290,31,177,'2023-09-26 09:24:19','2023-09-26 09:24:19'),(291,31,178,'2023-09-26 09:24:19','2023-09-26 09:24:19'),(292,31,179,'2023-09-26 09:24:19','2023-09-26 09:24:19'),(293,31,180,'2023-09-26 09:24:19','2023-09-26 09:24:19'),(294,31,107,'2023-09-26 09:24:19','2023-09-26 09:24:19'),(295,31,16,'2023-09-26 09:24:19','2023-09-26 09:24:19'),(296,31,108,'2023-09-26 09:24:19','2023-09-26 09:24:19'),(297,31,109,'2023-09-26 09:24:19','2023-09-26 09:24:19'),(298,31,110,'2023-09-26 09:24:19','2023-09-26 09:24:19'),(299,31,185,'2023-09-26 09:24:19','2023-09-26 09:24:19'),(300,1,198,'2023-09-26 10:12:32','2023-09-26 10:12:32'),(301,1,199,'2023-09-26 10:21:11','2023-09-26 10:21:11'),(302,1,200,'2023-09-26 12:26:05','2023-09-26 12:26:05'),(303,1,201,'2023-09-26 12:26:05','2023-09-26 12:26:05'),(304,1,202,'2023-09-26 12:26:05','2023-09-26 12:26:05'),(305,1,138,'2023-09-27 04:32:56','2023-09-27 04:32:56'),(306,1,203,'2023-09-27 04:32:56','2023-09-27 04:32:56'),(307,1,204,'2023-09-27 04:32:56','2023-09-27 04:32:56'),(308,1,205,'2023-09-27 04:33:25','2023-09-27 04:33:25'),(309,1,206,'2023-09-27 04:33:25','2023-09-27 04:33:25'),(310,1,207,'2023-09-27 04:33:25','2023-09-27 04:33:25'),(311,1,141,'2023-09-27 04:33:25','2023-09-27 04:33:25'),(312,1,139,'2023-09-27 04:33:25','2023-09-27 04:33:25'),(313,1,140,'2023-09-27 04:50:54','2023-09-27 04:50:54'),(314,1,209,'2023-09-27 04:50:54','2023-09-27 04:50:54'),(315,1,210,'2023-09-27 04:50:54','2023-09-27 04:50:54'),(316,1,211,'2023-09-27 04:50:54','2023-09-27 04:50:54'),(317,1,212,'2023-09-27 04:50:54','2023-09-27 04:50:54'),(318,1,142,'2023-09-27 04:52:09','2023-09-27 04:52:09'),(319,1,213,'2023-09-27 04:52:09','2023-09-27 04:52:09'),(320,1,214,'2023-09-27 04:52:09','2023-09-27 04:52:09'),(321,1,215,'2023-09-27 04:52:09','2023-09-27 04:52:09'),(322,1,216,'2023-09-27 04:52:09','2023-09-27 04:52:09'),(323,1,217,'2023-09-27 04:52:09','2023-09-27 04:52:09'),(336,1,218,'2023-09-27 04:53:14','2023-09-27 04:53:14'),(337,1,219,'2023-09-27 04:53:14','2023-09-27 04:53:14'),(338,1,220,'2023-09-27 04:53:14','2023-09-27 04:53:14'),(339,1,232,'2023-09-27 04:53:14','2023-09-27 04:53:14'),(340,1,221,'2023-09-27 04:53:14','2023-09-27 04:53:14'),(341,1,222,'2023-09-27 04:53:14','2023-09-27 04:53:14'),(342,1,223,'2023-09-27 04:55:24','2023-09-27 04:55:24'),(343,1,143,'2023-09-27 04:55:24','2023-09-27 04:55:24'),(344,1,233,'2023-09-27 04:55:24','2023-09-27 04:55:24'),(345,1,224,'2023-09-27 04:55:24','2023-09-27 04:55:24'),(346,1,225,'2023-09-27 04:55:24','2023-09-27 04:55:24'),(347,1,226,'2023-09-27 04:55:24','2023-09-27 04:55:24'),(354,1,234,'2023-09-27 04:56:52','2023-09-27 04:56:52'),(355,1,227,'2023-09-27 04:56:52','2023-09-27 04:56:52'),(356,1,230,'2023-09-27 04:56:52','2023-09-27 04:56:52'),(357,1,231,'2023-09-27 04:56:52','2023-09-27 04:56:52'),(358,1,228,'2023-09-27 04:56:52','2023-09-27 04:56:52'),(359,1,229,'2023-09-27 04:56:52','2023-09-27 04:56:52'),(364,1,235,'2023-09-27 06:06:28','2023-09-27 06:06:28'),(365,1,236,'2023-09-27 06:37:46','2023-09-27 06:37:46'),(366,1,237,'2023-09-27 06:42:39','2023-09-27 06:42:39'),(367,2,168,'2023-09-27 06:44:02','2023-09-27 06:44:02'),(368,2,189,'2023-09-27 06:46:59','2023-09-27 06:46:59'),(369,2,238,'2023-09-27 06:46:59','2023-09-27 06:46:59'),(370,2,101,'2023-09-27 06:47:39','2023-09-27 06:47:39'),(386,9,186,'2023-10-02 04:57:18','2023-10-02 04:57:18'),(387,9,238,'2023-10-02 04:57:18','2023-10-02 04:57:18'),(388,9,103,'2023-10-02 04:57:38','2023-10-02 04:57:38'),(389,9,126,'2023-10-02 04:57:38','2023-10-02 04:57:38'),(390,9,256,'2023-10-02 04:58:03','2023-10-02 04:58:03'),(391,9,104,'2023-10-02 04:58:03','2023-10-02 04:58:03'),(392,9,257,'2023-10-02 04:59:00','2023-10-02 04:59:00'),(393,9,105,'2023-10-02 04:59:00','2023-10-02 04:59:00'),(394,2,240,'2023-10-02 04:57:54','2023-10-02 04:57:54'),(395,2,241,'2023-10-02 04:57:54','2023-10-02 04:57:54'),(396,2,242,'2023-10-02 04:57:54','2023-10-02 04:57:54'),(397,2,243,'2023-10-02 04:57:54','2023-10-02 04:57:54'),(398,2,244,'2023-10-02 04:57:54','2023-10-02 04:57:54'),(399,2,245,'2023-10-02 04:57:54','2023-10-02 04:57:54'),(400,2,246,'2023-10-02 04:57:54','2023-10-02 04:57:54'),(401,2,247,'2023-10-02 04:57:54','2023-10-02 04:57:54'),(402,2,248,'2023-10-02 04:57:54','2023-10-02 04:57:54'),(403,2,249,'2023-10-02 04:57:54','2023-10-02 04:57:54'),(404,2,250,'2023-10-02 04:57:54','2023-10-02 04:57:54'),(405,2,251,'2023-10-02 04:57:54','2023-10-02 04:57:54'),(406,2,252,'2023-10-02 04:57:54','2023-10-02 04:57:54'),(407,2,253,'2023-10-02 04:57:54','2023-10-02 04:57:54'),(408,2,254,'2023-10-02 04:57:54','2023-10-02 04:57:54'),(409,2,255,'2023-10-02 04:57:54','2023-10-02 04:57:54'),(410,9,258,'2023-10-02 04:59:50','2023-10-02 04:59:50'),(411,9,259,'2023-10-02 04:59:50','2023-10-02 04:59:50'),(412,9,260,'2023-10-02 05:01:02','2023-10-02 05:01:02'),(413,9,261,'2023-10-02 05:01:02','2023-10-02 05:01:02'),(414,9,262,'2023-10-02 05:03:25','2023-10-02 05:03:25'),(415,9,263,'2023-10-02 05:03:25','2023-10-02 05:03:25'),(416,9,264,'2023-10-02 05:04:42','2023-10-02 05:04:42'),(417,9,265,'2023-10-02 05:04:42','2023-10-02 05:04:42'),(418,9,16,'2023-10-02 05:05:28','2023-10-02 05:05:28'),(419,9,107,'2023-10-02 05:05:28','2023-10-02 05:05:28'),(420,9,109,'2023-10-02 05:09:39','2023-10-02 05:09:39'),(421,9,266,'2023-10-02 05:09:39','2023-10-02 05:09:39'),(422,9,267,'2023-10-02 05:10:00','2023-10-02 05:10:00'),(423,9,270,'2023-10-02 05:10:00','2023-10-02 05:10:00'),(424,9,110,'2023-10-02 05:11:27','2023-10-02 05:11:27'),(425,9,185,'2023-10-02 05:11:27','2023-10-02 05:11:27'),(426,9,272,'2023-10-02 05:12:00','2023-10-02 05:12:00'),(427,9,277,'2023-10-02 05:14:58','2023-10-02 05:14:58'),(428,9,282,'2023-10-02 05:14:58','2023-10-02 05:14:58'),(429,9,287,'2023-10-02 05:14:58','2023-10-02 05:14:58'),(430,9,292,'2023-10-02 05:21:14','2023-10-02 05:21:14'),(431,9,294,'2023-10-02 05:21:14','2023-10-02 05:21:14'),(432,9,296,'2023-10-02 05:23:03','2023-10-02 05:23:03'),(433,9,297,'2023-10-02 05:23:03','2023-10-02 05:23:03'),(434,9,298,'2023-10-02 05:23:03','2023-10-02 05:23:03'),(435,9,230,'2023-10-02 05:24:57','2023-10-02 05:24:57'),(436,9,231,'2023-10-02 05:24:57','2023-10-02 05:24:57'),(437,9,299,'2023-10-02 05:25:12','2023-10-02 05:25:12'),(438,9,268,'2023-10-02 05:25:12','2023-10-02 05:25:12'),(439,9,269,'2023-10-02 05:27:19','2023-10-02 05:27:19'),(440,9,271,'2023-10-02 05:27:19','2023-10-02 05:27:19'),(441,2,249,'2023-10-02 05:32:43','2023-10-02 05:32:43'),(442,9,300,'2023-10-02 05:32:19','2023-10-02 05:32:19'),(443,9,301,'2023-10-02 05:32:19','2023-10-02 05:32:19'),(444,9,273,'2023-10-02 05:33:04','2023-10-02 05:33:04'),(445,9,278,'2023-10-02 05:33:04','2023-10-02 05:33:04'),(446,9,283,'2023-10-02 05:33:04','2023-10-02 05:33:04'),(447,9,288,'2023-10-02 05:33:04','2023-10-02 05:33:04'),(448,9,293,'2023-10-02 05:33:58','2023-10-02 05:33:58'),(449,9,295,'2023-10-02 05:33:58','2023-10-02 05:33:58'),(453,9,11,'2023-10-02 05:35:07','2023-10-02 05:35:07'),(454,9,302,'2023-10-02 05:35:07','2023-10-02 05:35:07'),(455,9,303,'2023-10-02 05:35:07','2023-10-02 05:35:07'),(456,9,306,'2023-10-02 05:36:51','2023-10-02 05:36:51'),(457,9,30,'2023-10-02 05:36:51','2023-10-02 05:36:51'),(458,9,307,'2023-10-02 05:37:33','2023-10-02 05:37:33'),(459,9,274,'2023-10-02 05:37:33','2023-10-02 05:37:33'),(460,9,279,'2023-10-02 05:37:33','2023-10-02 05:37:33'),(461,9,284,'2023-10-02 05:37:33','2023-10-02 05:37:33'),(462,9,289,'2023-10-02 05:37:33','2023-10-02 05:37:33'),(463,9,111,'2023-10-02 05:45:11','2023-10-02 05:45:11'),(464,9,310,'2023-10-02 05:45:12','2023-10-02 05:45:12'),(465,9,304,'2023-10-02 05:45:12','2023-10-02 05:45:12'),(466,9,312,'2023-10-02 05:45:12','2023-10-02 05:45:12'),(467,9,308,'2023-10-02 05:53:40','2023-10-02 05:53:40'),(468,9,275,'2023-10-02 05:53:40','2023-10-02 05:53:40'),(469,9,280,'2023-10-02 05:53:40','2023-10-02 05:53:40'),(470,9,285,'2023-10-02 05:53:40','2023-10-02 05:53:40'),(471,9,290,'2023-10-02 05:53:40','2023-10-02 05:53:40'),(472,9,112,'2023-10-02 06:12:21','2023-10-02 06:12:21'),(473,9,311,'2023-10-02 06:12:21','2023-10-02 06:12:21'),(474,9,305,'2023-10-02 06:12:48','2023-10-02 06:12:48'),(475,9,313,'2023-10-02 06:12:48','2023-10-02 06:12:48'),(476,9,309,'2023-10-02 06:13:09','2023-10-02 06:13:09'),(477,9,276,'2023-10-02 06:13:09','2023-10-02 06:13:09'),(478,9,281,'2023-10-02 06:13:09','2023-10-02 06:13:09'),(479,9,276,'2023-10-02 06:13:09','2023-10-02 06:13:09'),(480,9,291,'2023-10-02 06:13:09','2023-10-02 06:13:09'),(481,9,314,'2023-10-02 06:14:14','2023-10-02 06:14:14'),(482,9,168,'2023-10-02 06:14:14','2023-10-02 06:14:14'),(483,9,315,'2023-10-02 06:14:14','2023-10-02 06:14:14'),(484,2,186,'2023-10-02 08:52:44','2023-10-02 08:52:44'),(485,3,316,'2023-10-02 08:58:29','2023-10-02 08:58:29'),(486,3,317,'2023-10-02 08:58:29','2023-10-02 08:58:29'),(487,3,318,'2023-10-02 08:58:29','2023-10-02 08:58:29'),(488,3,319,'2023-10-02 08:58:29','2023-10-02 08:58:29'),(489,3,320,'2023-10-02 08:58:29','2023-10-02 08:58:29'),(490,3,321,'2023-10-02 08:58:29','2023-10-02 08:58:29'),(491,3,322,'2023-10-02 08:58:29','2023-10-02 08:58:29'),(492,3,323,'2023-10-02 08:58:29','2023-10-02 08:58:29'),(493,3,324,'2023-10-02 09:05:26','2023-10-02 09:05:26'),(494,3,325,'2023-10-02 09:05:26','2023-10-02 09:05:26'),(495,3,326,'2023-10-02 09:05:26','2023-10-02 09:05:26'),(496,3,331,'2023-10-02 09:05:26','2023-10-02 09:05:26'),(497,3,327,'2023-10-02 09:05:26','2023-10-02 09:05:26'),(498,3,328,'2023-10-02 09:05:26','2023-10-02 09:05:26'),(499,3,329,'2023-10-02 09:05:26','2023-10-02 09:05:26'),(500,3,330,'2023-10-02 09:05:26','2023-10-02 09:05:26'),(501,3,332,'2023-10-02 09:05:26','2023-10-02 09:05:26'),(502,3,333,'2023-10-02 09:07:34','2023-10-02 09:07:34'),(503,3,334,'2023-10-02 09:07:34','2023-10-02 09:07:34'),(504,3,335,'2023-10-02 09:07:34','2023-10-02 09:07:34'),(505,3,336,'2023-10-02 09:07:34','2023-10-02 09:07:34'),(506,3,206,'2023-10-02 09:08:15','2023-10-02 09:08:15'),(507,3,207,'2023-10-02 09:08:15','2023-10-02 09:08:15'),(508,3,236,'2023-10-02 09:08:15','2023-10-02 09:08:15'),(509,3,337,'2023-10-02 09:08:15','2023-10-02 09:08:15'),(510,3,224,'2023-10-02 09:11:14','2023-10-02 09:11:14'),(511,3,226,'2023-10-02 09:11:14','2023-10-02 09:11:14'),(512,3,338,'2023-10-02 09:11:14','2023-10-02 09:11:14'),(513,3,339,'2023-10-02 09:11:14','2023-10-02 09:11:14'),(514,3,342,'2023-10-02 09:11:14','2023-10-02 09:11:14'),(515,3,340,'2023-10-02 09:11:14','2023-10-02 09:11:14'),(516,3,341,'2023-10-02 09:14:03','2023-10-02 09:14:03'),(517,3,189,'2023-10-02 09:14:03','2023-10-02 09:14:03'),(518,3,101,'2023-10-02 09:14:03','2023-10-02 09:14:03'),(519,3,343,'2023-10-02 09:15:11','2023-10-02 09:15:11'),(520,3,138,'2023-10-02 09:15:11','2023-10-02 09:15:11'),(521,3,221,'2023-10-02 09:15:11','2023-10-02 09:15:11'),(568,2,346,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(569,2,347,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(570,2,348,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(571,2,349,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(572,2,350,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(573,2,351,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(574,2,352,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(575,2,353,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(576,2,354,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(577,2,355,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(578,2,356,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(579,2,357,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(580,2,358,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(581,2,359,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(582,2,360,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(583,2,361,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(584,2,362,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(585,2,363,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(586,2,364,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(587,2,365,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(588,2,366,'2023-10-02 10:02:09','2023-10-02 10:02:09'),(589,3,367,'2023-10-02 10:19:10','2023-10-02 10:19:10'),(590,8,368,'2023-10-09 03:57:45','2023-10-09 03:57:45'),(591,8,12,'2023-10-09 03:57:45','2023-10-09 03:57:45'),(592,8,11,'2023-10-09 03:57:45','2023-10-09 03:57:45'),(593,8,369,'2023-10-09 03:57:45','2023-10-09 03:57:45'),(594,8,370,'2023-10-09 03:57:45','2023-10-09 03:57:45'),(595,8,371,'2023-10-09 04:01:03','2023-10-09 04:01:03'),(596,8,372,'2023-10-09 04:01:03','2023-10-09 04:01:03'),(598,8,374,'2023-10-09 04:03:19','2023-10-09 04:03:19'),(599,8,375,'2023-10-09 04:03:19','2023-10-09 04:03:19'),(600,8,376,'2023-10-09 04:03:19','2023-10-09 04:03:19'),(601,8,377,'2023-10-09 04:03:19','2023-10-09 04:03:19'),(602,8,378,'2023-10-09 04:03:19','2023-10-09 04:03:19'),(603,8,379,'2023-10-09 04:06:01','2023-10-09 04:06:01'),(604,8,380,'2023-10-09 04:06:01','2023-10-09 04:06:01'),(605,8,381,'2023-10-09 04:06:01','2023-10-09 04:06:01'),(606,8,382,'2023-10-09 04:06:01','2023-10-09 04:06:01'),(607,8,383,'2023-10-09 04:06:01','2023-10-09 04:06:01'),(608,8,64,'2023-10-09 04:12:55','2023-10-09 04:12:55'),(609,8,111,'2023-10-09 04:12:55','2023-10-09 04:12:55'),(610,8,384,'2023-10-09 04:12:55','2023-10-09 04:12:55'),(611,8,386,'2023-10-09 04:12:55','2023-10-09 04:12:55'),(612,8,66,'2023-10-09 04:12:55','2023-10-09 04:12:55'),(613,8,112,'2023-10-09 04:12:55','2023-10-09 04:12:55'),(614,8,385,'2023-10-09 04:12:55','2023-10-09 04:12:55'),(615,8,387,'2023-10-09 04:12:55','2023-10-09 04:12:55'),(616,8,231,'2023-10-09 04:22:46','2023-10-09 04:22:46'),(617,8,230,'2023-10-09 04:22:46','2023-10-09 04:22:46'),(618,8,388,'2023-10-09 04:22:46','2023-10-09 04:22:46'),(619,8,299,'2023-10-09 04:22:46','2023-10-09 04:22:46'),(620,8,268,'2023-10-09 04:22:46','2023-10-09 04:22:46'),(621,8,269,'2023-10-09 04:22:46','2023-10-09 04:22:46'),(622,8,293,'2023-10-09 04:22:46','2023-10-09 04:22:46'),(623,8,107,'2023-10-09 04:39:39','2023-10-09 04:39:39'),(624,8,16,'2023-10-09 04:39:39','2023-10-09 04:39:39'),(625,8,108,'2023-10-09 04:39:39','2023-10-09 04:39:39'),(626,8,109,'2023-10-09 04:39:39','2023-10-09 04:39:39'),(627,8,266,'2023-10-09 04:39:39','2023-10-09 04:39:39'),(628,8,267,'2023-10-09 04:39:39','2023-10-09 04:39:39'),(629,8,292,'2023-10-09 04:39:39','2023-10-09 04:39:39'),(630,2,390,'2023-10-09 04:50:19','2023-10-09 04:50:19'),(631,2,391,'2023-10-09 04:50:19','2023-10-09 04:50:19'),(632,2,393,'2023-10-09 04:50:19','2023-10-09 04:50:19'),(633,2,394,'2023-10-09 04:50:19','2023-10-09 04:50:19'),(634,2,395,'2023-10-09 04:50:19','2023-10-09 04:50:19'),(635,2,396,'2023-10-09 04:50:19','2023-10-09 04:50:19'),(638,2,392,'2023-10-09 04:57:53','2023-10-09 04:57:53'),(639,8,103,'2023-10-09 04:56:43','2023-10-09 04:56:43'),(640,8,126,'2023-10-09 04:56:43','2023-10-09 04:56:43'),(641,8,256,'2023-10-09 04:56:43','2023-10-09 04:56:43'),(642,8,104,'2023-10-09 04:56:43','2023-10-09 04:56:43'),(643,8,257,'2023-10-09 04:56:43','2023-10-09 04:56:43'),(644,8,105,'2023-10-09 04:56:43','2023-10-09 04:56:43'),(645,8,258,'2023-10-09 04:56:43','2023-10-09 04:56:43'),(646,8,259,'2023-10-09 04:56:43','2023-10-09 04:56:43'),(647,8,260,'2023-10-09 04:59:11','2023-10-09 04:59:11'),(648,8,261,'2023-10-09 04:59:11','2023-10-09 04:59:11'),(649,8,262,'2023-10-09 04:59:44','2023-10-09 04:59:44'),(650,8,263,'2023-10-09 04:59:44','2023-10-09 04:59:44'),(651,8,264,'2023-10-09 05:00:02','2023-10-09 05:00:02'),(652,8,265,'2023-10-09 05:00:02','2023-10-09 05:00:02'),(653,8,397,'2023-10-09 05:47:49','2023-10-09 05:47:49'),(654,8,398,'2023-10-09 05:47:49','2023-10-09 05:47:49'),(655,8,399,'2023-10-09 05:47:49','2023-10-09 05:47:49'),(656,8,400,'2023-10-09 05:47:49','2023-10-09 05:47:49'),(657,8,401,'2023-10-09 05:47:49','2023-10-09 05:47:49'),(658,8,402,'2023-10-09 05:47:49','2023-10-09 05:47:49'),(659,8,403,'2023-10-09 05:47:49','2023-10-09 05:47:49'),(660,8,404,'2023-10-09 05:47:49','2023-10-09 05:47:49'),(661,8,405,'2023-10-09 05:47:49','2023-10-09 05:47:49'),(662,8,406,'2023-10-09 05:47:49','2023-10-09 05:47:49'),(663,8,407,'2023-10-09 05:47:49','2023-10-09 05:47:49'),(664,8,408,'2023-10-09 05:47:49','2023-10-09 05:47:49'),(665,8,409,'2023-10-09 06:09:27','2023-10-09 06:09:27'),(666,8,411,'2023-10-09 06:09:27','2023-10-09 06:09:27'),(667,8,413,'2023-10-09 06:09:27','2023-10-09 06:09:27'),(668,8,415,'2023-10-09 06:09:27','2023-10-09 06:09:27'),(669,8,410,'2023-10-09 06:09:27','2023-10-09 06:09:27'),(670,8,412,'2023-10-09 06:09:27','2023-10-09 06:09:27'),(671,8,414,'2023-10-09 06:09:27','2023-10-09 06:09:27'),(672,8,416,'2023-10-09 06:09:27','2023-10-09 06:09:27'),(673,8,417,'2023-10-09 06:14:57','2023-10-09 06:14:57'),(674,8,418,'2023-10-09 06:14:57','2023-10-09 06:14:57'),(675,8,419,'2023-10-09 06:14:57','2023-10-09 06:14:57'),(677,8,421,'2023-10-09 06:14:57','2023-10-09 06:14:57'),(678,8,422,'2023-10-09 06:14:57','2023-10-09 06:14:57'),(679,8,423,'2023-10-09 06:14:57','2023-10-09 06:14:57'),(681,8,425,'2023-10-09 06:16:56','2023-10-09 06:16:56'),(682,8,426,'2023-10-09 06:16:56','2023-10-09 06:16:56'),(683,8,427,'2023-10-09 06:17:08','2023-10-09 06:17:08'),(684,8,428,'2023-10-09 06:17:08','2023-10-09 06:17:08'),(699,8,429,'2023-10-09 06:21:35','2023-10-09 06:21:35'),(700,8,430,'2023-10-09 06:21:35','2023-10-09 06:21:35'),(701,8,431,'2023-10-09 06:21:35','2023-10-09 06:21:35'),(702,8,432,'2023-10-09 06:21:35','2023-10-09 06:21:35'),(703,8,433,'2023-10-09 06:21:35','2023-10-09 06:21:35'),(704,8,434,'2023-10-09 06:21:35','2023-10-09 06:21:35'),(705,8,435,'2023-10-09 06:21:35','2023-10-09 06:21:35'),(706,8,436,'2023-10-09 06:21:35','2023-10-09 06:21:35'),(707,8,437,'2023-10-09 06:21:35','2023-10-09 06:21:35'),(708,8,438,'2023-10-09 06:21:35','2023-10-09 06:21:35'),(709,8,439,'2023-10-09 06:21:35','2023-10-09 06:21:35'),(710,8,440,'2023-10-09 06:21:35','2023-10-09 06:21:35'),(711,8,441,'2023-10-09 06:21:35','2023-10-09 06:21:35'),(712,8,442,'2023-10-09 06:21:35','2023-10-09 06:21:35'),(713,8,218,'2023-10-09 08:51:30','2023-10-09 08:51:30'),(714,8,443,'2023-10-09 08:51:30','2023-10-09 08:51:30'),(715,8,444,'2023-10-09 08:51:30','2023-10-09 08:51:30'),(716,8,445,'2023-10-09 08:51:30','2023-10-09 08:51:30'),(717,8,446,'2023-10-09 08:51:30','2023-10-09 08:51:30'),(718,8,447,'2023-10-09 08:51:30','2023-10-09 08:51:30'),(719,8,448,'2023-10-09 08:51:30','2023-10-09 08:51:30'),(720,8,432,'2023-10-09 08:51:30','2023-10-09 08:51:30'),(721,8,449,'2023-10-09 08:51:30','2023-10-09 08:51:30'),(722,8,450,'2023-10-09 08:51:30','2023-10-09 08:51:30'),(723,8,451,'2023-10-09 08:51:30','2023-10-09 08:51:30'),(724,8,452,'2023-10-09 08:51:30','2023-10-09 08:51:30'),(725,8,453,'2023-10-09 09:01:12','2023-10-09 09:01:12'),(726,8,454,'2023-10-09 09:01:12','2023-10-09 09:01:12'),(727,8,455,'2023-10-09 09:01:32','2023-10-09 09:01:32'),(728,8,445,'2023-10-10 04:35:39','2023-10-10 04:35:39'),(729,8,446,'2023-10-10 04:35:39','2023-10-10 04:35:39'),(730,8,447,'2023-10-10 04:35:39','2023-10-10 04:35:39'),(731,8,448,'2023-10-10 04:35:39','2023-10-10 04:35:39'),(732,8,456,'2023-10-10 04:43:16','2023-10-10 04:43:16'),(733,8,432,'2023-10-10 04:43:16','2023-10-10 04:43:16'),(734,8,457,'2023-10-10 04:49:01','2023-10-10 04:49:01'),(735,8,450,'2023-10-10 04:49:54','2023-10-10 04:49:54'),(736,8,451,'2023-10-10 04:49:54','2023-10-10 04:49:54'),(737,8,452,'2023-10-10 04:49:54','2023-10-10 04:49:54'),(738,8,449,'2023-10-10 04:49:54','2023-10-10 04:49:54'),(739,8,458,'2023-10-10 04:57:08','2023-10-10 04:57:08'),(740,8,459,'2023-10-10 04:57:08','2023-10-10 04:57:08'),(741,8,460,'2023-10-10 04:57:08','2023-10-10 04:57:08'),(742,8,461,'2023-10-10 04:57:08','2023-10-10 04:57:08'),(743,8,425,'2023-10-10 05:10:48','2023-10-10 05:10:48'),(744,8,426,'2023-10-10 05:10:48','2023-10-10 05:10:48'),(745,8,427,'2023-10-10 05:10:48','2023-10-10 05:10:48'),(746,8,220,'2023-10-10 05:11:15','2023-10-10 05:11:15'),(747,8,232,'2023-10-10 05:11:15','2023-10-10 05:11:15'),(748,8,462,'2023-10-10 05:11:15','2023-10-10 05:11:15'),(749,8,463,'2023-10-10 05:11:15','2023-10-10 05:11:15'),(750,8,464,'2023-10-10 05:22:15','2023-10-10 05:22:15'),(751,8,465,'2023-10-10 05:22:15','2023-10-10 05:22:15'),(752,8,466,'2023-10-10 05:22:15','2023-10-10 05:22:15'),(753,8,32,'2023-10-10 05:51:37','2023-10-10 05:51:37'),(754,8,138,'2023-10-10 05:51:37','2023-10-10 05:51:37'),(755,8,25,'2023-10-10 05:51:37','2023-10-10 05:51:37'),(756,8,467,'2023-10-10 05:51:37','2023-10-10 05:51:37'),(757,8,468,'2023-10-10 05:51:37','2023-10-10 05:51:37'),(758,8,10,'2023-10-10 05:51:37','2023-10-10 05:51:37'),(759,8,26,'2023-10-10 05:51:37','2023-10-10 05:51:37'),(760,8,31,'2023-10-10 05:51:37','2023-10-10 05:51:37'),(761,8,469,'2023-10-10 06:06:40','2023-10-10 06:06:40'),(762,8,470,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(763,8,471,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(764,8,472,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(765,8,473,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(766,8,474,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(767,8,475,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(768,8,476,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(769,8,477,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(770,8,478,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(771,8,479,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(772,8,480,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(773,8,481,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(774,8,482,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(775,8,483,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(776,8,484,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(777,8,485,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(778,8,486,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(779,8,487,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(780,8,488,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(781,8,489,'2023-10-10 06:43:01','2023-10-10 06:43:01'),(782,8,490,'2023-10-10 06:44:37','2023-10-10 06:44:37'),(783,8,457,'2023-10-10 08:18:37','2023-10-10 08:18:37'),(784,8,491,'2023-10-10 08:18:37','2023-10-10 08:18:37'),(785,8,492,'2023-10-10 08:18:37','2023-10-10 08:18:37'),(786,8,493,'2023-10-10 08:28:29','2023-10-10 08:28:29'),(787,8,494,'2023-10-10 08:28:29','2023-10-10 08:28:29'),(788,8,495,'2023-10-10 08:28:29','2023-10-10 08:28:29'),(789,8,496,'2023-10-10 08:28:29','2023-10-10 08:28:29'),(806,8,497,'2023-10-10 11:12:20','2023-10-10 11:12:20'),(807,8,498,'2023-10-10 11:12:20','2023-10-10 11:12:20'),(808,8,499,'2023-10-10 11:12:20','2023-10-10 11:12:20'),(809,8,500,'2023-10-10 11:12:20','2023-10-10 11:12:20'),(810,8,501,'2023-10-10 11:12:20','2023-10-10 11:12:20'),(811,8,502,'2023-10-10 11:12:20','2023-10-10 11:12:20'),(812,8,503,'2023-10-10 11:12:20','2023-10-10 11:12:20'),(813,8,504,'2023-10-11 04:50:48','2023-10-11 04:50:48'),(814,8,505,'2023-10-11 04:50:48','2023-10-11 04:50:48'),(815,8,506,'2023-10-11 04:50:48','2023-10-11 04:50:48'),(816,8,507,'2023-10-11 04:50:48','2023-10-11 04:50:48'),(817,8,508,'2023-10-11 04:50:48','2023-10-11 04:50:48'),(818,8,509,'2023-10-11 04:50:48','2023-10-11 04:50:48'),(819,8,510,'2023-10-11 04:50:48','2023-10-11 04:50:48'),(820,8,511,'2023-10-11 04:50:48','2023-10-11 04:50:48'),(821,8,512,'2023-10-11 04:50:48','2023-10-11 04:50:48'),(822,8,513,'2023-10-11 04:50:48','2023-10-11 04:50:48'),(823,8,514,'2023-10-11 04:50:48','2023-10-11 04:50:48'),(824,8,515,'2023-10-11 04:50:48','2023-10-11 04:50:48'),(825,8,493,'2023-10-11 04:55:56','2023-10-11 04:55:56'),(826,8,494,'2023-10-11 04:55:56','2023-10-11 04:55:56'),(827,8,495,'2023-10-11 04:55:56','2023-10-11 04:55:56'),(828,8,496,'2023-10-11 04:55:56','2023-10-11 04:55:56'),(829,8,497,'2023-10-11 04:55:56','2023-10-11 04:55:56'),(830,8,498,'2023-10-11 04:55:56','2023-10-11 04:55:56'),(831,8,499,'2023-10-11 04:55:56','2023-10-11 04:55:56'),(832,8,500,'2023-10-11 04:55:56','2023-10-11 04:55:56'),(833,8,501,'2023-10-11 04:55:56','2023-10-11 04:55:56'),(834,8,502,'2023-10-11 04:55:56','2023-10-11 04:55:56'),(835,8,503,'2023-10-11 04:55:56','2023-10-11 04:55:56'),(836,8,445,'2023-10-11 05:00:55','2023-10-11 05:00:55'),(837,8,446,'2023-10-11 05:00:55','2023-10-11 05:00:55'),(838,8,447,'2023-10-11 05:00:55','2023-10-11 05:00:55'),(839,8,448,'2023-10-11 05:00:55','2023-10-11 05:00:55'),(840,8,516,'2023-10-11 05:03:15','2023-10-11 05:03:15'),(841,8,517,'2023-10-11 05:03:15','2023-10-11 05:03:15'),(842,8,518,'2023-10-11 05:03:15','2023-10-11 05:03:15'),(843,8,519,'2023-10-11 05:03:15','2023-10-11 05:03:15'),(844,8,520,'2023-10-11 05:03:15','2023-10-11 05:03:15'),(845,8,521,'2023-10-11 05:03:15','2023-10-11 05:03:15'),(846,8,522,'2023-10-11 05:03:15','2023-10-11 05:03:15'),(847,8,523,'2023-10-11 05:03:15','2023-10-11 05:03:15'),(848,8,524,'2023-10-11 05:03:15','2023-10-11 05:03:15'),(849,8,525,'2023-10-11 05:03:15','2023-10-11 05:03:15'),(850,8,526,'2023-10-11 05:03:15','2023-10-11 05:03:15'),(851,8,527,'2023-10-11 05:03:15','2023-10-11 05:03:15'),(852,8,528,'2023-10-11 05:07:45','2023-10-11 05:07:45'),(853,8,529,'2023-10-11 05:07:45','2023-10-11 05:07:45'),(854,8,493,'2023-10-11 05:07:45','2023-10-11 05:07:45'),(855,8,530,'2023-10-11 05:07:45','2023-10-11 05:07:45'),(856,8,531,'2023-10-11 05:07:45','2023-10-11 05:07:45'),(857,8,532,'2023-10-11 05:07:45','2023-10-11 05:07:45'),(858,8,533,'2023-10-11 05:07:45','2023-10-11 05:07:45'),(859,8,534,'2023-10-11 05:07:45','2023-10-11 05:07:45'),(860,8,535,'2023-10-11 05:07:45','2023-10-11 05:07:45'),(861,8,536,'2023-10-11 05:07:45','2023-10-11 05:07:45'),(862,8,537,'2023-10-11 05:07:45','2023-10-11 05:07:45'),(863,8,538,'2023-10-11 05:07:45','2023-10-11 05:07:45'),(864,8,539,'2023-10-11 05:12:16','2023-10-11 05:12:16'),(865,8,493,'2023-10-11 05:12:16','2023-10-11 05:12:16'),(866,8,445,'2023-10-11 05:12:16','2023-10-11 05:12:16'),(867,8,540,'2023-10-11 05:12:16','2023-10-11 05:12:16'),(868,8,541,'2023-10-11 05:12:16','2023-10-11 05:12:16'),(869,8,205,'2023-10-11 05:12:16','2023-10-11 05:12:16'),(870,8,542,'2023-10-11 05:22:30','2023-10-11 05:22:30'),(871,8,543,'2023-10-11 05:22:30','2023-10-11 05:22:30'),(872,8,544,'2023-10-11 05:22:30','2023-10-11 05:22:30'),(873,8,545,'2023-10-11 05:22:30','2023-10-11 05:22:30'),(874,8,546,'2023-10-11 05:22:30','2023-10-11 05:22:30'),(875,8,547,'2023-10-11 05:22:30','2023-10-11 05:22:30'),(876,8,548,'2023-10-11 05:22:30','2023-10-11 05:22:30'),(877,8,549,'2023-10-11 05:22:30','2023-10-11 05:22:30'),(878,8,550,'2023-10-11 05:22:30','2023-10-11 05:22:30'),(879,8,551,'2023-10-11 05:22:30','2023-10-11 05:22:30'),(880,8,552,'2023-10-11 05:22:30','2023-10-11 05:22:30'),(881,8,553,'2023-10-11 05:22:30','2023-10-11 05:22:30'),(882,8,554,'2023-10-11 05:22:30','2023-10-11 05:22:30'),(883,8,555,'2023-10-11 05:22:30','2023-10-11 05:22:30'),(884,6,138,'2023-10-11 06:29:25','2023-10-11 06:29:25'),(885,6,221,'2023-10-11 06:29:25','2023-10-11 06:29:25'),(886,6,143,'2023-10-11 06:29:25','2023-10-11 06:29:25'),(887,6,233,'2023-10-11 06:29:25','2023-10-11 06:29:25'),(888,6,213,'2023-10-11 06:29:25','2023-10-11 06:29:25'),(889,6,186,'2023-10-11 06:38:37','2023-10-11 06:38:37'),(890,8,493,'2023-10-11 05:27:27','2023-10-11 05:27:27'),(891,8,556,'2023-10-11 05:27:27','2023-10-11 05:27:27'),(892,8,557,'2023-10-11 05:27:27','2023-10-11 05:27:27'),(893,8,558,'2023-10-11 06:40:23','2023-10-11 06:40:23'),(894,8,559,'2023-10-11 06:40:23','2023-10-11 06:40:23'),(895,8,560,'2023-10-11 06:40:23','2023-10-11 06:40:23'),(896,8,561,'2023-10-11 06:40:23','2023-10-11 06:40:23'),(897,8,562,'2023-10-11 06:40:23','2023-10-11 06:40:23'),(898,8,563,'2023-10-11 06:40:23','2023-10-11 06:40:23'),(899,6,144,'2023-10-11 06:46:37','2023-10-11 06:46:37'),(900,8,564,'2023-10-11 09:16:30','2023-10-11 09:16:30'),(901,8,565,'2023-10-11 09:16:30','2023-10-11 09:16:30'),(902,8,566,'2023-10-11 09:16:30','2023-10-11 09:16:30'),(903,8,567,'2023-10-11 09:16:30','2023-10-11 09:16:30'),(904,8,568,'2023-10-11 09:16:30','2023-10-11 09:16:30'),(905,8,569,'2023-10-11 09:16:30','2023-10-11 09:16:30'),(906,8,570,'2023-10-11 09:16:30','2023-10-11 09:16:30'),(907,8,571,'2023-10-11 09:16:30','2023-10-11 09:16:30'),(908,8,572,'2023-10-11 09:16:30','2023-10-11 09:16:30'),(909,8,573,'2023-10-11 09:16:30','2023-10-11 09:16:30'),(910,8,574,'2023-10-11 09:16:30','2023-10-11 09:16:30'),(911,8,575,'2023-10-11 10:53:54','2023-10-11 10:53:54'),(912,8,576,'2023-10-11 10:53:54','2023-10-11 10:53:54'),(913,8,577,'2023-10-11 10:53:54','2023-10-11 10:53:54'),(914,8,578,'2023-10-11 10:53:54','2023-10-11 10:53:54'),(915,8,579,'2023-10-11 10:53:54','2023-10-11 10:53:54'),(916,8,580,'2023-10-11 10:53:54','2023-10-11 10:53:54');
/*!40000 ALTER TABLE `master_persyaratan_data_per_kategori_surat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_persyaratan_per_kategori_aset`
--

DROP TABLE IF EXISTS `master_persyaratan_per_kategori_aset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_persyaratan_per_kategori_aset` (
  `id_persyaratan_per_kategori_aset` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenis_aset` int(11) NOT NULL,
  `id_jenis_data_aset` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_persyaratan_per_kategori_aset`),
  KEY `c_persyaratan_jenisaset` (`id_jenis_aset`),
  KEY `c_persyaratan_jenis_dataaset` (`id_jenis_data_aset`),
  CONSTRAINT `c_persyaratan_jenis_dataaset` FOREIGN KEY (`id_jenis_data_aset`) REFERENCES `master_jenis_data_aset` (`id_jenis_data_aset`),
  CONSTRAINT `c_persyaratan_jenisaset` FOREIGN KEY (`id_jenis_aset`) REFERENCES `master_jenis_aset` (`id_jenis_aset`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_persyaratan_per_kategori_aset`
--

LOCK TABLES `master_persyaratan_per_kategori_aset` WRITE;
/*!40000 ALTER TABLE `master_persyaratan_per_kategori_aset` DISABLE KEYS */;
INSERT INTO `master_persyaratan_per_kategori_aset` VALUES (9,1,2,'2023-09-15 13:55:54','2023-09-15 13:55:54'),(10,1,3,'2023-09-15 13:55:54','2023-09-15 13:55:54'),(11,1,1,'2023-09-15 13:55:54','2023-09-15 13:55:54'),(12,1,10,'2023-09-15 13:55:54','2023-09-15 13:55:54'),(13,12,2,'2023-09-15 13:56:34','2023-09-15 13:56:34'),(14,12,3,'2023-09-15 13:56:34','2023-09-15 13:56:34'),(15,12,1,'2023-09-15 13:56:34','2023-09-15 13:56:34'),(16,12,10,'2023-09-15 13:56:34','2023-09-15 13:56:34'),(17,13,8,'2023-09-15 13:57:22','2023-09-15 13:57:22'),(18,13,9,'2023-09-15 13:57:22','2023-09-15 13:57:22'),(23,14,5,'2023-09-15 13:57:52','2023-09-15 13:57:52'),(24,14,7,'2023-09-15 13:57:52','2023-09-15 13:57:52'),(25,14,6,'2023-09-15 13:57:52','2023-09-15 13:57:52'),(26,14,4,'2023-09-15 13:57:52','2023-09-15 13:57:52');
/*!40000 ALTER TABLE `master_persyaratan_per_kategori_aset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_persyaratan_per_kategori_layanan`
--

DROP TABLE IF EXISTS `master_persyaratan_per_kategori_layanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_persyaratan_per_kategori_layanan` (
  `id_persyaratan_per_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori_layanan` int(11) NOT NULL,
  `id_jenis_berkas` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_persyaratan_per_kategori`),
  KEY `c_persyaratankategorilayanan_masterjenisberkas` (`id_jenis_berkas`),
  KEY `c_persyaratankategorilayanan_kategoridaftarlayanan` (`id_kategori_layanan`),
  CONSTRAINT `c_persyaratankategorilayanan_kategoridaftarlayanan` FOREIGN KEY (`id_kategori_layanan`) REFERENCES `master_kategori_daftar_layanan` (`id_kategori_layanan`),
  CONSTRAINT `c_persyaratankategorilayanan_masterjenisberkas` FOREIGN KEY (`id_jenis_berkas`) REFERENCES `master_jenis_berkas` (`id_jenis_berkas`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_persyaratan_per_kategori_layanan`
--

LOCK TABLES `master_persyaratan_per_kategori_layanan` WRITE;
/*!40000 ALTER TABLE `master_persyaratan_per_kategori_layanan` DISABLE KEYS */;
INSERT INTO `master_persyaratan_per_kategori_layanan` VALUES (1,1,14,'2023-09-07 10:52:19','2023-09-07 10:52:19'),(2,1,15,'2023-09-07 10:52:19','2023-09-07 10:52:19'),(3,2,14,'2023-09-07 10:53:24','2023-09-07 10:53:24'),(4,2,16,'2023-09-07 10:53:24','2023-09-07 10:53:24'),(5,3,14,'2023-09-07 10:53:24','2023-09-07 10:53:24'),(6,3,17,'2023-09-07 10:53:24','2023-09-07 10:53:24'),(7,4,14,'2023-09-07 10:53:24','2023-09-07 10:53:24'),(8,4,18,'2023-09-07 10:53:24','2023-09-07 10:53:24'),(9,7,14,'2023-09-12 06:32:28','2023-09-12 06:32:28'),(10,7,20,'2023-09-12 06:32:28','2023-09-12 06:32:28'),(11,7,21,'2023-09-12 06:32:28','2023-09-12 06:32:28'),(12,8,14,'2023-09-12 06:33:52','2023-09-12 06:33:52'),(13,8,22,'2023-09-12 06:33:52','2023-09-12 06:33:52'),(14,8,23,'2023-09-12 06:33:52','2023-09-12 06:33:52'),(15,8,18,'2023-09-12 06:33:52','2023-09-12 06:33:52'),(16,9,14,'2023-09-12 06:34:46','2023-09-12 06:34:46'),(17,9,17,'2023-09-12 06:34:46','2023-09-12 06:34:46'),(18,9,25,'2023-09-12 06:34:46','2023-09-12 06:34:46'),(19,9,22,'2023-09-12 06:34:46','2023-09-12 06:34:46'),(20,10,14,'2023-09-12 06:35:57','2023-09-12 06:35:57'),(21,10,22,'2023-09-12 06:35:57','2023-09-12 06:35:57'),(22,10,20,'2023-09-12 06:35:57','2023-09-12 06:35:57'),(23,11,26,'2023-09-13 03:32:57','2023-09-13 03:32:57'),(24,5,29,'2023-09-15 02:14:30','2023-09-15 02:14:30'),(25,5,1,'2023-09-15 02:14:30','2023-09-15 02:14:30'),(26,6,30,'2023-09-15 02:14:30','2023-09-15 02:14:30'),(27,6,3,'2023-09-15 02:14:30','2023-09-15 02:14:30'),(28,12,51,'2023-09-15 05:46:19','2023-09-15 05:46:19'),(29,12,14,'2023-09-15 05:46:19','2023-09-15 05:46:19'),(30,13,14,'2023-09-15 05:48:42','2023-09-15 05:48:42'),(31,13,52,'2023-09-15 05:48:42','2023-09-15 05:48:42'),(32,14,14,'2023-09-15 05:49:32','2023-09-15 05:49:32'),(33,14,31,'2023-09-15 05:49:32','2023-09-15 05:49:32'),(34,14,32,'2023-09-15 05:49:32','2023-09-15 05:49:32'),(35,15,14,'2023-09-15 05:49:32','2023-09-15 05:49:32'),(36,15,31,'2023-09-15 05:49:32','2023-09-15 05:49:32'),(37,15,33,'2023-09-15 05:49:32','2023-09-15 05:49:32'),(38,15,34,'2023-09-15 05:49:32','2023-09-15 05:49:32'),(39,15,35,'2023-09-15 05:49:32','2023-09-15 05:49:32'),(40,15,36,'2023-09-15 05:49:32','2023-09-15 05:49:32'),(41,16,14,'2023-09-15 05:49:32','2023-09-15 05:49:32'),(42,16,31,'2023-09-15 05:49:32','2023-09-15 05:49:32'),(43,17,14,'2023-09-15 05:52:57','2023-09-15 05:52:57'),(44,17,31,'2023-09-15 05:52:57','2023-09-15 05:52:57'),(45,18,14,'2023-09-15 05:53:53','2023-09-15 05:53:53'),(46,18,31,'2023-09-15 05:53:53','2023-09-15 05:53:53'),(47,19,14,'2023-09-15 05:54:40','2023-09-15 05:54:40'),(48,19,31,'2023-09-15 05:54:40','2023-09-15 05:54:40'),(49,19,39,'2023-09-15 05:54:40','2023-09-15 05:54:40'),(50,20,14,'2023-09-15 05:57:26','2023-09-15 05:57:26'),(51,20,29,'2023-09-15 05:57:26','2023-09-15 05:57:26'),(52,21,14,'2023-09-15 05:58:35','2023-09-15 05:58:35'),(53,21,41,'2023-09-15 05:58:35','2023-09-15 05:58:35'),(54,21,42,'2023-09-15 05:58:35','2023-09-15 05:58:35'),(55,21,44,'2023-09-15 05:58:35','2023-09-15 05:58:35'),(56,21,43,'2023-09-15 05:58:35','2023-09-15 05:58:35'),(57,21,45,'2023-09-15 05:58:35','2023-09-15 05:58:35'),(58,22,14,'2023-09-15 08:08:15','2023-09-15 08:08:15'),(59,22,30,'2023-09-15 08:08:15','2023-09-15 08:08:15'),(60,22,41,'2023-09-15 08:08:15','2023-09-15 08:08:15'),(61,23,14,'2023-09-15 08:20:29','2023-09-15 08:20:29'),(62,23,34,'2023-09-15 08:20:29','2023-09-15 08:20:29'),(63,23,46,'2023-09-15 08:20:29','2023-09-15 08:20:29'),(64,23,53,'2023-09-15 08:25:44','2023-09-15 08:25:44'),(65,23,54,'2023-09-15 08:25:44','2023-09-15 08:25:44'),(66,24,14,'2023-09-15 08:29:25','2023-09-15 08:29:25'),(67,24,35,'2023-09-15 08:29:25','2023-09-15 08:29:25'),(68,24,36,'2023-09-15 08:29:25','2023-09-15 08:29:25'),(69,25,14,'2023-09-15 08:32:32','2023-09-15 08:32:32'),(70,25,56,'2023-09-15 08:32:32','2023-09-15 08:32:32'),(71,25,49,'2023-09-15 08:32:59','2023-09-15 08:32:59'),(74,26,14,'2023-09-15 08:52:07','2023-09-15 08:52:07'),(75,26,50,'2023-09-15 08:52:07','2023-09-15 08:52:07'),(76,1,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(77,2,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(78,3,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(79,4,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(80,5,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(81,6,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(82,7,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(83,8,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(84,9,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(85,10,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(86,11,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(87,12,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(88,13,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(89,14,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(90,15,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(91,16,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(92,17,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(93,18,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(94,19,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(95,20,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(96,21,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(97,22,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(98,23,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(99,24,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(100,25,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(101,26,58,'2023-09-19 04:35:10','2023-09-19 04:35:10'),(103,26,58,'2023-09-19 10:08:03','2023-09-19 10:08:03');
/*!40000 ALTER TABLE `master_persyaratan_per_kategori_layanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_persyaratan_per_kategori_perubahan_penduduk`
--

DROP TABLE IF EXISTS `master_persyaratan_per_kategori_perubahan_penduduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_persyaratan_per_kategori_perubahan_penduduk` (
  `id_persyaratan_per_kategori_perubahan_penduduk` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori_perubahan` int(11) NOT NULL,
  `id_jenis_berkas` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_persyaratan_per_kategori_perubahan_penduduk`),
  KEY `c_persyaratankategoriperubahan_kategoriperubahan` (`id_kategori_perubahan`),
  KEY `c_persyaratankategoriperubahan_jenisberkas` (`id_jenis_berkas`),
  CONSTRAINT `c_persyaratankategoriperubahan_jenisberkas` FOREIGN KEY (`id_jenis_berkas`) REFERENCES `master_jenis_berkas` (`id_jenis_berkas`),
  CONSTRAINT `c_persyaratankategoriperubahan_kategoriperubahan` FOREIGN KEY (`id_kategori_perubahan`) REFERENCES `master_kategori_perubahan_penduduk` (`id_kategori_perubahan`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_persyaratan_per_kategori_perubahan_penduduk`
--

LOCK TABLES `master_persyaratan_per_kategori_perubahan_penduduk` WRITE;
/*!40000 ALTER TABLE `master_persyaratan_per_kategori_perubahan_penduduk` DISABLE KEYS */;
INSERT INTO `master_persyaratan_per_kategori_perubahan_penduduk` VALUES (1,1,1,'2023-09-04 04:25:12','2023-09-06 16:12:02'),(2,2,2,'2023-09-04 04:25:12','2023-09-06 15:22:23'),(3,3,3,'2023-09-04 04:54:28','2023-09-04 04:54:28'),(5,4,4,'2023-09-05 11:47:54','2023-09-06 16:22:53'),(6,6,12,'2023-09-05 11:48:13','2023-09-06 14:51:59'),(8,6,20,'2023-09-06 12:57:19','2023-09-06 16:48:28'),(9,6,20,'2023-09-12 04:38:45','2023-09-12 04:38:45'),(10,6,13,'2023-09-12 04:38:45','2023-09-12 04:38:45'),(11,1,1,'2023-09-15 14:39:37','2023-09-15 14:39:37');
/*!40000 ALTER TABLE `master_persyaratan_per_kategori_perubahan_penduduk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_role_akun`
--

DROP TABLE IF EXISTS `master_role_akun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_role_akun` (
  `id_pejabat` int(11) NOT NULL AUTO_INCREMENT,
  `nik` bigint(16) NOT NULL,
  `periode` varchar(30) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `id_status_role` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_pejabat`),
  KEY `c_masterrole_penduduk` (`nik`),
  KEY `c_masterrole_statusakun` (`id_status_role`),
  KEY `c_masterrole_masterjabatan` (`id_jabatan`),
  CONSTRAINT `c_masterrole_masterjabatan` FOREIGN KEY (`id_jabatan`) REFERENCES `master_jabatan` (`id_jabatan`),
  CONSTRAINT `c_masterrole_penduduk` FOREIGN KEY (`nik`) REFERENCES `transaksi_penduduk` (`nik`),
  CONSTRAINT `c_masterrole_statusakun` FOREIGN KEY (`id_status_role`) REFERENCES `master_status_akun` (`id_status_akun`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_role_akun`
--

LOCK TABLES `master_role_akun` WRITE;
/*!40000 ALTER TABLE `master_role_akun` DISABLE KEYS */;
INSERT INTO `master_role_akun` VALUES (1,3514181709020001,'2023 - 2024',5,1,'2023-10-16 03:58:46','2023-10-16 03:58:46'),(2,3572021111110004,'1985 - 2050',5,1,'2023-10-23 08:39:27','2023-10-23 08:39:27'),(3,3220100123220100,'2023 - 2024',5,1,'2023-10-23 10:07:28','2023-10-23 10:07:28'),(4,3507220505020002,'2023 - 2024',5,1,'2023-10-23 22:07:50','2023-10-23 22:07:50');
/*!40000 ALTER TABLE `master_role_akun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_rt`
--

DROP TABLE IF EXISTS `master_rt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_rt` (
  `id_rt` int(11) NOT NULL AUTO_INCREMENT,
  `no_rt` varchar(255) NOT NULL,
  `id_rw` int(11) NOT NULL,
  `id_dusun` int(11) NOT NULL,
  `nama_rt` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_rt`),
  KEY `c_rt_rw` (`id_rw`),
  KEY `c_rt_dusun` (`id_dusun`),
  CONSTRAINT `c_rt_dusun` FOREIGN KEY (`id_dusun`) REFERENCES `master_dusun` (`id_dusun`),
  CONSTRAINT `c_rt_rw` FOREIGN KEY (`id_rw`) REFERENCES `master_rw` (`id_rw`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_rt`
--

LOCK TABLES `master_rt` WRITE;
/*!40000 ALTER TABLE `master_rt` DISABLE KEYS */;
INSERT INTO `master_rt` VALUES (8,'13',17,1,'RT 13 RW 06 Sumber Bendo','2023-10-10 04:43:37','2023-10-10 04:43:37'),(9,'14',17,1,'RT 14 RW 06 Sumber Bendo','2023-10-10 04:43:37','2023-10-10 04:43:37'),(10,'35',17,1,'RT 35 RW 06 Sumber Bendo','2023-10-10 04:43:37','2023-10-10 04:43:37'),(11,'36',17,1,'RT 36 RW 06 Sumber Bendo','2023-10-10 04:43:37','2023-10-10 04:43:37'),(17,'15',21,1,'RT 15 RW 07 Sumber Bendo','2023-10-10 04:46:06','2023-10-10 04:46:06'),(18,'16',21,1,'RT 16 RW 07 Sumber Bendo','2023-10-10 04:46:06','2023-10-10 04:46:06'),(19,'37',21,1,'RT 37 RW 07 Sumber Bendo','2023-10-10 04:46:06','2023-10-10 04:46:06'),(26,'23',11,2,'RT 23 RW 10 Godehan','2023-10-10 05:03:27','2023-10-10 05:03:27'),(27,'24',11,2,'RT 24 RW 10 Godehan','2023-10-10 05:03:27','2023-10-10 05:03:27'),(28,'25',12,3,'RT 25 RW 11 Ketohan','2023-10-10 05:11:05','2023-10-10 05:11:05'),(29,'26',12,3,'RT 26 RW 11 Ketohan','2023-10-10 05:11:05','2023-10-10 05:11:05'),(30,'27',12,3,'RT 27 RW 11 Ketohan','2023-10-10 05:11:05','2023-10-10 05:11:05'),(31,'17',15,4,'RT 17 RW 08 Klaseman','2023-10-10 05:12:51','2023-10-10 05:12:51'),(32,'18',15,4,'RT 18 RW 08 Klaseman','2023-10-10 05:12:51','2023-10-10 05:12:51'),(33,'19',15,4,'RT 19 RW 08 Klaseman','2023-10-10 05:12:51','2023-10-10 05:12:51'),(34,'28',15,4,'RT 28 RW 08 Klaseman','2023-10-10 05:12:51','2023-10-10 05:12:51'),(39,'20',19,4,'RT 20 RW 09 Klaseman','2023-10-10 05:19:28','2023-10-10 05:19:28'),(40,'21',19,4,'RT 21 RW 09 Klaseman','2023-10-10 05:19:28','2023-10-10 05:19:28'),(41,'22',19,4,'RT 22 RW 02 Klaseman','2023-10-10 05:19:28','2023-10-10 05:19:28'),(47,'01',14,5,'RT 01 RW 01 Klampok','2023-10-10 05:21:32','2023-10-10 05:21:32'),(48,'02',14,5,'RT 02 RW 01 Klampok','2023-10-10 05:21:32','2023-10-10 05:21:32'),(49,'29',14,5,'RT 29 RW 01 Klampok','2023-10-10 05:21:32','2023-10-10 05:21:32'),(50,'30',14,5,'RT 30 RW 01 Klampok','2023-10-10 05:21:32','2023-10-10 05:21:32'),(60,'03',18,5,'RT 03 RW 02 Klampok','2023-10-10 05:25:40','2023-10-10 05:25:40'),(61,'04',18,5,'RT 04 RW 02 Klampok','2023-10-10 05:25:40','2023-10-10 05:25:40'),(62,'05',18,5,'RT 05 RW 02 Klampok','2023-10-10 05:25:40','2023-10-10 05:25:40'),(63,'31',18,5,'RT 31 RW 02 Klampok','2023-10-10 05:25:40','2023-10-10 05:25:40'),(64,'32',18,5,'RT 32 RW 02 Klampok','2023-10-10 05:25:40','2023-10-10 05:25:40'),(65,'08',16,6,'RT 08 RW 04 Krajan','2023-10-10 05:34:17','2023-10-10 05:34:17'),(66,'09',16,6,'RT 09 RW 04 Krajan','2023-10-10 05:34:17','2023-10-10 05:34:17'),(67,'34',16,6,'RT 34 RW 04 Krajan','2023-10-10 05:34:17','2023-10-10 05:34:17'),(71,'10',20,6,'RT 10 RW 05 Krajan','2023-10-10 05:34:17','2023-10-10 05:34:17'),(72,'11',20,6,'RT 11 RW 05 Krajan','2023-10-10 05:34:17','2023-10-10 05:34:17'),(73,'12',20,6,'RT 12 RW 05 Krajan','2023-10-10 05:34:17','2023-10-10 05:34:17'),(77,'06',13,7,'RT 06 RW 03 Turi','2023-10-10 05:38:07','2023-10-10 05:38:07'),(78,'07',13,7,'RT 07 RW 03 Turi','2023-10-10 05:38:07','2023-10-10 05:38:07'),(79,'33',13,7,'RT 33 RW 03 Turi','2023-10-10 05:38:07','2023-10-10 05:38:07');
/*!40000 ALTER TABLE `master_rt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_rw`
--

DROP TABLE IF EXISTS `master_rw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_rw` (
  `id_rw` int(11) NOT NULL AUTO_INCREMENT,
  `id_dusun` int(11) NOT NULL,
  `no_rw` char(11) NOT NULL,
  `nama_rw` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_modifed` datetime NOT NULL,
  PRIMARY KEY (`id_rw`),
  KEY `c_rw_dusun` (`id_dusun`),
  CONSTRAINT `c_rw_dusun` FOREIGN KEY (`id_dusun`) REFERENCES `master_dusun` (`id_dusun`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_rw`
--

LOCK TABLES `master_rw` WRITE;
/*!40000 ALTER TABLE `master_rw` DISABLE KEYS */;
INSERT INTO `master_rw` VALUES (11,2,'10','RW 10 Godehan','2023-10-10 04:36:20','2023-10-10 04:36:20'),(12,3,'11','RW 11 Ketohan','2023-10-10 04:36:20','2023-10-10 04:36:20'),(13,7,'03','RW 03 Turi','2023-10-10 04:36:20','2023-10-10 04:36:20'),(14,5,'01','RW 01 Klampok','2023-10-10 04:36:20','2023-10-10 04:36:20'),(15,4,'08','RW 08 Klaseman','2023-10-10 04:36:20','2023-10-10 04:36:20'),(16,6,'04','RW 04 Krajan','2023-10-10 04:36:20','2023-10-10 04:36:20'),(17,1,'06','RW 06 Sumber Bendo','2023-10-10 04:36:20','2023-10-10 04:36:20'),(18,5,'02','RW 02 Klampok','2023-10-10 04:39:49','2023-10-10 04:39:49'),(19,4,'09','RW 09 Klaseman','2023-10-10 04:39:49','2023-10-10 04:39:49'),(20,6,'05','RW 05 Krajan','2023-10-10 04:39:49','2023-10-10 04:39:49'),(21,1,'07','RW 07 Sumber Bendo','2023-10-10 04:39:49','2023-10-10 04:39:49');
/*!40000 ALTER TABLE `master_rw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_shdrt`
--

DROP TABLE IF EXISTS `master_shdrt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_shdrt` (
  `id_shdrt` int(11) NOT NULL AUTO_INCREMENT,
  `shdrt` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_shdrt`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_shdrt`
--

LOCK TABLES `master_shdrt` WRITE;
/*!40000 ALTER TABLE `master_shdrt` DISABLE KEYS */;
INSERT INTO `master_shdrt` VALUES (1,'Kepala Keluarga','2023-09-13 09:30:45','2023-09-13 09:30:45'),(2,'Istri','2023-09-13 09:30:45','2023-09-13 09:30:45'),(3,'Suami','2023-09-13 14:50:37','2023-09-13 14:50:45'),(4,'Anak','2023-09-13 14:02:36','2023-09-13 14:02:36'),(5,'Menantu','2023-09-13 14:02:36','2023-09-13 14:02:36'),(6,'Cucu','2023-10-04 03:56:16','2023-10-04 03:56:16'),(7,'Orang Tua','2023-10-04 03:56:16','2023-10-04 03:56:16'),(8,'Mertua','2023-10-04 03:56:16','2023-10-04 03:56:16'),(9,'Famili lain','2023-10-04 03:56:16','2023-10-04 03:56:16'),(10,'Lainnya','2023-10-04 03:56:16','2023-10-04 03:56:16');
/*!40000 ALTER TABLE `master_shdrt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_status_akun`
--

DROP TABLE IF EXISTS `master_status_akun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_status_akun` (
  `id_status_akun` int(11) NOT NULL AUTO_INCREMENT,
  `status_akun` char(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_status_akun`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_status_akun`
--

LOCK TABLES `master_status_akun` WRITE;
/*!40000 ALTER TABLE `master_status_akun` DISABLE KEYS */;
INSERT INTO `master_status_akun` VALUES (1,'aktif','2023-08-29 04:50:01','2023-08-29 04:50:01'),(2,'tidak aktif','2023-08-29 04:50:13','2023-08-29 04:50:13');
/*!40000 ALTER TABLE `master_status_akun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_status_kawin`
--

DROP TABLE IF EXISTS `master_status_kawin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_status_kawin` (
  `id_status_kawin` int(11) NOT NULL AUTO_INCREMENT,
  `status_kawin` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` decimal(10,0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_status_kawin`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_status_kawin`
--

LOCK TABLES `master_status_kawin` WRITE;
/*!40000 ALTER TABLE `master_status_kawin` DISABLE KEYS */;
INSERT INTO `master_status_kawin` VALUES (1,'Kawin','2023-09-12 21:42:39',0),(2,'Belum Kawin','2023-09-12 21:42:39',0);
/*!40000 ALTER TABLE `master_status_kawin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_status_kritik_saran`
--

DROP TABLE IF EXISTS `master_status_kritik_saran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_status_kritik_saran` (
  `id_status_pengajuan_ks` int(11) NOT NULL AUTO_INCREMENT,
  `status_ks` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_modified` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_status_pengajuan_ks`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_status_kritik_saran`
--

LOCK TABLES `master_status_kritik_saran` WRITE;
/*!40000 ALTER TABLE `master_status_kritik_saran` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_status_kritik_saran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_status_penduduk`
--

DROP TABLE IF EXISTS `master_status_penduduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_status_penduduk` (
  `id_status_penduduk` int(11) NOT NULL AUTO_INCREMENT,
  `status_penduduk` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_status_penduduk`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_status_penduduk`
--

LOCK TABLES `master_status_penduduk` WRITE;
/*!40000 ALTER TABLE `master_status_penduduk` DISABLE KEYS */;
INSERT INTO `master_status_penduduk` VALUES (1,'Hidup','2023-08-29 05:00:48','2023-08-29 05:00:48'),(2,'Meninggal','2023-08-29 05:00:48','2023-08-29 05:00:48');
/*!40000 ALTER TABLE `master_status_penduduk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_status_pengajuan`
--

DROP TABLE IF EXISTS `master_status_pengajuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_status_pengajuan` (
  `id_status_pengajuan` int(11) NOT NULL AUTO_INCREMENT,
  `status_pengajuan` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_status_pengajuan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_status_pengajuan`
--

LOCK TABLES `master_status_pengajuan` WRITE;
/*!40000 ALTER TABLE `master_status_pengajuan` DISABLE KEYS */;
INSERT INTO `master_status_pengajuan` VALUES (1,'Diterima','2023-09-01 14:32:45','2023-09-01 09:32:32'),(2,'Pending','2023-09-01 14:32:45','2023-09-01 09:32:32'),(3,'Ditolak','2023-09-01 14:32:45','2023-09-01 09:32:32');
/*!40000 ALTER TABLE `master_status_pengajuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_status_perubahan_penduduk`
--

DROP TABLE IF EXISTS `master_status_perubahan_penduduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_status_perubahan_penduduk` (
  `id_status_perubahan_penduduk` int(11) NOT NULL AUTO_INCREMENT,
  `status_pengajuan` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_modified` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_status_perubahan_penduduk`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_status_perubahan_penduduk`
--

LOCK TABLES `master_status_perubahan_penduduk` WRITE;
/*!40000 ALTER TABLE `master_status_perubahan_penduduk` DISABLE KEYS */;
INSERT INTO `master_status_perubahan_penduduk` VALUES (1,'Tidak disertai bukti','2023-09-14 02:16:05','2023-09-14 02:16:05'),(2,'Pending','2023-09-14 02:16:05','2023-09-14 02:16:05'),(3,'Diterima','2023-09-14 02:16:05','2023-09-14 02:16:05'),(4,'Ditolak','2023-09-14 03:04:07','2023-09-14 03:04:07');
/*!40000 ALTER TABLE `master_status_perubahan_penduduk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_status_verifikasi`
--

DROP TABLE IF EXISTS `master_status_verifikasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_status_verifikasi` (
  `id_status_verifikasi` int(11) NOT NULL AUTO_INCREMENT,
  `status_berkas` varchar(50) NOT NULL,
  PRIMARY KEY (`id_status_verifikasi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_status_verifikasi`
--

LOCK TABLES `master_status_verifikasi` WRITE;
/*!40000 ALTER TABLE `master_status_verifikasi` DISABLE KEYS */;
INSERT INTO `master_status_verifikasi` VALUES (1,'Diterima'),(2,'Pending'),(3,'Ditolak');
/*!40000 ALTER TABLE `master_status_verifikasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_sub_nama_surat`
--

DROP TABLE IF EXISTS `master_sub_nama_surat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_sub_nama_surat` (
  `id_sub_nama_surat` int(11) NOT NULL AUTO_INCREMENT,
  `id_surat` int(11) NOT NULL,
  `sub_nama_surat` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_sub_nama_surat`),
  KEY `c_subnama_namasurat` (`id_surat`),
  CONSTRAINT `c_subnama_namasurat` FOREIGN KEY (`id_surat`) REFERENCES `master_nama_surat` (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_sub_nama_surat`
--

LOCK TABLES `master_sub_nama_surat` WRITE;
/*!40000 ALTER TABLE `master_sub_nama_surat` DISABLE KEYS */;
INSERT INTO `master_sub_nama_surat` VALUES (1,1,'F1.01','2023-09-01 09:41:35','2023-09-01 09:41:35'),(2,1,'F1.02','2023-09-01 09:41:35','2023-09-01 09:41:35'),(3,1,'F1.03','2023-09-01 09:41:56','2023-09-01 09:41:56'),(4,1,'F1.04','2023-09-01 09:41:56','2023-09-01 09:41:56'),(5,1,'F1.05','2023-09-01 09:42:18','2023-09-01 09:42:18'),(6,1,'F1.06','2023-09-01 09:42:18','2023-09-01 09:42:18'),(7,1,'F1.07','2023-09-01 09:42:33','2023-09-01 09:42:33'),(8,1,'F2.01','2023-09-01 09:42:33','2023-09-01 09:42:33'),(9,1,'F2.02','2023-09-26 04:08:58','2023-09-26 04:08:58'),(10,1,'F2.04','2023-09-26 04:08:58','2023-09-26 04:08:58'),(11,7,'Jual Beli Tanah','2023-09-01 09:42:55','2023-09-01 09:42:55'),(12,7,'Surat Sewa Menyewa Tanah','2023-09-01 09:42:55','2023-09-01 09:42:55'),(13,7,'Surat Hibah Tanah','2023-09-01 09:43:39','2023-09-01 09:43:39'),(14,2,'Surat Keterangan Usaha BRI','2023-09-05 03:47:42','2023-10-02 10:09:39'),(15,3,'Surat Keterangan Tidak Mampu','2023-09-05 03:47:58','2023-09-05 03:47:58'),(17,5,'SPTJM Kematian','2023-09-05 03:48:19','2023-09-05 03:48:19'),(18,6,'SPTJM Kelahiran','2023-09-05 03:48:27','2023-09-05 03:48:27'),(19,8,'Surat Keterangan Domisili','2023-09-05 03:48:36','2023-09-05 03:48:36'),(25,9,'Surat Pemberitahuan Hajat','2023-09-05 15:10:51','2023-09-05 15:10:51'),(26,8,'Surat Keterangan Beda Nama','2023-09-06 08:27:14','2023-09-06 16:32:26'),(27,2,'Surat Keterangan Usaha BNI','2023-09-22 03:56:08','2023-09-22 03:56:08'),(28,2,'Surat Keterangan Usaha Danamon','2023-09-22 03:56:08','2023-09-22 03:56:08'),(29,2,'Surat Keterangan Usaha Danamon BRI','2023-09-22 03:56:08','2023-09-22 03:56:08'),(30,2,'Surat Keterangan Usaha dan Harga Tanah','2023-09-22 03:56:08','2023-09-22 03:56:08'),(31,1,'F2.10','2023-09-26 04:08:58','2023-09-26 04:08:58'),(32,1,'Surat Keterangan Menikah','2023-10-02 10:01:09','2023-10-02 10:01:09');
/*!40000 ALTER TABLE `master_sub_nama_surat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi_aset_penduduk`
--

DROP TABLE IF EXISTS `transaksi_aset_penduduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi_aset_penduduk` (
  `id_aset` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenis_aset` int(11) NOT NULL,
  `nik` bigint(16) NOT NULL,
  `id_status` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `catatan_aset` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_aset`),
  KEY `c_asetpenduduk_penduduk` (`nik`),
  KEY `c_asetpenduduk_jenis_aset` (`id_jenis_aset`),
  KEY `c_asetpenduduk_verifikasi` (`id_status`),
  CONSTRAINT `c_asetpenduduk_jenis_aset` FOREIGN KEY (`id_jenis_aset`) REFERENCES `master_jenis_aset` (`id_jenis_aset`),
  CONSTRAINT `c_asetpenduduk_penduduk` FOREIGN KEY (`nik`) REFERENCES `transaksi_penduduk` (`nik`),
  CONSTRAINT `c_asetpenduduk_verifikasi` FOREIGN KEY (`id_status`) REFERENCES `master_status_verifikasi` (`id_status_verifikasi`)
) ENGINE=InnoDB AUTO_INCREMENT=894387034 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi_aset_penduduk`
--

LOCK TABLES `transaksi_aset_penduduk` WRITE;
/*!40000 ALTER TABLE `transaksi_aset_penduduk` DISABLE KEYS */;
INSERT INTO `transaksi_aset_penduduk` VALUES (439349338,13,3514181709020001,1,'','Berhasil diverifikasi','2023-10-23 10:07:14','2023-10-23 14:10:49'),(441134609,14,3220100012345678,3,'','Tidak sesuai foto','2023-10-23 10:54:29','2023-10-23 10:55:20'),(586324607,18,3220100012345678,2,'../../files/asetpenduduk/653731f5603b7aset3220100123220100.pdf','Menunggu Verifikasi','2023-10-24 09:54:45','2023-10-24 09:54:45'),(894387033,14,3220100012345678,1,'','Berhasil diverifikasi','2023-10-23 14:11:43','2023-10-23 14:11:55');
/*!40000 ALTER TABLE `transaksi_aset_penduduk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi_berkas_penduduk`
--

DROP TABLE IF EXISTS `transaksi_berkas_penduduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi_berkas_penduduk` (
  `id_berkas` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenis_berkas` int(11) NOT NULL,
  `nik` bigint(16) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status_berkas` int(11) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_berkas`),
  KEY `c_berkaspenduduk_penduduk` (`nik`),
  KEY `c_berkaspenduduk_jenisberkaspenduduk` (`id_jenis_berkas`) USING BTREE,
  KEY `c_berkaspenduduk_statusberkas` (`status_berkas`),
  CONSTRAINT `c_berkaspenduduk_masterberkaspenduduk` FOREIGN KEY (`id_jenis_berkas`) REFERENCES `master_jenis_berkas_penduduk` (`id_jenis_berkas`),
  CONSTRAINT `c_berkaspenduduk_penduduk` FOREIGN KEY (`nik`) REFERENCES `transaksi_penduduk` (`nik`),
  CONSTRAINT `c_berkaspenduduk_statusberkas` FOREIGN KEY (`status_berkas`) REFERENCES `master_status_verifikasi` (`id_status_verifikasi`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi_berkas_penduduk`
--

LOCK TABLES `transaksi_berkas_penduduk` WRITE;
/*!40000 ALTER TABLE `transaksi_berkas_penduduk` DISABLE KEYS */;
INSERT INTO `transaksi_berkas_penduduk` VALUES (1,1,3514181709020001,'../files/berkaspenduduk/652c9856a7d27Kartu Keluarga3514181709020001.pdf',1,'','2023-10-16 08:56:38','2023-10-16 09:02:09'),(2,6,3514181709020001,'../files/berkaspenduduk/652c9856b35b1Akta Kelahiran3514181709020001.pdf',1,'','2023-10-16 08:56:38','2023-10-16 09:02:14'),(3,1,3220100199999999,'../files/berkaspenduduk/652cac2f13208Kartu Keluarga3220100199999999.pdf',1,'','2023-10-16 10:21:18','2023-10-16 10:26:03'),(4,6,3220100199999999,'../files/berkaspenduduk/652cac2f49e90Akta Kelahiran3220100199999999.pdf',1,'','2023-10-16 10:21:18','2023-10-16 10:26:02'),(5,1,3507220505020002,'../../files/berkaspenduduk/6535e2e2a4b96KartuKeluarga3507220505020002.pdf',1,'','2023-10-23 10:05:06','2023-10-23 10:29:04'),(6,6,3507220505020002,'../../files/berkaspenduduk/6535e2e2a5387AktaKelahiran3507220505020002.pdf',1,'','2023-10-23 10:05:06','2023-10-23 10:29:07'),(7,1,3220100123220100,'../../files/berkaspenduduk/6535e32494b23KartuKeluarga3220100123220100.pdf',1,'','2023-10-23 10:06:12','2023-10-23 10:29:09'),(8,6,3220100123220100,'../../files/berkaspenduduk/6535e32495829AktaKelahiran3220100123220100.pdf',1,'','2023-10-23 10:06:12','2023-10-23 10:29:11'),(9,1,3578046007020002,'../../files/berkaspenduduk/6535e6ba03127KartuKeluarga3514181709020001.pdf',1,'','2023-10-23 10:21:30','2023-10-23 10:29:13'),(10,6,3578046007020002,'../../files/berkaspenduduk/6535e6ba039a6AktaKelahiran3514181709020001.pdf',1,'','2023-10-23 10:21:30','2023-10-23 10:29:17'),(11,1,3220100013456789,'../../files/berkaspenduduk/6535f071754fcKartuKeluarga3514181709020001.pdf',1,'','2023-10-23 11:02:57','2023-10-23 14:05:49'),(12,6,3220100013456789,'../../files/berkaspenduduk/6535f071759b3AktaKelahiran3514181709020001.pdf',1,'','2023-10-23 11:02:57','2023-10-23 14:05:51'),(13,1,9876543210123456,'../files/berkaspenduduk/6535f413078e4Kartu Keluarga9876543210123456.pdf',1,'','2023-10-23 11:18:27','2023-10-23 14:05:53'),(14,6,9876543210123456,'../files/berkaspenduduk/6535f41307c7aAkta Kelahiran9876543210123456.pdf',1,'','2023-10-23 11:18:27','2023-10-23 14:05:55'),(15,1,3573021711020003,'../files/berkaspenduduk/6535f5477a3b1Kartu Keluarga3573021711020003.pdf',1,'','2023-10-23 11:23:35','2023-10-23 14:05:57'),(16,6,3573021711020003,'../files/berkaspenduduk/6535f5477a85dAkta Kelahiran3573021711020003.pdf',1,'','2023-10-23 11:23:35','2023-10-23 14:05:59'),(17,1,3573041602030001,'../files/berkaspenduduk/6535f676cd8c2Kartu Keluarga3573041602030001.pdf',1,'','2023-10-23 11:28:38','2023-10-23 14:06:01'),(18,6,3573041602030001,'../files/berkaspenduduk/6535f676cde2bAkta Kelahiran3573041602030001.pdf',1,'','2023-10-23 11:28:38','2023-10-23 14:06:04'),(19,2,3514181709020001,'../../files/berkaspenduduk/653689a8d46b7KartuTandaPenduduk3514181709020001.pdf',1,'','2023-10-23 21:56:40','2023-10-23 22:22:02'),(20,7,3514181709020001,'../../files/berkaspenduduk/653689d41bf88AktaPernikahan3514181709020001.pdf',1,'','2023-10-23 21:57:24','2023-10-23 22:22:04'),(21,12,3514181709020001,'../../files/berkaspenduduk/653689d41d717Ijazah3514181709020001.pdf',1,'','2023-10-23 21:57:24','2023-10-23 22:22:07'),(22,13,3514181709020001,'../../files/berkaspenduduk/653689d41ee5eKIA3514181709020001.pdf',1,'','2023-10-23 21:57:24','2023-10-23 22:22:10'),(23,16,3514181709020001,'../../files/berkaspenduduk/653689d4209faPaspor3514181709020001.pdf',1,'','2023-10-23 21:57:24','2023-10-23 22:22:12'),(24,17,3514181709020001,'../../files/berkaspenduduk/653689d421ee5KITAP3514181709020001.pdf',2,'','2023-10-23 21:57:24','2023-10-23 21:57:24'),(25,19,3514181709020001,'../../files/berkaspenduduk/653689d42322bAktaPerceraian3514181709020001.pdf',2,'','2023-10-23 21:57:24','2023-10-23 21:57:24'),(26,1,3572022222220004,'../files/berkaspenduduk/653690d55dc0bKartu Keluarga3572022222220004.pdf',2,'','2023-10-23 22:27:17','2023-10-23 22:27:17'),(27,6,3572022222220004,'../files/berkaspenduduk/653690d55e3d3Akta Kelahiran3572022222220004.pdf',2,'','2023-10-23 22:27:17','2023-10-23 22:27:17'),(28,1,3572023201010004,'../../files/berkaspenduduk/65369e1572653KartuKeluarga3514181709020001.pdf',2,'','2023-10-23 23:23:49','2023-10-23 23:23:49'),(29,6,3572023201010004,'../../files/berkaspenduduk/65369e1572df3AktaKelahiran3514181709020001.pdf',2,'','2023-10-23 23:23:49','2023-10-23 23:23:49'),(30,2,3220100123220100,'../../files/berkaspenduduk/653724b061954KartuTandaPenduduk3220100123220100.pdf',2,'','2023-10-24 08:58:08','2023-10-24 08:58:08'),(31,7,3220100123220100,'../../files/berkaspenduduk/653724b063faeAktaPernikahan3220100123220100.pdf',2,'','2023-10-24 08:58:08','2023-10-24 08:58:08'),(32,1,3241824182482177,'../../files/berkaspenduduk/65372732cfbe8KartuKeluarga3220100123220100.pdf',2,'','2023-10-24 09:08:50','2023-10-24 09:08:50'),(33,6,3241824182482177,'../../files/berkaspenduduk/65372732d047fAktaKelahiran3220100123220100.pdf',2,'','2023-10-24 09:08:50','2023-10-24 09:08:50'),(34,2,3241824182482177,'../../files/berkaspenduduk/65372a5db08d2KartuTandaPenduduk3220100123220100.pdf',2,'','2023-10-24 09:22:21','2023-10-24 09:22:21'),(35,7,3241824182482177,'../../files/berkaspenduduk/65372a5db4402AktaPernikahan3220100123220100.pdf',2,'','2023-10-24 09:22:21','2023-10-24 09:22:21'),(36,12,3241824182482177,'../../files/berkaspenduduk/65372a5dbfed4Ijazah3220100123220100.pdf',2,'','2023-10-24 09:22:21','2023-10-24 09:22:21'),(37,13,3241824182482177,'../../files/berkaspenduduk/65372a5dcd827KIA3220100123220100.pdf',2,'','2023-10-24 09:22:21','2023-10-24 09:22:21'),(38,16,3241824182482177,'../../files/berkaspenduduk/65372a5ddbb66Paspor3220100123220100.pdf',2,'','2023-10-24 09:22:21','2023-10-24 09:22:21'),(39,17,3241824182482177,'../../files/berkaspenduduk/65372a5de35ceKITAP3220100123220100.pdf',2,'','2023-10-24 09:22:21','2023-10-24 09:22:21'),(40,19,3241824182482177,'../../files/berkaspenduduk/65372a5df4094AktaPerceraian3220100123220100.pdf',2,'','2023-10-24 09:22:21','2023-10-24 09:22:21');
/*!40000 ALTER TABLE `transaksi_berkas_penduduk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi_catatan_pengajuan`
--

DROP TABLE IF EXISTS `transaksi_catatan_pengajuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi_catatan_pengajuan` (
  `id_catatan` int(11) NOT NULL AUTO_INCREMENT,
  `catatan_pengajuan` varchar(255) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_catatan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi_catatan_pengajuan`
--

LOCK TABLES `transaksi_catatan_pengajuan` WRITE;
/*!40000 ALTER TABLE `transaksi_catatan_pengajuan` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaksi_catatan_pengajuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi_formulir_surat`
--

DROP TABLE IF EXISTS `transaksi_formulir_surat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi_formulir_surat` (
  `id_pengajuan_surat` int(11) NOT NULL AUTO_INCREMENT,
  `id_sub_surat` int(11) NOT NULL,
  `nik_pengaju` bigint(16) NOT NULL,
  `no_surat` int(11) NOT NULL,
  `status_pengajuan` int(11) NOT NULL DEFAULT 2,
  `catatan` varchar(255) NOT NULL,
  `file_upload` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_pengajuan_surat`),
  KEY `c_formulirsurat_penduduk` (`nik_pengaju`),
  KEY `c_formulirsurat_subsurat` (`id_sub_surat`),
  KEY `c_formulirsurat_statuspengajuan` (`status_pengajuan`),
  CONSTRAINT `c_formulirsurat_penduduk` FOREIGN KEY (`nik_pengaju`) REFERENCES `transaksi_penduduk` (`nik`),
  CONSTRAINT `c_formulirsurat_statuspengajuan` FOREIGN KEY (`status_pengajuan`) REFERENCES `master_status_pengajuan` (`id_status_pengajuan`),
  CONSTRAINT `c_formulirsurat_subsurat` FOREIGN KEY (`id_sub_surat`) REFERENCES `master_sub_nama_surat` (`id_sub_nama_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=944495737 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi_formulir_surat`
--

LOCK TABLES `transaksi_formulir_surat` WRITE;
/*!40000 ALTER TABLE `transaksi_formulir_surat` DISABLE KEYS */;
INSERT INTO `transaksi_formulir_surat` VALUES (182591557,27,3514181709020001,132,1,'Sudah Diverifikasi','files/hasilsuratkeluar/suratketeranganusaha/653669c49e4dcsuratketeranganusahabri3514181709020001.docx','2023-10-23 19:40:17','2023-10-23 19:40:36'),(190527359,2,3514181709020001,56789,1,'Sudah Diverifikasi','','2023-10-16 10:29:16','2023-10-16 10:29:50'),(253180020,27,3514181709020001,11,2,'Proses Verifikasi','','2023-10-23 19:43:25','2023-10-23 19:43:25'),(328643373,1,3514181709020001,1,1,'Sudah Diverifikasi','','2023-10-20 14:36:07','2023-10-23 09:23:07'),(441206353,14,3514181709020001,11,2,'Proses Verifikasi','','2023-10-23 19:43:38','2023-10-23 19:43:38'),(495135178,14,3514181709020001,11,2,'Proses Verifikasi','','2023-10-23 19:43:55','2023-10-23 19:43:55'),(567724927,27,3514181709020001,11,2,'Proses Verifikasi','','2023-10-23 19:44:24','2023-10-23 19:44:24'),(615613982,14,3514181709020001,11,1,'Sudah Diverifikasi','files/hasilsuratkeluar/suratketeranganusaha/653664adc5dc6suratketeranganusahabni3514181709020001.docx','2023-10-23 19:13:41','2023-10-23 19:18:53'),(706246481,14,3514181709020001,11,2,'Proses Verifikasi','','2023-10-23 19:44:11','2023-10-23 19:44:11'),(749381315,1,3514181709020001,1,1,'Sudah Diverifikasi','','2023-10-20 14:38:11','2023-10-23 09:51:20'),(944495736,14,3514181709020001,112,1,'Sudah Diverifikasi','files/hasilsuratkeluar/suratketeranganusaha/653668b2ca6a1suratketeranganusahabni3514181709020001.docx','2023-10-23 19:35:45','2023-10-23 19:36:02');
/*!40000 ALTER TABLE `transaksi_formulir_surat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi_konten`
--

DROP TABLE IF EXISTS `transaksi_konten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi_konten` (
  `id_konten` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenis_konten` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `subjudul` varchar(255) NOT NULL,
  `gambar_konten` varchar(255) NOT NULL,
  `deskripsi_gambar` varchar(255) NOT NULL,
  `caption_konten` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_modified` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_konten`),
  KEY `c_konten_jeniskonten` (`id_jenis_konten`),
  CONSTRAINT `c_konten_jeniskonten` FOREIGN KEY (`id_jenis_konten`) REFERENCES `master_jenis_konten` (`id_jenis_konten`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi_konten`
--

LOCK TABLES `transaksi_konten` WRITE;
/*!40000 ALTER TABLE `transaksi_konten` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaksi_konten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi_penduduk`
--

DROP TABLE IF EXISTS `transaksi_penduduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi_penduduk` (
  `nik` bigint(16) NOT NULL,
  `nomor_kk` bigint(16) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `notelp` varchar(13) NOT NULL,
  `id_jenis_kelamin` int(11) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL COMMENT 'String alamat: "Jalan Ceker Bebek no. 1 Gg. X..."',
  `id_rt` int(11) DEFAULT NULL,
  `id_rw` int(11) DEFAULT NULL,
  `id_dusun` int(11) DEFAULT NULL,
  `id_kwn` int(11) DEFAULT NULL,
  `id_status_penduduk` int(11) DEFAULT NULL,
  `pekerjaan` varchar(255) DEFAULT NULL,
  `id_agama` int(11) DEFAULT NULL,
  `id_status_kawin` int(11) DEFAULT 1,
  `id_golongandarah` int(11) DEFAULT NULL,
  `id_shdrt` int(11) DEFAULT NULL,
  `id_pendidikan` int(11) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `status_verifikasi` int(11) NOT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`nik`),
  KEY `c_penduduk_rt` (`id_rt`),
  KEY `c_penduduk_rw` (`id_rw`),
  KEY `c_penduduk_dusun` (`id_dusun`),
  KEY `c_penduduk_kewarganegaraan` (`id_kwn`),
  KEY `c_penduduk_status_penduduk` (`id_status_penduduk`),
  KEY `c_penduduk_jeniskelamin` (`id_jenis_kelamin`),
  KEY `c_penduduk_agama` (`id_agama`),
  KEY `c_penduduk_status_kawin` (`id_status_kawin`),
  KEY `c_penduduk_statusverifikasi` (`status_verifikasi`),
  KEY `c_penduduk_goldar` (`id_golongandarah`),
  KEY `c_penduduk_shdrt` (`id_shdrt`),
  KEY `c_penduduk_pendidikan` (`id_pendidikan`),
  CONSTRAINT `c_penduduk_agama` FOREIGN KEY (`id_agama`) REFERENCES `master_agama` (`id_agama`),
  CONSTRAINT `c_penduduk_dusun` FOREIGN KEY (`id_dusun`) REFERENCES `master_dusun` (`id_dusun`),
  CONSTRAINT `c_penduduk_goldar` FOREIGN KEY (`id_golongandarah`) REFERENCES `master_golongandarah` (`id_golongandarah`),
  CONSTRAINT `c_penduduk_jeniskelamin` FOREIGN KEY (`id_jenis_kelamin`) REFERENCES `master_jenis_kelamin` (`id_jenis_kelamin`),
  CONSTRAINT `c_penduduk_kewarganegaraan` FOREIGN KEY (`id_kwn`) REFERENCES `master_kewarganegaraan` (`id_kwn`),
  CONSTRAINT `c_penduduk_pendidikan` FOREIGN KEY (`id_pendidikan`) REFERENCES `master_pendidikan` (`id_pendidikan`),
  CONSTRAINT `c_penduduk_rt` FOREIGN KEY (`id_rt`) REFERENCES `master_rt` (`id_rt`),
  CONSTRAINT `c_penduduk_rw` FOREIGN KEY (`id_rw`) REFERENCES `master_rw` (`id_rw`),
  CONSTRAINT `c_penduduk_shdrt` FOREIGN KEY (`id_shdrt`) REFERENCES `master_shdrt` (`id_shdrt`),
  CONSTRAINT `c_penduduk_status_kawin` FOREIGN KEY (`id_status_kawin`) REFERENCES `master_status_kawin` (`id_status_kawin`),
  CONSTRAINT `c_penduduk_status_penduduk` FOREIGN KEY (`id_status_penduduk`) REFERENCES `master_status_penduduk` (`id_status_penduduk`),
  CONSTRAINT `c_penduduk_statusverifikasi` FOREIGN KEY (`status_verifikasi`) REFERENCES `master_status_verifikasi` (`id_status_verifikasi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi_penduduk`
--

LOCK TABLES `transaksi_penduduk` WRITE;
/*!40000 ALTER TABLE `transaksi_penduduk` DISABLE KEYS */;
INSERT INTO `transaksi_penduduk` VALUES (3220100012345678,2211000120072002,'Shani Indira Natio','081445678',2,'Jogja','2023-10-20','Jl. Malioboro',31,15,4,2,1,'Artis',2,1,3,2,5,'2023-10-20 15:15:46','2023-10-23 14:04:46',2,'Menunggu Verifikasi'),(3220100013456789,2211000120072002,'Albertus Bryan','08990325778',1,'Malang','2023-10-11','Jl. Plaosan',31,15,4,2,1,'Mahasiswa',1,1,3,3,5,'2023-10-23 10:48:34','2023-10-23 11:02:57',2,'Menunggu Verifikasi'),(3220100123220100,123456,'Rara','094304710',2,'Malang','2001-11-15','Jl Blaablaa',17,21,1,2,1,'Dokter',5,2,4,4,10,'2023-10-23 08:35:06','2023-10-24 08:58:08',2,'Menunggu Verifikasi'),(3220100199999999,2201001916012002,'GATHAN FITRA KRISNA','087850886176',1,'Malang','2001-12-22','Jl. jalankucur, Godehan, Kucur.',27,11,2,2,1,'Yutuber',2,1,4,1,4,'2023-10-16 10:19:09','2023-10-16 10:29:40',1,'Menunggu Verifikasi'),(3241824182482177,8741874087014817,'arar','9741741740187',2,'malang','2000-11-19','jl blaa',8,17,1,2,1,'Guru',1,2,1,4,5,'2023-10-24 09:08:50','2023-10-24 09:22:21',2,'Menunggu Verifikasi'),(3322116655449988,3322116655449988,'Yatno','087596427845',1,'malang','2023-09-09','sumber bendo ',18,21,1,2,1,'Arsitek',1,2,2,4,3,'2023-10-23 11:19:51','2023-10-23 11:19:51',2,'Menunggu Verifikasi'),(3507220505020002,3507220505020002,'Grace','081',2,'Malang','2002-07-17','Mesir',18,21,1,2,1,'Sucikage',5,2,3,9,4,'2023-10-23 10:02:06','2023-10-23 10:57:54',2,'Menunggu Verifikasi'),(3514181709020001,3514180101000638,'Isra Yehova Asmaranda','081259950915',1,'Malang','2023-10-16','Jl. Mertojoyo Sel. No.Blok C, Merjosari, Kec. Lowokwaru, Kota Malang, Jawa Timur ',8,17,1,2,1,'Buruh',5,2,4,4,4,'2023-10-16 08:55:23','2023-10-23 10:12:48',1,'Menunggu Verifikasi'),(3572021111110004,3572021111110004,'Alfredo Oka Halim','0811773311909',1,'Malang','2023-10-23','Jalan Greenland',9,17,1,2,1,'Vice Manager',1,2,4,4,5,'2023-10-23 08:36:40','2023-10-23 08:38:04',2,'Menunggu Verifikasi'),(3572022222220004,7890123456789012,'Y','081112131415',1,'Batu','2008-02-07','Jln raya tidar',8,17,1,1,1,'Hokage',5,1,1,1,2,'2023-10-23 09:53:40','2023-10-23 22:27:17',2,'Menunggu Verifikasi'),(3572023201010004,1223123211232321,'Susi Pujiastuti','0812231312112',2,'Jakarta','1959-09-23','Kucur',31,15,4,2,1,'Ibu Rumah Tangga',2,1,2,2,5,'2023-10-23 09:17:45','2023-10-23 23:23:49',2,'Menunggu Verifikasi'),(3573021711020003,2201002223082002,'Philip Nathanael','081255949456',1,'Jakarta','2002-11-17','Jalan apa ya',67,16,6,2,1,'System Analyst',5,2,2,4,5,'2023-10-23 11:05:39','2023-10-23 11:23:35',2,'Menunggu Verifikasi'),(3573041602030001,2211000120072002,'Ruben Dwijaya Setyo Atmojo','081357551935',1,'Malang','2003-02-16','Jl. Godehan no 25',26,11,2,2,1,'Pendeta ',5,1,3,3,5,'2023-10-23 11:27:42','2023-10-23 11:28:38',2,'Menunggu Verifikasi'),(3578046007020002,2211000120072002,'Angelia Belinda','082244922811',2,'Surabaya','2002-07-20','Jl. Godehan no 23',26,11,2,2,1,'Business Woman',5,1,1,2,5,'2023-10-23 08:34:08','2023-10-23 10:21:30',2,'Menunggu Verifikasi'),(9876543210123456,123456789123456,'affa','1233',1,'Jogja','2023-10-23','Jl Jogja',8,17,1,2,1,'Belum/bekerja',3,2,4,4,1,'2023-10-23 11:16:21','2023-10-23 11:18:27',2,'Menunggu Verifikasi');
/*!40000 ALTER TABLE `transaksi_penduduk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi_pengajuan_kritik_saran`
--

DROP TABLE IF EXISTS `transaksi_pengajuan_kritik_saran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi_pengajuan_kritik_saran` (
  `id_kritik_saran` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori_ks` int(11) NOT NULL,
  `nik` bigint(16) NOT NULL,
  `nama_pengirim` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `id_jenis_kelamin` int(11) NOT NULL,
  `kritik_dan_saran` text NOT NULL,
  `status_pengajuan_ks` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_modified` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_kritik_saran`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi_pengajuan_kritik_saran`
--

LOCK TABLES `transaksi_pengajuan_kritik_saran` WRITE;
/*!40000 ALTER TABLE `transaksi_pengajuan_kritik_saran` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaksi_pengajuan_kritik_saran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi_pengajuan_layanan`
--

DROP TABLE IF EXISTS `transaksi_pengajuan_layanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi_pengajuan_layanan` (
  `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT,
  `nik_pengaju` bigint(16) NOT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `id_layanan` int(11) NOT NULL,
  `id_kategori_layanan` int(11) NOT NULL,
  `id_status_verifikasi` int(11) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_pengajuan`),
  KEY `c_pengajuanlayanan_daftarlayanan` (`id_layanan`),
  KEY `c_pengajuanlayanan_kategorilayanan` (`id_kategori_layanan`),
  KEY `c_pengajuanlayanan_penduduk` (`nik_pengaju`),
  KEY `id_status_pengajuan` (`id_status_verifikasi`),
  CONSTRAINT `c_pengajuanlayanan_daftarlayanan` FOREIGN KEY (`id_layanan`) REFERENCES `master_daftar_layanan` (`id_layanan`),
  CONSTRAINT `c_pengajuanlayanan_kategorilayanan` FOREIGN KEY (`id_kategori_layanan`) REFERENCES `master_kategori_daftar_layanan` (`id_kategori_layanan`),
  CONSTRAINT `c_pengajuanlayanan_penduduk` FOREIGN KEY (`nik_pengaju`) REFERENCES `transaksi_penduduk` (`nik`),
  CONSTRAINT `c_pengajuanlayanan_statuspengajuan` FOREIGN KEY (`id_status_verifikasi`) REFERENCES `master_status_verifikasi` (`id_status_verifikasi`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi_pengajuan_layanan`
--

LOCK TABLES `transaksi_pengajuan_layanan` WRITE;
/*!40000 ALTER TABLE `transaksi_pengajuan_layanan` DISABLE KEYS */;
INSERT INTO `transaksi_pengajuan_layanan` VALUES (1,3220100199999999,'2023-10-23',1,1,1,'','2023-10-23 09:27:13','2023-10-23 09:27:18'),(2,3514181709020001,'2023-10-23',1,4,1,'','2023-10-23 11:35:52','2023-10-23 13:26:18'),(3,3220100199999999,'2023-10-23',1,1,1,'','2023-10-23 13:26:09','2023-10-24 10:07:50'),(4,3507220505020002,'2023-10-23',1,2,1,'','2023-10-23 13:29:38','2023-10-23 13:29:41'),(5,3514181709020001,'2023-10-23',1,4,1,'','2023-10-23 13:34:38','2023-10-23 13:42:24'),(6,3514181709020001,'2023-10-23',1,1,1,'','2023-10-23 22:45:26','2023-10-23 22:45:36'),(7,3220100012345678,'2023-10-23',1,3,2,'','2023-10-23 22:50:01','2023-10-23 22:52:39'),(8,3514181709020001,'2023-10-24',1,1,1,'','2023-10-24 09:44:53','2023-10-24 09:46:41'),(9,3220100123220100,'2023-10-24',1,1,1,'','2023-10-24 09:49:27','2023-10-24 09:51:15'),(10,3507220505020002,'2023-10-24',1,1,2,'','2023-10-24 10:04:18','2023-10-24 10:04:18');
/*!40000 ALTER TABLE `transaksi_pengajuan_layanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi_perubahan_penduduk`
--

DROP TABLE IF EXISTS `transaksi_perubahan_penduduk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi_perubahan_penduduk` (
  `id_perubahan_penduduk` int(11) NOT NULL AUTO_INCREMENT,
  `nik_pengaju` bigint(16) NOT NULL,
  `id_kategori_perubahan` int(11) NOT NULL,
  `id_jenis_perubahan` int(11) NOT NULL,
  `id_status_perubahan_penduduk` int(11) NOT NULL,
  `catatan_verifikasi` varchar(255) NOT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id_perubahan_penduduk`),
  KEY `c_perubahanpenduduk_penduduk` (`nik_pengaju`),
  KEY `c_perubahanpenduduk_jenisperubahan` (`id_jenis_perubahan`),
  KEY `c_perubahanpenduduk_kategoriperubahan` (`id_kategori_perubahan`),
  KEY `c_statusperubahanpenduduk` (`id_status_perubahan_penduduk`),
  CONSTRAINT `c_perubahanpenduduk_jenisperubahan` FOREIGN KEY (`id_jenis_perubahan`) REFERENCES `master_jenis_perubahan` (`id_jenis_perubahan`),
  CONSTRAINT `c_perubahanpenduduk_kategoriperubahan` FOREIGN KEY (`id_kategori_perubahan`) REFERENCES `master_kategori_perubahan_penduduk` (`id_kategori_perubahan`),
  CONSTRAINT `c_perubahanpenduduk_penduduk` FOREIGN KEY (`nik_pengaju`) REFERENCES `transaksi_penduduk` (`nik`),
  CONSTRAINT `c_statusperubahanpenduduk` FOREIGN KEY (`id_status_perubahan_penduduk`) REFERENCES `master_status_perubahan_penduduk` (`id_status_perubahan_penduduk`)
) ENGINE=InnoDB AUTO_INCREMENT=891773074 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi_perubahan_penduduk`
--

LOCK TABLES `transaksi_perubahan_penduduk` WRITE;
/*!40000 ALTER TABLE `transaksi_perubahan_penduduk` DISABLE KEYS */;
INSERT INTO `transaksi_perubahan_penduduk` VALUES (98005370,3514181709020001,1,1,1,'Belum Diverifikasi','2023-10-23','2023-10-23 09:31:10','2023-10-23 09:31:10'),(175122366,3220100123220100,2,1,2,'Belum Diverifikasi','2023-10-17','2023-10-23 13:36:06','2023-10-23 13:38:29'),(268708460,3507220505020002,3,2,1,'Belum Diverifikasi','2023-10-23','2023-10-23 10:44:16','2023-10-23 10:44:16'),(351936699,3514181709020001,2,1,1,'Belum Diverifikasi','2023-10-04','2023-10-23 23:30:33','2023-10-23 23:30:33'),(421606550,3220100123220100,1,1,1,'Belum Diverifikasi','2023-10-22','2023-10-23 10:20:25','2023-10-23 10:20:25'),(636045891,3220100123220100,3,2,1,'Belum Diverifikasi','2023-10-22','2023-10-23 14:07:01','2023-10-23 14:07:01'),(670862308,3514181709020001,1,1,1,'Belum Diverifikasi','2023-10-23','2023-10-23 23:03:43','2023-10-23 23:03:43'),(855934074,3514181709020001,2,1,3,'Berhasil Diverifikasi','2023-10-03','2023-10-23 10:12:02','2023-10-23 10:13:23'),(891773073,3514181709020001,1,1,1,'Belum Diverifikasi','2023-10-15','2023-10-23 22:41:17','2023-10-23 22:41:17');
/*!40000 ALTER TABLE `transaksi_perubahan_penduduk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi_surat_masuk`
--

DROP TABLE IF EXISTS `transaksi_surat_masuk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi_surat_masuk` (
  `id_surat_masuk` int(11) NOT NULL AUTO_INCREMENT,
  `id_pejabat` int(11) NOT NULL,
  `no_surat_masuk` varchar(255) NOT NULL,
  `nama_surat` varchar(255) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `pengaju_surat` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id_surat_masuk`),
  KEY `c_suratmasuk_roleakun` (`id_pejabat`),
  CONSTRAINT `c_suratmasuk_roleakun` FOREIGN KEY (`id_pejabat`) REFERENCES `master_role_akun` (`id_pejabat`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi_surat_masuk`
--

LOCK TABLES `transaksi_surat_masuk` WRITE;
/*!40000 ALTER TABLE `transaksi_surat_masuk` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaksi_surat_masuk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_session`
--

DROP TABLE IF EXISTS `user_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_session` (
  `mac_address` varchar(17) NOT NULL,
  `client_ip` longtext DEFAULT NULL,
  `web_browser` varchar(255) NOT NULL,
  `user` bigint(16) NOT NULL,
  `jabatan` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_expires` datetime NOT NULL,
  `status` enum('enabled','disabled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_session`
--

LOCK TABLES `user_session` WRITE;
/*!40000 ALTER TABLE `user_session` DISABLE KEYS */;
INSERT INTO `user_session` VALUES ('853655577','180.248.27.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36',3514181709020001,5,'2023-10-23 10:16:33','2023-10-23 10:16:33','2023-10-24 10:16:33','enabled'),('044754275','182.253.40.255','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36',3514181709020001,5,'2023-10-23 10:28:12','2023-10-23 10:28:12','2023-10-24 10:28:12','enabled'),('846071613','20.30.40.1, 20.30.40.2','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36',3573021711020003,0,'2023-10-23 11:23:35','2023-10-23 11:23:35','2023-10-24 11:23:35','enabled'),('034027847','20.30.40.1, 20.30.40.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.61',3573041602030001,0,'2023-10-23 11:28:38','2023-10-23 11:28:38','2023-10-24 11:28:38','enabled'),('860905965','180.248.27.44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36',3514181709020001,5,'2023-10-23 14:10:16','2023-10-23 14:10:16','2023-10-24 14:10:16','enabled'),('509252642','182.253.40.255','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.61',3514181709020001,5,'2023-10-23 19:13:02','2023-10-23 19:13:02','2023-10-24 19:13:02','enabled'),('977763500','180.248.29.237','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36',3514181709020001,5,'2023-10-23 22:27:41','2023-10-23 22:27:41','2023-10-24 22:27:41','enabled'),('768782276','180.248.23.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36',3220100199999999,0,'2023-10-24 08:30:53','2023-10-24 08:30:53','2023-10-25 08:30:53','enabled'),('204612527','180.248.23.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36',3514181709020001,5,'2023-10-24 08:32:42','2023-10-24 08:32:42','2023-10-25 08:32:42','enabled'),('589441795','180.248.23.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36',3220100123220100,5,'2023-10-24 08:33:54','2023-10-24 08:33:54','2023-10-25 08:33:54','enabled'),('243088984','180.248.23.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36',3514181709020001,5,'2023-10-24 08:40:31','2023-10-24 08:40:31','2023-10-25 08:40:31','enabled'),('496981377','180.248.23.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36',3514181709020001,5,'2023-10-24 08:48:51','2023-10-24 08:48:51','2023-10-25 08:48:51','enabled'),('356628366','182.253.40.255','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36',3578046007020002,0,'2023-10-24 08:51:13','2023-10-24 08:51:13','2023-10-25 08:51:13','enabled'),('045958766','180.248.23.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36',3514181709020001,5,'2023-10-24 08:52:47','2023-10-24 08:52:47','2023-10-25 08:52:47','enabled'),('676524022','182.253.40.255','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.61',3514181709020001,5,'2023-10-24 09:09:36','2023-10-24 09:09:36','2023-10-25 09:09:36','enabled'),('274493620','180.248.23.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.61',3507220505020002,0,'2023-10-24 10:16:10','2023-10-24 10:16:10','2023-10-25 10:16:10','enabled');
/*!40000 ALTER TABLE `user_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-24 10:36:34
