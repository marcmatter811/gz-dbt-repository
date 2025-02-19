select
    campaigns.*
    ,ROUND(operational_margin-ads_cost,2) AS ads_margin
    ,finance.*
    
FROM
    {{ref('int_campaigns_day')}} AS campaigns

LEFT JOIN
    {{ref('finance_days')}} AS finance
USING (date_date)