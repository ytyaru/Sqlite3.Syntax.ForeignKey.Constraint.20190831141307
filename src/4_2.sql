pragma foreign_keys = ON;
create table P(A integer primary key);
create table C(A integer references P(A));
begin;
pragma defer_foreign_keys = ON;
insert into C values(0); -- 外部キー制約違反（親がない）
select * from C;
commit;

