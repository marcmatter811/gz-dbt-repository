SELECT
    date_date,
    orders_id,
    products_id,
    quantity,
    revenue,
    purchase_price*quantity AS purchase_cost,
    revenue-(purchase_price*quantity) AS margin
    FROM 
        {{ ref('stg_raw__sales') }}
    LEFT JOIN 
        {{ ref('stg_raw__product') }}
        ON stg_raw__sales.products_id = stg_raw__product.products_id

