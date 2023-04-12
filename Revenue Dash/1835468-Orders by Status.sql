select 
    status, 
--    count(1) as ct,
    round(count(1)/100)*100 as ct

from ecommerce.orders o

where date(created_at) >= '2022-01-01'
    and status in ({{status}})

group by 1