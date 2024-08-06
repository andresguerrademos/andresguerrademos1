with 

source as (

    select * from {{ source('andresguerrademos1', 'sales') }}

),

renamed as (

    select
        sale_id,
        date,
        product_id,
        customer_id,
        quantity_sold

    from source

)

select * from renamed
