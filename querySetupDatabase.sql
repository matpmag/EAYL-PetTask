-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema petData
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema petData
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `petData` DEFAULT CHARACTER SET latin1 ;
USE `petData` ;

-- -----------------------------------------------------
-- Table `petData`.`tableOwner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `petData`.`tableOwner` (
  `ownerID` INT(11) NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(20) NOT NULL,
  `lastName` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`ownerID`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `petData`.`tablePet`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `petData`.`tablePet` (
  `petID` INT(11) NOT NULL AUTO_INCREMENT,
  `petName` VARCHAR(20) NOT NULL,
  `speciesID` INT(11) NOT NULL,
  `sex` CHAR(1) NULL DEFAULT NULL,
  `birth` DATE NOT NULL,
  `death` DATE NULL DEFAULT NULL,
  `cost` DECIMAL(5,2) NULL DEFAULT '0.00',
  `neutered` TINYINT(1) NULL DEFAULT '0',
  PRIMARY KEY (`petID`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `petData`.`tablePetOwner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `petData`.`tablePetOwner` (
  `petID` INT(11) NOT NULL,
  `ownerID` INT(11) NOT NULL,
  PRIMARY KEY (`petID`, `ownerID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `petData`.`tableSpecies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `petData`.`tableSpecies` (
  `speciesID` INT(11) NOT NULL AUTO_INCREMENT,
  `speciesName` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`speciesID`),
  UNIQUE INDEX `speciesName` (`speciesName` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

ALTER TABLE tablePet ADD CONSTRAINT keySpeciesID FOREIGN KEY(speciesID) REFERENCES tableSpecies(speciesID);
ALTER TABLE tablePetOwner ADD CONSTRAINT keyPetID FOREIGN KEY(petID) REFERENCES tablePet(petID);
ALTER TABLE tablePetOwner ADD CONSTRAINT keyOwnerID FOREIGN KEY(ownerID) REFERENCES tableOwner(ownerID);
