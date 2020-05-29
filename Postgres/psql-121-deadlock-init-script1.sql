begin; 

    update cart_items
    set price = 1
    where cart_id = 1 and cart_item = 1

    update cart_items
    set price = 20
    where cart_id = 1 and cart_item = 2

commit ; 