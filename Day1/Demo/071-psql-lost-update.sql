-- Now I want to delete all items with a munber of hits = 10 
DELETE FROM items WHERE hits = 10;

-- What is the result ? 
SELECT * FROM items ;

--We have to see the resul of the select instead of delete
SELECT * FROM items WHERE hits = 10;

