select * from all_users;

select * from all_tables order by owner;

select * from all_tables where owner='HR' order by table_name;

create table ex(
name varchar2(10)
);

drop table ex;

------------------------------------------------------------------------
create table admins(
firstName varchar2(20),
lastName varchar2(20),
email varchar2(30) primary key,
password varchar2(20)
);

select * from admins;

insert into admins(firstName,lastName,email,password) values();