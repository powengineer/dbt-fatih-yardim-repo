with 

source as (

    select * from {{ source('raw', 'raw_gz_sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        products_id, --pdt_id
        revenue,
        quantity

    from source

)

select * from renamed