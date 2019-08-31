pragma foreign_keys = ON;
create table P(A integer, B integer, foreign key (A,B) references C(A,B));
--create table C(A integer primary key, B integer unique);
create table C(A integer primary key, B integer primary key);
insert into P values(0,0);

