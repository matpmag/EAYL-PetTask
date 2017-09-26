#!/bin/bash

mysql -uroot -p
create database petData;
use petData;
source queryCreateTable.sql;
\! echo "Creating table structure..."
source queryPopulateSpecies.sql;
\! echo "Populating species table..."
source queryPopulateOwners.sql;
\! echo "Populating owners table..."
source queryPopulatePets.sql;
\! echo "Populating pets table..."
\! echo "Success!"
