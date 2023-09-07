select 
    oi.id as order_item_id,
    oi.returned_at,
    to_double(round(oi.sale_price, 2) as double) as returned_amount

from ecommerce.order_items oi 
where oi.returned_at is not null
    and oi.status = 'Returned'