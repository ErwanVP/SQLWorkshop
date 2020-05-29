use cart
go 

Begin Tran
Declare @quantity int

Select @quantity = quantity
from items where items_id=1

-- Transaction takes 1 seconds
Waitfor Delay '00:00:1'
Set @quantity = @quantity - 2

Update items
Set quantity = @quantity where items_id=1

Print @quantity

Commit Transaction

