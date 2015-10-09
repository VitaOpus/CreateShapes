# ************************************************************
# Sequel Pro SQL dump
# Версия 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Адрес: 127.0.0.1 (MySQL 5.5.44-0+deb7u1)
# Схема: library
# Время создания: 2015-10-09 15:22:41 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Дамп таблицы vo_author
# ------------------------------------------------------------

DROP TABLE IF EXISTS `vo_author`;

CREATE TABLE `vo_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `vo_author` WRITE;
/*!40000 ALTER TABLE `vo_author` DISABLE KEYS */;

INSERT INTO `vo_author` (`id`, `name`)
VALUES
	(1,'Иваново'),
	(2,'Петров'),
	(3,'Сидоров');

/*!40000 ALTER TABLE `vo_author` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы vo_author_book
# ------------------------------------------------------------

DROP TABLE IF EXISTS `vo_author_book`;

CREATE TABLE `vo_author_book` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) unsigned NOT NULL,
  `book_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vo_author_id` (`author_id`),
  KEY `vo_book_id` (`book_id`),
  CONSTRAINT `vo_book_id` FOREIGN KEY (`book_id`) REFERENCES `vo_book` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `vo_author_id` FOREIGN KEY (`author_id`) REFERENCES `vo_author` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `vo_author_book` WRITE;
/*!40000 ALTER TABLE `vo_author_book` DISABLE KEYS */;

INSERT INTO `vo_author_book` (`id`, `author_id`, `book_id`)
VALUES
	(1,1,1),
	(2,2,1),
	(3,2,2),
	(4,3,3);

/*!40000 ALTER TABLE `vo_author_book` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы vo_book
# ------------------------------------------------------------

DROP TABLE IF EXISTS `vo_book`;

CREATE TABLE `vo_book` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `vo_book` WRITE;
/*!40000 ALTER TABLE `vo_book` DISABLE KEYS */;

INSERT INTO `vo_book` (`id`, `title`)
VALUES
	(1,'Программирование'),
	(2,'Верстка'),
	(3,'SEO');

/*!40000 ALTER TABLE `vo_book` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
