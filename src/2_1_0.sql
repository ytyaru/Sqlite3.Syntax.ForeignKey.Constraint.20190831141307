pragma foreign_keys = ON;
create table P(A integer primary key);
create table C(A integer default 99 references P(A) on delete set default);
insert into P values(99);
insert into P values(0);
insert into C values(0);
delete from P where A=0;
select * from C;
select count(*) from C where A = 99;

