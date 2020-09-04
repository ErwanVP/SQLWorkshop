
-- I will create a new able for this example. 
-- You have a table items on this you have the number of hits
CREATE table items ( item_id int,  hits int);

-- I will insert 3 item one with the hits = 8 and the second with the hits = 9 and the last hits = 10
INSERT INTO items
SELECT 1, 6;

INSERT INTO items
SELECT 1, 9; 

INSERT INTO items
SELECT 2, 10;

SELECT * FROM items;

-- I will start a transaction to add one hits on all items
BEGIN TRANSACTION;
    UPDATE items SET hits = hits + 1;
    -- start other trransaction
    
COMMIT;

--Redo the test 
-- I will start a transaction to add one hits on all items
BEGIN TRANSACTION;
    UPDATE items SET hits = hits + 1;
    -- start other trransaction
    
COMMIT;