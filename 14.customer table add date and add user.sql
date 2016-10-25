use misdb;
alter table customer add add_date date default null;
alter table customer add add_user int(10) default null;
alter table customer add constraint fk_userid foreign key(add_user) references user(uid);
select * from customer where cid=1;