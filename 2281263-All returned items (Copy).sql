with all_returns as (
select 
    oi.id as order_item_id,
    oi.product_id,
    oi.order_id,
    oi.user_id,
    oi.sale_price,
    oi.returned_at,
    cast(round(oi.sale_price, 2) as numeric) as returned_amount

from ecommerce.order_items oi 
where oi.returned_at is not null
    and oi.status = 'Returned'
    and oi.returned_at >= '2021-01-01'    
    and oi.returned_at < '2022-01-01'
)

select 
    date(returned_at) as returned_date, 
    count(distinct order_item_id) as items_returend, 
    sum(returned_amount) as total_return_amount 

from all_returns