CREATE TABLE trans 
(
    id INT NOT NULL, 
    comment VARCHAR(50),
    CONSTRAINT PK_trans_id PRIMARY KEY (id)
);

-- implicit

INSERT INTO trans SELECT 1 , 'Trans 1';

-- explicit 

BEGIN TRANSACTION;
 INSERT INTO trans SELECT 2 , 'Trans 2';
COMMIT;

SELECT * FROM trans;

