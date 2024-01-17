# Write your MySQL query statement below

select product_name, unit from(
select p.product_id,product_name, order_date, sum(unit) as unit
from products p
join orders o
on p.product_id=o.product_id
where order_date between '2020-02-01' and '2020-02-28'
group by product_id) derived_table
where unit>=100



