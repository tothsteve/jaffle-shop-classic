with source as (

    select * from {{ source('airbnb', 'br_store') }}

),

dbt_stores as (

    select
        *
    from stores

)

select * from dbt_stores
