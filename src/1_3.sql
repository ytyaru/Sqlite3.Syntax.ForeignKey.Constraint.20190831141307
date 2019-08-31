pragma foreign_keys = ON;
create table P(A integer, B integer, foreign key (A,B) references C(A,B));
create table C(A integer, B integer, primary key(A,B));
insert into P values(0,0);

