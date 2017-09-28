SELECT p.petID, p.petName, p.speciesID, p.sex, p.birth, p.cost FROM tablePet as p
LEFT OUTER JOIN tablePetOwner as l
ON p.petID = l.petID
WHERE l.ownerID IS null
AND p.neutered = true;