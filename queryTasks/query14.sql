SELECT petName FROM tablePet as p
LEFT OUTER JOIN tablePetOwner as l
ON p.petID = l.petID
LEFT OUTER JOIN tableOwner as o
ON l.ownerID = o.ownerID
WHERE o.firstName = "John"
AND o.lastName = "Smith";