pragma foreign_keys = ON;
create table P(A integer primary key);
create table C(A integer references P(A) on update cascade on delete cascade);

-- 削除される
insert into P values(0);
insert into C values(0);
delete from P;
select count(*) from C;

-- 更新される
insert into P values(0);
insert into C values(0);
select * from C;
update P set A = 1;
select * from C;

