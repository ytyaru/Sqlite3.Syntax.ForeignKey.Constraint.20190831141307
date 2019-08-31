pragma foreign_keys = ON;
create table P(A integer references C(A));
create table C(A integer primary key);
insert into C values(0);
insert into P values(0);

