select 
    order_created_at,
    count(1) as orders,
    round(sum(total)) as revenue
from dbt.orders 
group by 1 
order by 1