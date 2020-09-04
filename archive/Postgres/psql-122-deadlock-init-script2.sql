begin; 

    update cart_items
    set price = 1000
    where cart_id = 1 and cart_item = 2

    update cart_items
    set price = 10
    where cart_id = 1 and cart_item = 1

commit ; 