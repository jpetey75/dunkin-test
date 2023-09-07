select 
    date(oi.returned_at) as returned_date,
    sum(sale_price) as return_amount, 
    count(id) as items_returned
from ecommerce.order_items oi 
group by 1
order by 1;


select 
    date(oi.returned_at) as returned_date, 
    sum(cast(oi.sale_price as inventory_item_id)) as returned_amount,
    count(oi.id) as items_returned

from ecommerce.order_items oi 
where oi.returned_at is not null
group by returned_date
order by returned_date;