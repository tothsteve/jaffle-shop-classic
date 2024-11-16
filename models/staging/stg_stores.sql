with source as (

    select * from {{ source('jaffle_shop', 'br_products', include_database = False) }}

),

dbt_stores as (

    select
        *
    from br_products

)

select * from dbt_stores
