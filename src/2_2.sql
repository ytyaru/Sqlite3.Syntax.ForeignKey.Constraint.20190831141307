pragma foreign_keys = ON;
create table P(A integer primary key);
create table C(A integer references P(A) on delete cascade);
insert into P values(0);
insert into C values(0);
delete from P;
select * from C;
select count(*) from C;

