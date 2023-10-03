with new as (
    select 
        count(1) as new_customers 

    from sf1.customer c 
        
        inner join sf1.date_dim dd 
            on dd.d_date_sk = c.c_first_sales_date_sk 
            and dd.d_date >= date '1998-01-01'
            and dd.d_date < date '1998-03-01'

    where c_birth_country is not null 

    group by 1 
), 

total as (

    select 
        case   
            when dd.d_moy = 1 then 'previous month'
            when dd.d_moy = 2 then 'last month'
            else 'error' end as mth,
        count(distinct ss.ss_customer_sk) as total_customers
 
    from sf1.store_sales ss 

        inner join sf1.date_dim dd on dd.d_date_sk = ss.ss_sold_date_sk 
            and dd.d_date >= date '1998-01-01'
            and dd.d_date < date '1998-03-01'

    group by 1 
)

select 
    total.mth, 
    new_customers, 
    total_customers - new_customers as returning_customers 

from total, new 
where total.mth = new.mth