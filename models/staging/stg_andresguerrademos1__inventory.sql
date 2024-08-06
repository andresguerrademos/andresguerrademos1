with 

source as (

    select * from {{ source('andresguerrademos1', 'inventory') }}

),

renamed as (

    select
        product_id,
        last_updated,
        stock_quantity

    from source

)

select * from renamed
