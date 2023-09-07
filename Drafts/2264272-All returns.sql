select 
    oi.returned_at,
    date(oi.returned_at) as returned_date, 
    sum(cast(round(oi.sale_price, 2) as int)) as returned_amount,
    count(distinct oi.id) as items_returned

from ecommerce.order_items oi 

where oi.returned_at is not null

group by returned_date

order by returned_date;