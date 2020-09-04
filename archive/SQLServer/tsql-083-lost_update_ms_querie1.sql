use cart
go 

Select  quantity
from items where items_id=1

Begin Tran
Declare @quantity int

Select @quantity = quantity
from items where items_id=1

-- Transaction takes 10 seconds
Waitfor Delay '00:00:10'
Set @quantity = @quantity - 1

Update items
Set quantity = @quantity where items_id=1

Print @quantity

Commit Transaction
