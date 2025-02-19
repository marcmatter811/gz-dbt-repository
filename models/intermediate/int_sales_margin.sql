SELECT
    date_date,
    orders_id,
    sales.products_id,
    quantity,
    revenue,
    purchase_price*quantity AS purchase_cost,
    revenue-(purchase_price*quantity) AS margin
    FROM 
        {{ ref('stg_raw__sales') }} AS sales
    LEFT JOIN 
        {{ ref('stg_raw__product') }} AS product
        ON sales.products_id = product.products_id

