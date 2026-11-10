/*--
Tasty Bytes is a fictitious, global food truck network, that is on a mission to serve unique food options with high
quality items in a safe, convenient and cost effective way. In order to drive forward on their mission, Tasty Bytes
is beginning to leverage the Snowflake Data Cloud.

Within this Worksheet, we will walk through the end to end processds required to load a CSV file containing Menu specific data
that is currently hosted in Blob Storage.
--*/

-------------------------------------------------------------------------------------------
    -- Step 1: To start, let's set the Role and Warehouse context
        -- USE ROLE: https://docs.snowflake.com/en/sql-reference/sql/use-role
        -- USE WAREHOUSE: https://docs.snowflake.com/en/sql-reference/sql/use-warehouse
-------------------------------------------------------------------------------------------

/*--
    - To run a single query, place your cursor in the query editor and select the Run button (⌘-Return).
    - To run the entire worksheet, select 'Run All' from the dropdown next to the Run button (⌘-Shift-Return).
--*/

---> set the Role
USE ROLE SNOWFLAKE_LEARNING_ROLE;

---> set the Warehouse
USE WAREHOUSE SNOWFLAKE_LEARNING_WH;

---> set the Database
USE DATABASE SNOWFLAKE_LEARNING_DB;

---> set the Schema
SET schema_name = CONCAT(current_user(), '_LOAD_SAMPLE_DATA_FROM_S3');
CREATE SCHEMA IF NOT EXISTS IDENTIFIER($schema_name);
USE SCHEMA IDENTIFIER($schema_name);

