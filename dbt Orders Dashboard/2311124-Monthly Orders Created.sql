select 
    order_created_month,
    count(1)
from dbt.orders 
limit 10