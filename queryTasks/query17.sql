select firstName, lastName from tableOwner
where lower(firstName) like "%av%"
or lower(lastName) like "%av%";