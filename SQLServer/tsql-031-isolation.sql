
BEGIN TRANSACTION;
 UPDATE trans
 set comment = 'ok'
 where id = 1;

 COMMIT