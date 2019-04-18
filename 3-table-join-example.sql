SELECT p.Code, p.Description as 'Item Description', i.OrderNumber as 'Order Number', 
i.CustomerName as 'Customer Name', l.Quantity, i.Total as '$, Total'
from product p
	join lineitem l
		on p.id = l.productid
	join invoice i
		on l.invoiceid = i.id;
