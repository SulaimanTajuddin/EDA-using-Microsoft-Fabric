/*

--Univariate Analysis for Transaction_Price
SELECT 
  COUNT(Transaction_Price) AS total_count,
  MIN(Transaction_Price) AS min_Transaction_Price,
  MAX(Transaction_Price) AS max_Transaction_Price,
  AVG(Transaction_Price) AS avg_Transaction_Price,
  STDEV(Transaction_Price) AS std_dev
FROM JB_Transacted_Property

--Univariate Analysis for Scheme_Name_Area
SELECT *, ROUND((freq * 100.0) / SUM(freq) OVER (), 2) AS percentage
FROM (SELECT Scheme_Name_Area, COUNT(Scheme_Name_Area) AS freq FROM JB_Transacted_Property GROUP BY Scheme_Name_Area) t
ORDER BY freq DESC;


--Univariate Analysis for Road_Name
SELECT *, ROUND((freq * 100.0) / SUM(freq) OVER (), 2) AS percentage
FROM (SELECT Road_Name, COUNT(Road_Name) AS freq FROM JB_Transacted_Property GROUP BY Road_Name) t
ORDER BY freq DESC;
*/

--Univariate Analysis for Scheme_Name_Area vs. Transaction_Price
SELECT 
  Scheme_Name_Area,
  COUNT(Transaction_Price) AS total_count,
  MIN(Transaction_Price) AS min_Transaction_Price,
  MAX(Transaction_Price) AS max_Transaction_Price,
  AVG(Transaction_Price) AS avg_Transaction_Price,
  STDEV(Transaction_Price) AS std_dev
FROM JB_Transacted_Property WHERE Scheme_Name_Area LIKE '%MASAI%' GROUP BY Scheme_Name_Area
