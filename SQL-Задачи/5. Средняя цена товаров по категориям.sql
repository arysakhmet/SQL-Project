select avg(p.unit_price), c.category_name from products p
join categories c on c.category_id = p.category_id
group by c.category_name