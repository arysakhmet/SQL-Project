select count(o.order_id), c.contact_name from orders o
join customers c on c.customer_id = o.customer_id 
group by c.contact_name