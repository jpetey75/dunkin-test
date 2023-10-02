select 
    order_created_month,
    count(1) as orders,
    sum()
from dbt.orders 
limit 10