-- The column have to be specified to avoid breaking change. If the shema of the table change

SELECT id, user_id, name, created_at, updated_at
FROM carts
WHERE
id = '236227' ;

