select a.real_name,a.sid,j.uid,j.jid from (select u.real_name,s.sid from user as
 u left join setting as s on u.pmset=s.sid) as a left join joinin as j on a.sid=j
.sid;