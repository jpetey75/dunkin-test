select 
    order_created_month,
    count(1) as orders,
    sum(order_total)
from dbt.orders 
limit 10