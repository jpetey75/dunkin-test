select 
    c_birth_country,
    count(1) as customers 

from sf1.customer 
where bir
group by 1 
order by 2 desc