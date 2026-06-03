-- Joins
use northwind;

select products.productID, products.ProductName, products.UnitPrice, Categories.categoryName
from products
join categories on products.CategoryID = categories.CategoryID
order by categoryName, productName;