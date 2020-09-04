-- I set the isolation level to read uncommitted

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
GO 

-- I select the data
SELECT * FROM carts
WHERE id= 1;

GO 
-- Now I set the e isolation level to read uncommitted
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
GO 

-- I select the data
SELECT * FROM carts
WHERE id= 1;