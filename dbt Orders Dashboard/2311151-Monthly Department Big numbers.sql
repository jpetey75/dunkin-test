select 
    order_created_month,
    round(sum(order_total_mens)) as mens,
    round(sum(order_total_womens)) as womens
from dbt.orders 
group by 1 
order by 1 desc  
limit 2