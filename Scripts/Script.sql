drop table record;
create table record(id identity, owner varchar(50) not null, artist varchar(1000) not null, album varchar(1000) not null, year varchar(50)  not null, genre varchar(50) not null, notes varchar(1000), art varchar(1000));

insert into record(owner, artist, album, year, genre, notes, art) values('michael jensen','beach boys', 'petsounds', '1970', 'pop', 'good shit','http://ecx.images-amazon.com/images/I/71nFZNXN5ML._SL1300_.jpg');

insert into record(owner, artist, album, year, genre, notes, art) values('michael jensen','dead milk men', 'big lizard in my back yard', '1985', 'punk', 'good shit','http://ecx.images-amazon.com/images/I/510pNWE-ivL.jpg');

insert into record(owner, artist, album, year, genre, notes, art) values('michael jensen','brian eno', 'another green world', '1975', 'glam', 'a great record','http://2.bp.blogspot.com/-Yfi6tCqAO4c/T9F9Z0fCsMI/AAAAAAAAAFU/XZEpluI00Ew/s1600/cover.jpg');

insert into record(owner, artist, album, year, genre, notes, art) values('user','joy division', 'unknown pleasures', '1979', 'pop', 'good shit','http://4.bp.blogspot.com/-GDdHc1Se7cY/UVL-dhmcsvI/AAAAAAAAEHA/3jL544ZODMc/s1600/paint_unknow+pleasures.png');

insert into record(owner, artist, album, year, genre, notes, art) values('user','wire', 'pink flag', '1977', 'punk', 'good shit','http://ecx.images-amazon.com/images/I/41RtcrujfgL.jpg');



drop table users;
create table users(id identity,username varchar(50) not null, password varchar(50) not null);
insert into users(username,password) values('michael jensen','barf');
insert into users(username,password) values('user','user');

select * from record;
select id, owner, artist, album, year, genre, notes, art from record where owner = 'user';


select * from users;
DELETE FROM record WHERE id = 13;