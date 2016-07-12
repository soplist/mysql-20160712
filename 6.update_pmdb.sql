alter table pm_table add simple boolean default false;
alter table pm_table add item_11 int(10) default 0;

select * from pm_task left join pm_table on pm_task.pid = pm_table.tid where pm_task.uid=pm_table.uid and type=5;


update user set did=3 where name='wangkang';
update user set did=3 where name='chenxunan';
update user set did=3 where name='xieandi';
update user set did=3 where name='dongguiqi';
update user set did=3 where name='quxiaoxia';
update user set did=3 where name='huangshuojie';
update user set did=3 where name='chenxiaofang';
update user set did=3 where name='nieyun';
update user set did=3 where name='fenghaixia';
update user set did=2 where name='chenfang';
update user set did=2 where name='wangfei';
update user set did=2 where name='liuhongbo';
update user set did=2 where name='wangli';
update user set did=4 where name='wangbeijun';
update user set did=4 where name='wangdelin';
update user set did=4 where name='wangbenjun';
update user set did=4 where name='luona';
update user set did=4 where name='fanzhengwei';
update user set did=4 where name='licaihong';
update user set did=4 where name='guoguang';
update user set did=4 where name='dengyuying';
update user set did=4 where name='koushasha';

select count(*) from user where did=2 or did =4;
