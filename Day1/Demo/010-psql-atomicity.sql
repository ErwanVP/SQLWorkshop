CREATE TABLE trans 
(
    id INT NOT NULL, 
    comment VARCHAR(50),
    CONSTRAINT PK_trans_id PRIMARY KEY (id)
);

SELECT * FROM trans; 

BEGIN TRANSACTION;
    INSERT INTO trans SELECT 3 , 'Trans 3';

    INSERT INTO trans SELECT 4 , 'Trans 4';

ROLLBACK;

SELECT * FROM trans; 

BEGIN TRANSACTION;
    INSERT INTO trans SELECT 3 , 'Trans 3';

    INSERT INTO trans SELECT 4 , 'Trans 4';

COMMIT;


SELECT * FROM trans; 

