-- This transaction remove one quantity 
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ

Select  quantity
from items where item_id=1

Begin Tran
Declare @quantity int

Select @quantity = quantity
from items where item_id=1

-- Transaction takes 1 seconds
Waitfor Delay '00:00:1'
Set @quantity = @quantity - 1

Update items
Set quantity = @quantity where item_id = 1

Print @quantity

Commit Transaction

Select  quantity
from items where item_id=1
