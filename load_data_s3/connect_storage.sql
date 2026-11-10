-------------------------------------------------------------------------------------------
    -- Step 3: To connect to the Blob Storage, let's create a Stage
        -- Creating an S3 Stage: https://docs.snowflake.com/en/user-guide/data-load-s3-create-stage
-------------------------------------------------------------------------------------------

CREATE OR REPLACE STAGE blob_stage
url = 's3://sfquickstarts/tastybytes/'
file_format = (type = csv);

---> query the Stage to find the Menu CSV file
LIST @blob_stage/raw_pos/menu/;
