/*
  Testing file merge
*/

select 
    date(o.created_at) as created_date,
    cast(sum(oi.sale_price) as integer) as total,
    count(distinct o.order_id) as orders

from ecommerce.order_items oi

    inner join ecommerce.orders o 
        on o.order_id = oi.order_id

where date(o.created_at) >= '2022-01-01'
    and o.status in ({{status}})

group by 1 
order by 1
