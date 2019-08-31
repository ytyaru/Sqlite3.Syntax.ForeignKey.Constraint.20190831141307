pragma foreign_keys = ON;
create table P(A integer references C(A));
create table C(A integer primary key);
insert into P values(0);

