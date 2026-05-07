/*
SELECT AVG(PRICE) AS average FROM Cars;
*/

/*
SELECT count(ID) AS COUNT FROM Cars
WHERE "Leather interior" = "Yes"
AND Price < 1400
;
*/

/*
SELECT MAX(Price) AS toyota_max FROM Cars
WHERE "Manufacturer" = "TOYOTA"
AND "Prod. year" = "2011"
;
*/

/*
SELECT "Manufacturer", AVG("Price") AS "Average Price" FROM Cars
GROUP BY "Manufacturer"
ORDER BY AVG("Price") DESC
;
*/

/*
SELECT (COUNT(CASE WHEN "Fuel type" = "Petrol" THEN 1 END) * 100.0 / COUNT(*)) AS petrol_percentage
FROM Cars
WHERE "Category" = "Jeep";
*/

/*
WITH cheapest AS(
  SELECT MIN(Price) AS Min_Price FROM Cars
)

SELECT "Manufacturer", "Model" , "Prod. year" FROM Cars, cheapest
WHERE "Price" = Min_Price
;
*/

WITH average AS (
  SELECT AVG(Price) AS Average FROM Cars
)
SELECT (COUNT(CASE WHEN "Price" > "Average" THEN 1 END) * 100.0 / COUNT(*)) AS percentage
FROM Cars , average
WHERE "Manufacturer" = "TOYOTA"
;
