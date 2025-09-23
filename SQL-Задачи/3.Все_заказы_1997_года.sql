select * from orders
where extract(year from order_date) = 1996
