SELECT firstName, lastName FROM tableOwner as o
LEFT OUTER JOIN tablePetOwner as l
ON o.ownerID = l.ownerID
WHERE l.petID IS null;