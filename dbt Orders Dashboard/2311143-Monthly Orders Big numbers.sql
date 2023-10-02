select 
    order_created_month,
    round(count(1),-2) as orders,
    round(sum(order_total),-4) as revenue
from dbt.orders 
where order_status in ({{order_status}})
group by 1 
order by 1 desc
limit 2