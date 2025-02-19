{{ config(materialized='table') }}

SELECT
    date_date,
    COUNT(orders_id) AS nb_transactions,
    ROUND(SUM(revenues),2) AS revenue,
    ROUND(AVG(revenues),2) AS average_basket,
    ROUND(SUM(total_margin),2) AS margin,
    ROUND(SUM(operational_margin),2) AS operational_margin
    FROM 
        {{ ref('int_orders_operational') }}
    GROUP BY date_date
    ORDER BY date_date