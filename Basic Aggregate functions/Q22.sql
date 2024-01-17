# Write your MySQL query statement below
select round(count(case when logged_in_same_day=1 then 1 end)/count(player_id),2)as fraction
from (select player_id,datediff(max(event_date),min(event_date)) as logged_in_same_day
from activity
group by player_id
)as derived_table
