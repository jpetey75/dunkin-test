--changed from popsql

select 
    date(users.created_at) as date, 
    count(id) as users 

from ecommerce.users
group by 1 
order by 1 desc