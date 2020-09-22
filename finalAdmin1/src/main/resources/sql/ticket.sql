select * from all_users;

select * from all_tables order by owner;

select * from all_tables where owner='HR' order by table_name;

create table ex(
name varchar2(10)
);

drop table ex;

------------------------------------------------------------------------

create table tickets(
tNo number primary key,
category varchar2(20),
title varchar2(30),
userId varchar2(30),
regDate date default sysdate,
updateDate date default sysdate,
status number,
content varchar2(3000),
uploadFile varchar2(100)
);

create sequence seq_tickets;

drop table tickets;

select * from tickets;

select * from tickets where tNo>0;

insert into tickets(tNo,category,title,userId,status,content) 
values(seq_tickets.nextval,'Long-term','I have a problem'||seq_tickets.currval,'redRoadbronze'||seq_tickets.currval,1,
'ima go nutz and this wuhan chinamen virus is driving all of us crazy plz help lfg to finish covid');

insert into tickets(tNo,category,title,userId,status,content) 
values(seq_tickets.nextval,'Short-term','I have a problem'||seq_tickets.currval,'redRoadbronze'||seq_tickets.currval,1,
'ima go nutz and this wuhan chinamen virus is driving all of us crazy plz help lfg to finish covid');

insert into tickets(tNo,category,title,userId,status,content) 
select seq_tickets.nextval,category,title||seq_tickets.currval,userId||seq_tickets.currval,status,content
from tickets;