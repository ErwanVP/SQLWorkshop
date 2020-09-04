SET TRANSACTION ISOLATION LEVEL SERIALIZABLE

Begin Tran
Select * from carts where id between 1 and 4

-- Do some work
Waitfor Delay '00:00:10'

Select * from carts where id between 1 and 4

Commit Transaction