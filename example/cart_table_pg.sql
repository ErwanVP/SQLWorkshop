CREATE TABLE cart (
    cart_id int PRIMARY KEY, 
    user_id int NOT NULL,
    name varchar(50) NOT NULL, 
    created_at TIMESTAMPZ,
    updated_at TIMESTAMPZ
);

CREATE TABLE cart_item (
    cart_id int, 
    cart_item int,
    seller_id int NOT NULL,
    article_id int NOT NULL,  
    article_name varchar(50), 
    price int, 
    created_at TIMESTAMPZ,
    updated_at TIMESTAMPZ,
    CONSTRAINT pk_cart_item PRIMARY KEY (cart_id,cart_item),
    FOREIGN KEY (cart_id) REFERENCES cart (cart_id)
);

/* go on PG admin -> bug on Azurdata studio */ 
  SELECT *
    FROM pg_indexes