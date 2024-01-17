# Write your MySQL query statement below
select sales.product_id, min(quantity)as quantity,min(year)as first_year,price
from sales
join product
on sales.product_id=product.product_id
group by product_id
