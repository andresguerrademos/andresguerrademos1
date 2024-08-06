with 

source as (

    select * from {{ source('andresguerrademos1', 'products') }}

),

renamed as (

    select
        product_id,
        product_name,
        category,
        price

    from source

)

select * from renamed
