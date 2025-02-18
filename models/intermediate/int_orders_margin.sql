SELECT
    date_date,
    orders_id,
    ROUND(SUM(quantity),2) AS quantities,
    ROUND(SUM(revenue),2) AS revenues,
    ROUND(SUM(purchase_cost),2) AS purchase_total,
    ROUND(SUM(margin),2) AS total_margin
    FROM 
        {{ ref('int_sales_margin') }}
    GROUP BY orders_id,date_date

