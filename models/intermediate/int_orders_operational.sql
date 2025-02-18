SELECT
    date_date,
    orders_id,
    quantities,
    revenues,
    purchase_total,
    total_margin,
    ROUND(total_margin + shipping_fee - logcost - shipcost,2) AS operational_margin
    FROM 
        {{ ref('int_orders_margin') }}
    LEFT JOIN 
        {{ ref('stg_raw__ship') }}
        USING (orders_id)

    