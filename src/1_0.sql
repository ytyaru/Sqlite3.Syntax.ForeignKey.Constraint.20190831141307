pragma foreign_keys = ON;
create table P(A integer references C(A,B));
create table C(A integer primary key, B integer unique);
insert into P values(0,0);

