with source as (

    select * from {{ source('jaffle_shop', 'v_lh_br_store', include_database = False) }}

),

dbt_stores as (

    select
        *
     from v_lh_br_store
)

select * from dbt_stores
