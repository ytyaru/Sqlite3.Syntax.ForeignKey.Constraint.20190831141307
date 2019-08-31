pragma foreign_keys = ON;
create table P(A integer primary key);
create table C(A integer references P(A));
insert into P values(0);
insert into C values(0);
drop table P;
select count(*) from P;
select count(*) from C;

