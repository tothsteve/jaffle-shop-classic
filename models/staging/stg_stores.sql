with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('stores') }}

),

dbt_stores as (

    select
        *
    from source

)

select * from dbt_stores
