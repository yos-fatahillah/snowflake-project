-------------------------------------------------------------------------------------------
    -- Step 4: Now let's Load the Menu CSV file from the Stage
        -- COPY INTO <table>: https://docs.snowflake.com/en/sql-reference/sql/copy-into-table
-------------------------------------------------------------------------------------------

---> copy the Menu file into the Menu table
COPY INTO menu
FROM @blob_stage/raw_pos/menu/;
