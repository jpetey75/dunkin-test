select 
    oi.id as order_item_id,
    oi.returned_at,
    conver(round(oi.sale_price, 2) as numeric(6,2)) as returned_amount

from ecommerce.order_items oi 
where oi.returned_at is not null
    and oi.status = 'Returned'