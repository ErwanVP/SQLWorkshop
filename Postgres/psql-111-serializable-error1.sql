BEGIN TRANSACTION ISOLATION LEVEL ; 

    SELECT SUM(value) FROM example WHERE class = 1;

    INSERT iNTO example
    SELECT 2, 30
    -- run script 2
COMMIT;