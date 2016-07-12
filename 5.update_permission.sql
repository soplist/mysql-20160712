alter table permission add pmsetting boolean default false;
update permission set pmsetting=1 where pid=1;
alter table permission add psetting boolean default false;
insert into permission values(3,"superadmin",true,true,true,true,true,true);
update user set pid=3 where uid=2;

delete from pm_table where 1=1;
delete from pm_task where 1=1;

alter table permission add view_all_pm boolean default false;