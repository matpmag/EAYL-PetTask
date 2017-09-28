#!/bin/bash

mysql -uroot -p
create database petData;
use petData;
\! echo "Creating table structure..."
source querySetupDatabase.sql;
\! echo "Populating species table..."
source queryPopulateSpecies.sql;
\! echo "Populating owners table..."
source queryPopulateOwners.sql;
\! echo "Populating pets-owners table..."
source queryPopulatePetOwners.sql;
\! echo "Populating pets table..."
source queryPopulatePets.sql;
\! echo "Success!"
