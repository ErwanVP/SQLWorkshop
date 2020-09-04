-- I will insert 2 rows  one is upper case and the other one in lower case
insert into trans
select 100 , 'OK';

insert into trans
select 110 , 'ok';

-- Now I will get all row with an OK in lower case
SELECT * from trans
WHERE comment = 'ok';