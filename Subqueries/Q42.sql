# Write your MySQL query statement below

 
select * from(
select e.name as employee_name,e.salary,d.name as department, 
ROW_NUMBER() OVER (PARTITION BY d.name
ORDER BY salary DESC)AS rn
from employee e
left join department d
on e.departmentid=d.id
where d.name="IT" or d.name="sales"
order by d.name,salary desc) derived_table
where rn <=4






