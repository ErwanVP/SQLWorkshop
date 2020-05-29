insert into trans
select 100 , 'OK';

insert into trans
select 110 , 'ok';


SELECT * from trans
WHERE comment = 'ok';