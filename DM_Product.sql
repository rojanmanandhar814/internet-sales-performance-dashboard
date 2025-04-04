-- Cleaning Data for the Product 
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS [Product_Code], 
  p.[EnglishProductName] AS [Product Name], 
  ps.EnglishProductCategoryName AS [Product Category], 
  po.EnglishProductSubcategoryName AS [Sub Category], 
  p.[StandardCost] AS [Cost], 
  p.[Color] AS [Product Color], 
  p.[Size] AS [Product Size], 
  p.[ProductLine] AS [Product Line], 
  p.[ModelName] AS [Model Name],
  ISNULL (p.Status, 'Outdated') as [Product Status]
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] AS p 
  LEFT JOIN dbo.DimProductSubcategory AS po ON p.ProductSubcategoryKey = po.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS ps ON po.ProductCategoryKey = ps.ProductCategoryKey 
ORDER BY 
  p.ProductKey ASC;
