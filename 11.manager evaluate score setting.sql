create table manager_evaluate_setting(
   mid int(10) not null auto_increment,
   uid int(10) not null,
   item_1 float default 0,
   item_6 float default 0,
   item_12 float default 0,
   item_13 float default 0,
   primary key(mid),
   constraint fk_id_user foreign key(uid) references user(uid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

select uid from user where ismanager=true;

insert into manager_evaluate_setting(uid,item_1,item_6,item_12,item_13) values(6,0,0,0,0);
insert into manager_evaluate_setting(uid,item_1,item_6,item_12,item_13) values(16,0,0,0,0);

alter table manager_evaluate_setting drop column uid; 
alter table manager_evaluate_setting drop foreign key fk_id_user;

alter table user add mesid int(10) not null;
alter table user add constraint fk_mes foreign key(mesid) references manager_evaluate_setting(mid);
update user set mesid=1;

alter table permission add mes boolean default false;
update permission set mes=true where pid=3;