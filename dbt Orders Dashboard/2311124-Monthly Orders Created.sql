select 
    order_created_month,
    count()
from dbt.orders 
limit 10