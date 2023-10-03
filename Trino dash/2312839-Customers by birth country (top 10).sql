select 
    c_birth_country,
    count(1) as customers 

from sf1.customer c 
    inner join sf1.date_dim dd 
where c_birth_country is not null 

group by 1 
order by 2 desc 
limit 10