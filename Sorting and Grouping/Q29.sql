# Write your MySQL query statement below
Select customer_id
 From customer c
  Group by customer_id
   having count(distinct product_key)=(SELECT count(distinct product_key) 
    FROM product)
