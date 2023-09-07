select 
    date(oi.returned_at) as returned_date,
    sum(sale_price) as return_amount, 
    count(id) as items_returned
from ecommerce.order_items oi 
group by 1
order by 1;


select 
    oi.returned_at, 
    sum(oi.sale_price) as returned_amount,
    count()

from ecommerce.order_items oi 
where oi.returned_at is not null
group by oi.returned_at
order by oi.returned_at;