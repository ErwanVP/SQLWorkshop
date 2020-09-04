-- not I will start a transaction
BEGIN TRANSACTION;
 UPDATE carts
 set name = 'cart Dirty Read'
 where id = 1;

-- run select 1
ROLLBACK
