SELECT petName, cost FROM tablePet as p
LEFT OUTER JOIN tablePetOwner as l
ON p.petID = l.petID
WHERE l.ownerID IS null;