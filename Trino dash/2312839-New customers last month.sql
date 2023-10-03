with new as (
    select 
        dd.d_date,
        count(1) as customers 

    from sf1.customer c 
        
        inner join sf1.date_dim dd 
            on dd.d_date_sk = c.c_first_sales_date_sk 
            and dd.d_date >= date '1998-02-01'
            and dd.d_date < date '1998-03-01'

    where c_birth_country is not null 

    group by 1 
), total as (

    select 
        dd.d_date,
        sum(ss.ss_quantity) as total_quantity,
        sum(ss.ss_net_paid) as total_paid  

    from sf1.store_sales ss 

        inner join sf1.date_dim dd on dd.d_date_sk = ss.ss_sold_date_sk 
            and dd.d_date >= date '1998-02-01'
            and dd.d_date < date '1998-03-01'

    group by 1 
)