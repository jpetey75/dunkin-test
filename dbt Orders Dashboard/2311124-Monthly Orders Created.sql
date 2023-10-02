select 
    order_created_month,
    count(1) as orders,
    sum(order_total) as revenue
from dbt.orders 
group by 1 
order by 1