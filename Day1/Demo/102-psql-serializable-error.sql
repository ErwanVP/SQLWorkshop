
-- this transaction you will do the opposite sum of class 2 inserted in class 1
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE; 

    SELECT SUM(value) FROM example WHERE class = 2;

    INSERT iNTO example
    SELECT 1, 300;

COMMIT;
END;