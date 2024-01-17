# Write your MySQL query statement below
select signups.user_id, round(sum(case when confirmations.action='confirmed' then 1 else 0 end)/count(*),2) as confirmation_rate
from confirmations
right join signups
on signups.user_id=confirmations.user_id
group by user_id
order by confirmation_rate
