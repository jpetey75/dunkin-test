select date(users.created_at), count(user_id) as users 
from ecommerce.users
group by 1 
order by 1 desc 
limit 100