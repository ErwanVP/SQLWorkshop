-- I try to select the data on the table 
SELECT * 
FROM trans

-- I try to update the data on the table where the ID =3
UPDATE trans
set comment = 'update'
where id = 3;

SELECT * from trans;