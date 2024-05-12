 --1. Select all
 select *
 from [fashion_products csv]

--2. Retrieve data with Brand as gucci and price is greater 40 or size is xl .
SELECT *
FROM [fashion_products csv]
WHERE Brand = 'Gucci'
AND Price > 40  
OR Size = 'xl';

--3. Retrieve all fashion product whose Brand and Category starts with the letter 'Z' and 'k' respectively.
SELECT *
FROM [fashion_products csv]
WHERE Category LIKE 'k%'
AND Brand LIKE 'Z%';

--4. Select all fashion product name as sweater with price greater than 45.
SELECT *
FROM [fashion_products csv]
WHERE Price > '45'
AND Product_Name = 'sweater';
 
--5. Show Universities who's population is above 2000 or those with more than 30 teaching and list them by ranking in descending order.
SELECT *
FROM [fashion_products csv]
WHERE User_ID > 40
OR price > 30
ORDER BY Rating DESC;

--6. Select all colour in the file
select color
from [fashion_products csv]
group by Color;

--7. Average rating
select AVG(Rating) as avg_sales
from [fashion_products csv]

--8. Get all fashion product with user ID less than 19.
   SELECT *
   FROM [fashion_products csv]
   WHERE User_ID < 19;

--9. Retrieve Fashion product with product id less than 15 and size as 'M' or 'L'.
SELECT *
FROM [fashion_products csv]
WHERE Product_ID< '15'
AND Size = 'M'
OR Size = 'L';

--10. Get fashion product with either user id less than 45 and price greater than 50 OR product id greater than 45 and color is white.
SELECT *
FROM [fashion_products csv]
WHERE User_ID < 45 
AND Price > 50
OR Product_ID > 45
AND Color ='white';

--11. Get fashion product color ranking of green or blue, category mens or women fashion, rating score between 2.8-4.0 and sort them by size in ascending order.

SELECT *
FROM [fashion_products csv]
WHERE Color = 'green' 
OR color = 'blue'
AND Category ='mens fashion' 
OR Category = 'womens fashion'
AND Rating = 2.8 - 4.0
ORDER BY Size ASC;

--12. Get fashion product where either the rating is greater than 1.5 and price is "50", or user id is 18 and the brand is 'h&m' or 'adidas' with user id greater than 20 and the product id less than 20, or the product name by 'dress' or 'shoes' and the size is 's' or 'm' and its brand in a descending order.
SELECT *
FROM [fashion_products csv]
WHERE (Rating > 1.5
AND Price = '50')
OR  (User_ID = '18' 
AND Brand ='h&m'
OR Brand = 'adidas')
AND (User_ID> 20 AND Product_ID < 20)
OR (Product_Name = 'dress' OR Product_Name = 'shoes')
AND (Size = 's' OR Size = 'm')
ORDER BY Brand DESC;

--13. Show brand with at most 30 user id and an average price less than 90.
SELECT Brand
FROM [fashion_products csv] AS A
GROUP BY Brand
HAVING (COUNT(User_ID) >= 30 AND 
AVG (Price) < 90 );


--14. show product name with user id above 45 and rating greater than 2, grouped by product name and only show name that have at least two meeting this standard, Sort the product name in ascending order.
SELECT Product_Name
FROM [fashion_products csv]
WHERE User_ID > 45 AND Rating > 2.0
GROUP BY Product_Name
HAVING COUNT (*) >=2
ORDER BY Product_Name ASC;

--15. List all fashion brand with price starting with '50'.
SELECT *
FROM [fashion_products csv]
WHERE Price LIKE '50' 
AND Brand = 'nike';


--16.
SELECT *
FROM [fashion_products csv]
WHERE Color = 'green' 
OR Product_Name = 'Dress'
AND Category ='mens fashion' 
OR Category = 'womens fashion'
AND Rating = 2.8 - 4.0
ORDER BY Size ASC;
