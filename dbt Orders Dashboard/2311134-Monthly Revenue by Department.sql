select 
    order_created_at,
    round(sum(order_total_mens)) as mens
    round(sum(order_total_mens)) as revenue
from dbt.orders 
group by 1 
order by 1