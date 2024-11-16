with source as (

    select * from {{ ref('stores') }}

),

dbt_stores as (

    select
        *
    from source

)

select * from dbt_stores
