drop table record;
create table record(id identity, artist varchar(1000) not null, album varchar(1000) not null, year varchar(50)  not null, genre varchar(50) not null, notes varchar(1000), art varchar(1000));

insert into record(artist, album, year, genre, notes, art) values('beach boys', 'petsounds', '1970', 'pop', 'good shit','http://ecx.images-amazon.com/images/I/71nFZNXN5ML._SL1300_.jpg');

insert into record(artist, album, year, genre, notes, art) values('dead milk men', 'big lizard in my back yard', '1985', 'punk', 'good shit','http://ecx.images-amazon.com/images/I/510pNWE-ivL.jpg');

insert into record(artist, album, year, genre, notes, art) values('brian eno', 'another green world', '1975', 'glam', 'a great record','http://2.bp.blogspot.com/-Yfi6tCqAO4c/T9F9Z0fCsMI/AAAAAAAAAFU/XZEpluI00Ew/s1600/cover.jpg');


select * from record;

select * from users;
DELETE FROM record WHERE id = 8;