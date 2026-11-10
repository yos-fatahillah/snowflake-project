-------------------------------------------------------------------------------------------
    -- Step 5: Query the Menu table
        -- SELECT: https://docs.snowflake.com/en/sql-reference/sql/select
        -- TOP <n>: https://docs.snowflake.com/en/sql-reference/constructs/top_n
        -- FLATTEN: https://docs.snowflake.com/en/sql-reference/functions/flatten
-------------------------------------------------------------------------------------------

---> how many rows are in the table?
SELECT COUNT(*) AS row_count FROM menu;

---> what do the top 10 rows look like?
SELECT TOP 10 * FROM menu;

---> what menu items does the Freezing Point brand sell?
SELECT
   menu_item_name
FROM menu
WHERE truck_brand_name = 'Freezing Point';

---> what is the profit on Mango Sticky Rice?
SELECT
   menu_item_name,
   (sale_price_usd - cost_of_goods_usd) AS profit_usd
FROM menu
WHERE TRUE
AND truck_brand_name = 'Freezing Point'
AND menu_item_name = 'Mango Sticky Rice';

---> to finish, let's extract the Mango Sticky Rice ingredients from the semi-structured column
SELECT
    m.menu_item_name,
    obj.value:"ingredients"::ARRAY AS ingredients
FROM menu m,
    LATERAL FLATTEN (input => m.menu_item_health_metrics_obj:menu_item_health_metrics) obj
WHERE TRUE
AND truck_brand_name = 'Freezing Point'
AND menu_item_name = 'Mango Sticky Rice';
