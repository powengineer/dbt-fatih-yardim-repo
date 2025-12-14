with 

source as (

    select * from {{ source('raw', 'raw_gz_ship') }}

),

renamed as (

    select
        orders_id,
        --shipping_fee,
        --shipping_fee_1,
        shipping_fee
        WHERE shipping_fee IS DISTINCT FROM shipping_fee_1,
        logcost,
        SAFE_CAST(ship_cost AS FLOAT64) AS ship_cost1
    from source

)

select * from renamed