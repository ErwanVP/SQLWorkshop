use cart 
go 

CREATE table items ( item_id int,  hits int , quantity int);

INSERT INTO items
SELECT 1, 9, 10; 


INSERT INTO items
SELECT 2, 10 ,10;

BEGIN TRANSACTION
    UPDATE items SET hits = hits + 1;
    -- run second script
COMMIT;