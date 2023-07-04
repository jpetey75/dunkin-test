select date(users.created_at), count(user_id)
from ecommerce.users
limit 100