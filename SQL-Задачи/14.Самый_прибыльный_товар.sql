select p.product_name, sum(o.unit_price * o.quantity * (1-o.discount)) 
from products p
join order_details o on o.product_id = p.product_id
group by p.product_name
order by sum(o.unit_price * o.quantity * (1-o.discount)) desc 
limit 1
