
SELECT * FROM trans;

BEGIN TRANSACTION;
    INSERT INTO trans SELECT 3 , 'Trans 3';

    INSERT INTO trans SELECT 4 , 'Trans 4';

COMMIT;

SELECT * FROM trans;