CREATE TABLE trans (
    id INT , 
    comment VARCHAR(50),
    CONSTRAINT PK_trans_id PRIMARY KEY (id)
);

GO
-- implicit

INSERT INTO trans SELECT 1 , 'Trans 1';

GO
-- explicit 

BEGIN TRANSACTION 
 INSERT INTO trans SELECT 2 , 'Trans 2';
COMMIT;

GO 

SELECT * FROM trans;
