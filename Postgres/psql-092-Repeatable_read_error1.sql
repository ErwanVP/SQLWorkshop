BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED; 

SELECT * FROM items;

UPDATE items SET hits = hits + 1;

COMMIT;