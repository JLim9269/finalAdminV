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

insert into tickets(ticketNo,category,title,userId,status,content) values(1,'Long-term','I have a problem1','honggilz1',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(2,'Long-term','I have a problem2','honggilz2',2,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(3,'Long-term','I have a problem3','honggilz3',3,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(4,'Long-term','I have a problem4','honggilz4',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(5,'Long-term','I have a problem5','honggilz5',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(6,'Long-term','I have a problem6','honggilz6',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(7,'Long-term','I have a problem7','honggilz7',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(8,'Short-term','I have a problem8','honggilz8',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(9,'Long-term','I have a problem9','honggilz9',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(10,'Long-term','I have a problem10','honggilz10',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(11,'Long-term','I have a problem11','honggilz11',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(12,'Short-term','I have a problem12','honggilz12',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(13,'Short-term','I have a problem13','honggilz13',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(14,'Short-term','I have a problem14','honggilz14',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(15,'Long-term','I have a problem15','honggilz15',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(16,'Long-term','I have a problem16','honggilz16',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(17,'Long-term','I have a problem17','honggilz17',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(18,'Short-term','I have a problem18','honggilz18',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(19,'Short-term','I have a problem19','honggilz19',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(20,'Long-term','I have a problem20','honggilz20',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(21,'Short-term','I have a problem21','honggilz21',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');
insert into tickets(ticketNo,category,title,userId,status,content) values(22,'Long-term','I have a problem22','honggilz22',1,'THis and that happend and i dunno wt to do plz help or ima go nutz and this wuhan chinamen virus is driving all of us crazy with unending quarantine');