WITH cte AS (
    SELECT * FROM bike_share_yr_0
    UNION ALL
    SELECT * FROM bike_share_yr_1
)
SELECT 
    dteday,
    season,
    a.yr,
    weekday,
    hr,
    rider_type,
    riders,
    price,
    COGS,
    RIDERS * PRICE AS REVENUE,
    RIDERS * PRICE - COGS AS PROFIT
FROM cte a
LEFT JOIN cost_table b
    ON a.yr = b.yr;

