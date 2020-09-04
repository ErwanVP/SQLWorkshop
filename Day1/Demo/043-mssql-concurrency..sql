
-- init table
CREATE TABLE trans (
    id INT , 
    comment VARCHAR(50),
    CONSTRAINT PK_trans_id PRIMARY KEY (id)
);

GO
 -- insert one row
INSERT INTO trans SELECT 1 , 'Trans 1';

GO


BEGIN TRANSACTION;

    -- I try to update the data on the table where the ID =1
    UPDATE trans
    set comment = 'Hello'
    where id = 1;
    
    -- Start other transaction

 COMMIT;