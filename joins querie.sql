-- Joins
use northwind;

/*

select products.productID, products.ProductName, products.UnitPrice, Categories.categoryName
from products
join categories on products.CategoryID = categories.CategoryID
order by categoryName, productName;

*/

select products.productId, products.ProductName,
 products.unitprice,suppliers.ContactName
 from products
 join suppliers on products.supplierID = suppliers.SupplierID
 where UnitPrice > 75
 order by ProductName;