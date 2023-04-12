select 
    status, 
    count(1) ct,
    ct_rou 

from ecommerce.orders o

where date(created_at) >= '2022-01-01'
    and status in ({{status}})

group by 1