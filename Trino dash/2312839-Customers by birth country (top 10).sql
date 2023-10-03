select 
    c_birth_country,
    count(1) as customers 

from sf1.customer c 
    inner join sf1.date_dim dd 
        on dd.d_date_sk = c.c_first_sales_date_sk 
        
where c_birth_country is not null 

group by 1 
order by 2 desc 
limit 10