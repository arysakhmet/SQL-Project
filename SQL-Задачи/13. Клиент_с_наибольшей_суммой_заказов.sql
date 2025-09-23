select c.contact_name, sum(o.unit_price * o.quantity * (1-o.discount)) from customers c
join orders od on od.customer_id = c.customer_id
join order_details o on o.order_id = od.order_id
group by c.contact_name
order by sum(o.unit_price * o.quantity * (1-o.discount)) desc
limit 1
