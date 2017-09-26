create table tablePet( petID int primary key auto_increment, petName varchar(20) not null, ownerID int not null, speciesID int not null, sex char(1), birth date not null, death date);
create table tableOwner ( ownerID int primary key auto_increment, firstName varchar(20) not null, lastName varchar(20) not null);
create table tableSpecies ( speciesID int primary key auto_increment, speciesName varchar(20) not null);

alter table tablePet add constraint keyOwnerID foreign key(ownerID) references tableOwner(ownerID);
alter table tablePet add constraint keySpeciesID foreign key(speciesID) references tableSpecies(speciesID);