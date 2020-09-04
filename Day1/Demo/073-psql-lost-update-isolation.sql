-- Now I want to delete all items with a munber of hits = 10 with isolation level repeatble read
BEGIN TRANSACTION ISOLATION LEVEL Repeatable Read; 
DELETE FROM items WHERE hits = 10;
