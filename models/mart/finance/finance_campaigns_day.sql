select
    date_date AS date
    ,operational_margin-ads_cost AS ads_margin
    ,average_basket
    ,operational_margin
    ,ads_cost
    ,impression
    ,click
    ,quantity
    ,revenue
    ,purchase_cost
    ,margin
    ,shipping_fee
    ,logcost
    ,ship_cost

    
FROM
    {{ref('int_campaigns_day')}} AS campaigns

LEFT JOIN
    {{ref('finance_days')}} AS finance
USING (date_date)