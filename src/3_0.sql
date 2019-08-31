pragma foreign_keys = ON;
create table P(A integer primary key);
create table C(A integer references P(A) on update set NULL);
insert into P values(0);
insert into C values(0);
update P set A = 1;
.echo on
select count(*) from C where A is NULL;

