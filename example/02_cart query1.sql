SELECT * FROM carts
WHERE
id = '1' 


GO 

SELECT * FROM carts c
INNER JOIN cart_items ci ON c.id = ci.cart_id 
WHERE 
c.id = '1' 