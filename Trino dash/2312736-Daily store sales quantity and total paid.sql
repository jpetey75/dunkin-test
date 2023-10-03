select 
    dd.d_date,
    sum(ss.ss_quantity) as total_quantity,
    sum(ss.ss_net_paid) as total_paid  

from sf1.store_sales ss 

    inner join sf1.date_dim dd on dd.d_date_sk = ss.ss_sold_date_sk 
        and dd.d_date >= date '{{from_date}}'
        and dd.d_date <= date '{{to_date}}'

group by 1 
order by 1