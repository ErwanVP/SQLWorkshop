
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ; 

SELECT * FROM items;

UPDATE items SET hits = hits + 1;

COMMIT;




