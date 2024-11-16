with source as (

    select * from {{ source('jaffle_shop', 'br_store', include_database = False) }}

),

dbt_stores as (

    select
        *
    from br_store

)

select * from dbt_stores
