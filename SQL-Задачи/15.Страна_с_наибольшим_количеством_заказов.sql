select c.country, count(o.order_id) as kolichestvo_zakazov from customers c
join orders o on o.customer_id = c.customer_id
group by c.country
order by kolichestvo_zakazov desc
limit 1
