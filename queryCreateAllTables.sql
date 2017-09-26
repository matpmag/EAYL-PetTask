CREATE TABLE IF NOT EXISTS `petData`.`tableOwner` (
  `ownerID` INT(11) NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(20) NOT NULL,
  `lastName` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`ownerID`))

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

CREATE TABLE IF NOT EXISTS `petData`.`tablePetOwner` (
  `petID` INT(11) NOT NULL,
  `ownerID` INT(11) NOT NULL,
  PRIMARY KEY (`petID`, `ownerID`))

CREATE TABLE IF NOT EXISTS `petData`.`tableSpecies` (
  `speciesID` INT(11) NOT NULL AUTO_INCREMENT,
  `speciesName` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`speciesID`),
  UNIQUE INDEX `speciesName` (`speciesName` ASC))

  ALTER TABLE tablePet ADD CONSTRAINT keySpeciesID FOREIGN KEY(speciesID) REFERENCES tableSpecies(speciesID);
  ALTER TABLE tablePetOwner ADD CONSTRAINT keyPetID FOREIGN KEY(petID) REFERENCES tablePet(petID);
  ALTER TABLE tablePetOwner ADD CONSTRAINT keyOwnerID FOREIGN KEY(ownerID) REFERENCES tableOwner(ownerID);
