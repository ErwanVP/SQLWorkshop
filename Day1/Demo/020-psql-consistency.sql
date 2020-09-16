
SELECT * FROM trans;

BEGIN TRANSACTION;
    INSERT INTO trans SELECT 3 , 'Trans 3';

    INSERT INTO trans SELECT 5 , 'Trans 5';

COMMIT;

SELECT * FROM trans;