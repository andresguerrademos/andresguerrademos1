with 

source as (

    select * from {{ source('andresguerrademos1', 'customers') }}

),

renamed as (

    select
        customer_id,
        first_name,
        last_name,
        email,
        phone_number,
        join_date

    from source

)

select * from renamed
