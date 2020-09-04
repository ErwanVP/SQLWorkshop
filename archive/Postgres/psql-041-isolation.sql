
BEGIN TRANSACTION;
 UPDATE trans
 set comment = 'Hello'
 where id = 1;

 COMMIT