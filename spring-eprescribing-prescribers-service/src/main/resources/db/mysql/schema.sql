CREATE DATABASE IF NOT EXISTS eprescribing;
GRANT ALL PRIVILEGES ON eprescribing.* TO pc@localhost IDENTIFIED BY 'pc';

USE eprescribing;

CREATE TABLE IF NOT EXISTS prescribers (
  id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  INDEX(last_name)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS specialties (
  id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(80),
  INDEX(name)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS prescriber_specialties (
  prescriber_id INT(4) UNSIGNED NOT NULL,
  specialty_id INT(4) UNSIGNED NOT NULL,
  FOREIGN KEY (prescriber_id) REFERENCES prescribers(id),
  FOREIGN KEY (specialty_id) REFERENCES specialties(id),
  UNIQUE (prescriber_id,specialty_id)
) engine=InnoDB;
