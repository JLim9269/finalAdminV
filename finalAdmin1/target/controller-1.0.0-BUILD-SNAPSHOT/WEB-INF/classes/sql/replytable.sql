create table tbl_reply (
  rno number(10,0), 
  tno number(10,0) not null,
  reply varchar2(1000) not null,
  replyer varchar2(50) not null, 
  replyDate date default sysdate, 
  updateDate date default sysdate
);

drop table tbl_reply;

drop sequence seq_reply;

create sequence seq_reply;
 
alter table tbl_reply add constraint pk_reply primary key (rno);
 
alter table tbl_reply  add constraint fk_reply_board  
foreign key (tno)  references  tickets (tno);

select * from tbl_reply;

select tno,rno,reply from tbl_reply order by tno, rno;

insert into tbl_reply(rno,tno,reply,replyer) 
values(seq_reply.nextval,1,'I have a problem'||seq_reply.currval,'redRoadbronze'||seq_reply.currval);