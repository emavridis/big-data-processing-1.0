use tantillian;
 
select * from dimcustomer 
join dimgeography 
on (dimcustomer.GeographyKey = dimgeography.GeographyKey)
join dimreseller on (dimcustomer.GeographyKey = dimreseller.GeographyKey)
join factinternetsales on (dimcustomer.CustomerKey = factinternetsales.CustomerKey);
 
select * from dimproduct 
join factinternetsales on (dimproduct.productKey = factinternetsales.ο»ΏProductKey)
join dimproductsubcategory on (dimproduct.ProductSubcategoryKey = dimproductsubcategory.ProductSubcategoryKey)
join dimproductcategory on (dimproductsubcategory.ProductcategoryKey = dimproductcategory.ProductcategoryKey)