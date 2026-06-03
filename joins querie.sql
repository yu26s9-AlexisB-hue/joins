-- Joins
use northwind;

/*

select products.productID, products.ProductName, products.UnitPrice, Categories.categoryName
from products
join categories on products.CategoryID = categories.CategoryID
order by categoryName, productName;

*/

/*

select products.productId, products.ProductName,
 products.unitprice,suppliers.CompanyName
 from products
 join suppliers on products.supplierID = suppliers.SupplierID
 where UnitPrice > 75
 order by ProductName;
 
 */
 
 /*
 
 select products.ProductID, products.ProductName,
 products.unitPrice, categories.CategoryName, suppliers.CompanyName
 from products
 join categories on products.CategoryID = categories.CategoryID
 join suppliers on products.SupplierID = suppliers.SupplierID
 order by productName;
 
 */
 
 select products.productName, categories.categoryName
 from products
 join categories on products.CategoryID = categories.categoryID
 where Products.unitPrice =
 (select max(unitPrice) from products);
 