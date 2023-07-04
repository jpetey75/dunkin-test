/* 
This query was last updated by Jake on July 4April 12 2023
*/ 

select 
    status, 
    count(1) ct

from ecommerce.orders o

where date(created_at) >= '2022-01-01'
    and status in ({{status}})

group by 1