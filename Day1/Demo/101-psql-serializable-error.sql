
-- this transaction insert the sum of all value for the class 1 and insert this result in the same tale but with class 2
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;  

    SELECT SUM(value) FROM example WHERE class = 1;

    INSERT INTO example
    SELECT 2, 30
    -- run script 2
COMMIT;