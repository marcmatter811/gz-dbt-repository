SELECT
    date_date
    ,ads_cost
    ,impression
    ,click
 FROM {{ref('int_campaigns_days')}}
 LEFT JOIN {{ref('finance_days')}}
 USING (date_date)
