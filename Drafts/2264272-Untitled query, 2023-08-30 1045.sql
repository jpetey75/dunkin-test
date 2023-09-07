select 
    date(oi.returned_at) as returned_date,
    sum(sale_price) as return_amount, 
    count(id) as items_returned
from ecommerce.order_items oi 
group by 1
order by 1;