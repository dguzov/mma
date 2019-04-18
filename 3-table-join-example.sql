SELECT p.Code, p.Description, i.OrderNumber, i.CustomerName, l.Quantity, i.Total
from product p
	join lineitem l
		on p.id = l.productid
	join invoice i
		on l.invoiceid = i.id
