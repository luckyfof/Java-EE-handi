CREATE DATABASE subtitle_db DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE USER 'javaee'@'localhost' IDENTIFIED BY 'P@ssw0rd2020!';

GRANT ALL PRIVILEGES ON subtitle.* TO 'javaee'@'localhost';

use subtitle_db;

CREATE TABLE subtitle (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	time VARCHAR(100) NOT NULL,
	ligne1 VARCHAR(255),
	ligne2 VARCHAR(255),
	ligne3 VARCHAR(255),
	PRIMARY KEY(id)) ENGINE = InnoDB;

DESCRIBE subtitle;
+--------+------------------+------+-----+---------+----------------+
| Field  | Type             | Null | Key | Default | Extra          |
+--------+------------------+------+-----+---------+----------------+
| id     | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
| time   | varchar(100)     | NO   |     | NULL    |                |
| ligne1 | varchar(255)     | YES  |     | NULL    |                |
| ligne2 | varchar(255)     | YES  |     | NULL    |                |
| ligne3 | varchar(255)     | YES  |     | NULL    |                |
+--------+------------------+------+-----+---------+----------------+
