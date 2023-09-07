with returns as (

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
        and oi.returned_at < '2022-01-01'        
        and oi.returned_at >= '2021-01-01'    
        and oi.status = 'Returned'

)

select 
    date(returns.returned_at) as returned_date,
    sum(returns.returned_amount) as returned_amount,
    count(distinct returns.user_id) as customers

from returns 
group by 1
order by 1