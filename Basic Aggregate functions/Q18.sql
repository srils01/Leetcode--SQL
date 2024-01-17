# Write your MySQL query statement below
select r.contest_id,round((count(r.user_id)/3*100),2) as percentage
from register r
join users u
on u.user_id=r.user_id
group by contest_id
order by percentage desc,contest_id
