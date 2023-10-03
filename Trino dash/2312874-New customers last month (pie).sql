with new as (
    select 
        count(1) as new_customers 

    from sf1.customer c 
        
        inner join sf1.date_dim dd 
            on dd.d_date_sk = c.c_first_sales_date_sk 
            and dd.d_date >= date '1998-01-01'
            and dd.d_date < date '1998-02-01'

    where c_birth_country is not null 
), 

total as (

    select 
        count(distinct ss.ss_customer_sk) as total_customers
 
    from sf1.store_sales ss 

        inner join sf1.date_dim dd on dd.d_date_sk = ss.ss_sold_date_sk 
            and dd.d_date >= date '1998-01-01'
            and dd.d_date < date '1998-02-01'

)

select 'New' as label,
    new_customers, 
    total_customers - new_customers as returning_customers 

from total, new