/* 
This query was last updated by Jake on April 12 2023
This is a test update via Github PR
*/ 

select 
    status, 
    count(1) ct

from ecommerce.orders o

where date(created_at) >= '2022-01-01'
    and status in ({{status}})

group by 1
