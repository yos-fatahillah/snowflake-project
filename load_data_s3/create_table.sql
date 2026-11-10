---> confirm the empty Menu table exists
SELECT * FROM menu;-------------------------------------------------------------------------------------------
    -- Step 2: With context in place, let's now create a Table
        -- CREATE TABLE: https://docs.snowflake.com/en/sql-reference/sql/create-table -- not necessary
-----------------------------------------------------------------------------------------

---> create the Raw Menu Table
CREATE OR REPLACE TABLE MENU
(
    menu_id NUMBER(19,0),
    menu_type_id NUMBER(38,0),
    menu_type VARCHAR(16777216),
    truck_brand_name VARCHAR(16777216),
    menu_item_id NUMBER(38,0),
    menu_item_name VARCHAR(16777216),
    item_category VARCHAR(16777216),
    item_subcategory VARCHAR(16777216),
    cost_of_goods_usd NUMBER(38,4),
    sale_price_usd NUMBER(38,4),
    menu_item_health_metrics_obj VARIANT
);

---> confirm the empty Menu table exists
SELECT * FROM menu;
