select
    num_of_item,
    round(count(1) / 100) * 100 as ct
from
    ecommerce.orders o
where
    date(o.created_at) >= '2022-01-01'
    and status in ('cancelled', 'returned')
group by
    1
order by
    1