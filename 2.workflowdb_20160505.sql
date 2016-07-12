create table task(
   tid int(10) not null auto_increment,
   date varchar(50) not null,
   reason varchar(200) not null,
   score_class varchar(10) not null,
   value int(10) not null,
   primary key(tid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table notice_people(
   nid int(10) not null auto_increment,
   task_id int(10) not null,
   user_id int(10) not null,
   status boolean not null default false, 
   primary key(nid),
   constraint fk_npid_1 foreign key(task_id) references task(tid),
   constraint fk_npid_2 foreign key(user_id) references user(uid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table task add status int(10) default 0 not null;

create table operate(
   oid int(10) not null auto_increment,
   task_id int(10) not null,
   user_id int(10) not null,
   opt int(10) not null,
   opinion varchar(200) default null,
   primary key(oid),
   constraint fk_optid_1 foreign key(task_id) references task(tid),
   constraint fk_optid_2 foreign key(user_id) references user(uid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table operate add date varchar(50);
