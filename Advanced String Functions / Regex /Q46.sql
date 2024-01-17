# Write your MySQL query statement below

select case when rw='2' then salary else "null" end as SecondHighestSalary
from(
select id,salary, rank()over (order by salary desc)as rw
from employee) derived_table
where rw=2
