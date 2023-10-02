select 
    order_created_month,
    count(1) as orders,
    round(sum(order_total)) as revenue
from dbt.orders 
where order_status in ({{order_status}})
group by 1 
order by 1