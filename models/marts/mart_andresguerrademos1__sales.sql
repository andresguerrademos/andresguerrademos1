with

sales as (

    select * from {{ ref('stg_andresguerrademos1__sales') }}

)

select * from sales