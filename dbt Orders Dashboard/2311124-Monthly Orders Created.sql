select 
    order_created_month,
    count(1) as orders,
    
from dbt.orders 
limit 10