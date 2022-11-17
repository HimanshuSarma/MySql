select Person.firstName, Person.lastName, Address.state, Address.city from 
Person left outer join Address on Person.personId = Address.personId;