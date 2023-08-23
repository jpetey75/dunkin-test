select 
    date(o.created_at) as created_date,
    cast(sum(oi.sale_price) as integer) as total,
    count(distinct o.order_id) as orders
    sum(o.num_of_item) as it

from ecommerce.order_items oi

    inner join ecommerce.orders o 
        on o.order_id = oi.order_id

where date(o.created_at) >= '2022-01-01'

group by 1 
order by 1