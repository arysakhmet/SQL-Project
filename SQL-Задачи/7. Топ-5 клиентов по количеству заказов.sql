select count(o.order_id) ,c.contact_name from customers c
join orders o on o.customer_id = c.customer_id
group by c.contact_name
order by count(o.order_id) desc
limit 5