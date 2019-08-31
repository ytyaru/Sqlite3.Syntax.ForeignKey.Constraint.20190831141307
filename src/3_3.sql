pragma foreign_keys = ON;
create table P(A integer primary key);
create table C(A integer references P(A) on update restrict);
insert into P values(0);
insert into C values(0);
update P set A = 1;
update C set A = 1 where A = 0;
select * from P;
select * from C;

