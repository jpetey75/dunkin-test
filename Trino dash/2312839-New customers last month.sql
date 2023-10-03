select 
    dd.d_date,
    count(1) as customers 

from sf1.customer c 
    
    inner join sf1.date_dim dd 
        on dd.d_date_sk = c.c_first_sales_date_sk 
        and dd.d_date >= date '1998-02-01'
        and dd.d_date < date '1998-03-01'

where c_birth_country is not null 

group by 1 
order by 1