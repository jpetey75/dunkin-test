select 
    order_created_month,
    round(sum(order_total_mens)) as mens,
    round(sum(order_total_womens)) as womens
from dbt.orders 
where order_status in ({{order_status}})
group by 1 
order by 1 


select order_status from dbt.orders group by 1 


Shipped,
Complete,
Returned,
Cancelled,Processing