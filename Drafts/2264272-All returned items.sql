select 
    oi.order_id,
    oi.product_id,
    oi.id as order_item_id,
    oi.returned_at,
    cast(round(oi.sale_price, 2) as numeric) as returned_amount

from ecommerce.order_items oi 
where oi.returned_at is not null
    and oi.status = 'Returned'