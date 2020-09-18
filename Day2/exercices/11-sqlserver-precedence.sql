SELECT * from carts c
inner join cart_items ci on c.name = ci.article_name

ALTER table cart_items alter column article_name nvarchar(50)

SELECT * from carts c
inner join cart_items ci on c.name = ci.article_name