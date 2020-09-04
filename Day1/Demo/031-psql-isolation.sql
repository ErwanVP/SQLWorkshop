
BEGIN TRANSACTION;

    -- I try to update the data on the table where the ID =3
    UPDATE trans
    set comment = 'Hello'
    where id = 3;
    
    -- Start other transaction

 COMMIT;