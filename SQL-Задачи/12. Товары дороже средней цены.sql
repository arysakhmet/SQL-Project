select p.unit_price from products p
where p.unit_price > (
	select avg(unit_price ) from products 
)
