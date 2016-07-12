alter table user add did int(10) not null default 3;
alter table user add constraint fk_dptm foreign key(did) references department(did);

create table setting(
sid int (10) not null auto_increment,
setting_time date not null,
self_evaluate int(10),
dept_evaluate int(10),
manager_evaluate int(10),
company_evaluate int(10),
colleagues_evaluate int(10),
primary key(sid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table user add setting int(10) not null;
alter table user change setting pmset int(10);
insert into setting values(1,'2016-06-14',10,25,30,25,10);
update user set pmset=1 where 1=1;
alter table user add constraint fk_setting foreign key(pmset) references setting(sid);
alter table user change pmset pmset int(10) not null;

create table joinin(
jid int(10) not null auto_increment,
type int(10) not null,
uid int(10) not null,
primary key(jid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
alter table joinin add constraint fk_join foreign key(uid) references user(uid);
alter table joinin add sid int(10) not null;
alter table joinin add constraint fk_join_setting foreign key(sid) references setting(sid);

alter table user add ismanager boolean default false;
update user set ismanager=true where name='xieandi' or name='dongguiqi';
alter table user add isboss boolean default false;
update user set isboss=true where name='chenxunan';
delete from notice_people where user_id=4;
delete from user where uid=4;

insert into joinin(type,uid,sid) values(1,6,21);
delete from joinin where jid=2;
insert into joinin(type,uid,sid) values(2,8,20);
insert into joinin(type,uid,sid) values(2,9,20);
insert into joinin(type,uid,sid) values(3,6,20);
insert into joinin(type,uid,sid) values(3,6,21);
insert into joinin(type,uid,sid) values(3,15,14);
insert into joinin(type,uid,sid) values(3,16,14);
insert into joinin(type,uid,sid) values(3,17,14);
insert into joinin(type,uid,sid) values(5,15,14);
insert into joinin(type,uid,sid) values(5,16,14);
insert into joinin(type,uid,sid) values(5,17,14);
insert into joinin(type,uid,sid) values(3,16,18);
insert into joinin(type,uid,sid) values(2,8,24);
insert into joinin(type,uid,sid) values(2,9,24);

create table pm_task(
pid int(10) not null auto_increment,
sid int(10) not null,
primary key(pid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
alter table pm_task add constraint fk_pm_task foreign key(sid) references setting(sid);


create table pm_table(
pid int(10) not null auto_increment,
uid int(10) not null,
tid int(10) not null,
statu boolean default false,
type int(10) not null,
finish_time date,
primary key(pid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
alter table pm_table add constraint fk_user_id foreign key(uid) references user(uid);
alter table pm_table add constraint fk_task_id foreign key(tid) references pm_task(pid);

alter table pm_task add statu boolean default false;
insert into pm_table(uid,tid,statu,type) values(6,3,false,1);
delete from joinin where jid=39 or jid=40;
delete from pm_table where 1=1;

alter table pm_task add uid int(10) not null;
update pm_task set uid=1 where 1=1;
alter table pm_task add constraint fk_uid foreign key(uid) references user(uid);

delete from pm_table where 1=1;
delete from joinin where 1=1;
delete from pm_task where 1=1;

alter table pm_table add item_1 int(10) default 0;
alter table pm_table add item_2 int(10) default 0;
alter table pm_table add item_3 int(10) default 0;
alter table pm_table add item_4 int(10) default 0;
alter table pm_table add item_5 int(10) default 0;
alter table pm_table add item_6 int(10) default 0;
alter table pm_table add item_7 int(10) default 0;
alter table pm_table add item_8 int(10) default 0;
alter table pm_table add item_9 int(10) default 0;
alter table pm_table add item_10 int(10) default 0;