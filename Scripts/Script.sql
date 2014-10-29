drop table record;
create table record(id identity, artist varchar(1000) not null, album varchar(1000) not null, year varchar(50) not null, genre varchar(50) not null, notes varchar(1000) not null, art varchar(1000) not null);
insert into record(artist, album, year, genre, notes, art) values('beach boys', 'petsounds', '1970', 'pop', 'good shit','http://ecx.images-amazon.com/images/I/71nFZNXN5ML._SL1300_.jpg');
insert into record(artist, album, year, genre, notes, art) values('dead milk men', 'big lizard in my back yard', '1985', 'punk', 'good shit','http://ecx.images-amazon.com/images/I/71nFZNXN5ML._SL1300_.jpg');
insert into record(artist, album, year, genre, notes, art) values('boyslife', 's/t', '1998', 'punk', 'good shit','http://ecx.images-amazon.com/images/I/71nFZNXN5ML._SL1300_.jpg');

select * from record;

select * from users;
