select count(*), tableOwner.firstName, tableOwner.lastName  from tableOwner
join tablePetOwner on tablePetOwner.ownerID = tableOwner.ownerID
group by tableOwner.lastName, tableOwner.firstName;