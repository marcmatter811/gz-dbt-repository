select
    campaings.*
    ,finance.*
FROM
    {{ref('int_campaigns_days')}} AS campaigns

LEFT JOIN
    {{ref('finance_days')}} AS finance
USING (date_date)
