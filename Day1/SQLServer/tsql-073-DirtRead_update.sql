USE cart
GO 

BEGIN TRANSACTION;
 UPDATE carts
 set name = 'cart Dirty Read'
 where id = 1;

ROLLBACK
 COMMIT