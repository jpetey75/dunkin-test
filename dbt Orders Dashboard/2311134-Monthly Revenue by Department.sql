select 
    order_created_creaat,
    round(sum(order_total_mens)) as mens,
    round(sum(order_total_womens)) as womens
from dbt.orders 
group by 1 
order by 1