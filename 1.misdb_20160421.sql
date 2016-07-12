create database misdb;
use misdb;
Database changed
create table user (name varchar(20),password varchar(20));
insert into user value('wangkang','123456');
select * from user;

mysql> show databases;
mysql> use misdb;
mysql> show tables;
mysql> select * from user;

create table customer(
   cid int(10) not null auto_increment,
   start_date date not null,
   company varchar(50) default null,
   cost float(10,2) default 0,
   legal_representative varchar(20) not null,
   office_staff varchar(20) default null,
   detailed_address varchar(200) default null,
   office_telephone varchar(50) default null,
   cellphone varchar(50) default null,
   qq varchar(50) default null,
   micromsg varchar(50) default null,
   introduction varchar(500) default null,
   cooperation_project varchar(400) default null,
   possible_business varchar(400) default null,
   client_evaluation varchar(300) default null,
   comment varchar(400),
   primary key(cid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into customer(start_date,company,cost,legal_representative,office_staff,detailed_address,office_telephone,cellphone,qq,micromsg,introduction,cooperation_project,possible_business,client_evaluation,comment) values('2016-04-12','company1',80,'wang','kang','detailed address','0915-3099403','15029345605','371189005','ldldkk','��','������Ʒ','','��','��');
select count(*) from customer;

alter table user add uid int(10) not null;
delete from user where 1=1;
insert into user(uid,name,password) values (1,'wang','123456');
insert into user(uid,name,password) values (2,'wangkang','123');
alter table user add primary key(uid);
alter table user modify uid int(10) auto_increment;
insert into user(name,password) values ('kang','123');

query self score list----------------------------------------------------
alter table user add real_name varchar(20) default null;
update user set real_name="����1" where name="wang";
update user set real_name="����2" where name="wangkang";
update user set real_name="����3" where name="kang";

create table department(
   did int(10) not null auto_increment,
   department_name varchar(50) not null,
   primary key(did)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into department values(1,"�´�ý��ҵ��");
insert into department values(2,"�Ҿ���ҵ��");
insert into department values(3,"��Ӫ����");
insert into department values(4,"�Ƽ���ҵ��");

create table staff_score(
   sid int(10) not null auto_increment,
   department_id int(10) not null,
   name_id int(10) not null,
   occur_time date not null,
   score float(10,2) default 0,
   category varchar(50) default null,
   event varchar(200) not null,
   who_fill_paper_id int(10) not null,
   comment varchar(400),
   operator_id int(10) not null,
   primary key(sid),
   constraint fk_id_1 foreign key(department_id) references department(did),
   constraint fk_id_2 foreign key(name_id) references user(uid),
   constraint fk_id_3 foreign key(who_fill_paper_id) references user(uid),
   constraint fk_id_4 foreign key(operator_id) references user(uid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into staff_score values(1,1,1,'2016-04-15',30,'category1','��ɨ����',1,'��',1);
insert into staff_score values(2,2,2,'2016-04-15',15,'category2','��ɨ����',2,'��',2);
insert into staff_score values(3,3,3,'2016-04-15',50,'category3','��ɨ����',3,'��',3);

permission manage---------------------------------------------------------
create table permission(
   pid int(10) not null auto_increment,
   pmn_name varchar(20) not null,
   c boolean default false,
   r boolean default false,
   u boolean default false,
   d boolean default false,
   primary key(pid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into permission values(1,"administrator",true,true,true,true);
insert into permission values(2,"normal",false,true,false,false);

alter table user add pid int(10) not null;
update user set pid=2;
update user set pid=1 where name="wangkang";
alter table user add constraint fk_pmn foreign key(pid) references permission(pid);
add department and area in customerlist-----------------------------------
delete from customer where 1=1;
alter table customer add depid int(10) not null;
alter table customer add area varchar(20) not null;
alter table customer add constraint fk_dep foreign key(depid) references department(did);


