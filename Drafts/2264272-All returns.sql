select 
    count(distinct oi.id) as items_returned
    oi.returned_at,
    cast(round(oi.sale_price, 2) as int) as returned_amount,

from ecommerce.order_items oi 

where oi.returned_at is not null

group by returned_date

order by returned_date;