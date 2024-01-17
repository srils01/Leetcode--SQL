# Write your MySQL query statement below
select sum(case when number_of_immediate_scheduled="immediate" then 1 else 0 end)/count(customer_id)*100 as immediate_percentage
from(select customer_id, min(order_date), (case when min(order_date)=customer_pref_delivery_date then "immediate" else "scheduled" end) as number_of_immediate_scheduled
from delivery
group by customer_id) as derived_table
