insert into trans
select 10 , 'OK';

insert into trans
select 11 , 'ok';


SELECT * from trans
WHERE comment = 'ok';