select count(o.order_id),s.company_name from orders o
join shippers s on s.shipper_id = o.ship_via
group by s.company_name