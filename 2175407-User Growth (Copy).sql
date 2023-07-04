select date(users.created_at), count(user_id) as users 
from ecommerce.users
group by 1 
order by 1 
limit 100