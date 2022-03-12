USE [Proj26]
GO

SELECT * FROM [dbo].[Dataset 1]
SELECT * FROM [dbo].[Dataset 2]

/*County wise Families Redeemed The Food_Benefits Stats*/
SELECT Vendor_County,
       SUM(Number_of_Families_Redeemed_Food_Benefits) AS Number_of_Families_Redeemed_Food_Benefits
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Vendor_County;

/*County wise Families Redeemed The Food_Benefits Stats with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Number_of_Families_Redeemed_Food_Benefits) AS Number_of_Families_Redeemed_Food_Benefits
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County
ORDER BY Vendor_County_Code;

/*Percentage of County wise Families Redeemed The Food_Benefits Stats*/
SELECT Vendor_County,
       SUM(Number_of_Families_Redeemed_Food_Benefits) AS Number_of_Families_Redeemed_Food_Benefits,
       ROUND(SUM(Number_of_Families_Redeemed_Food_Benefits) * 100.0 / (select SUM(Number_of_Families_Redeemed_Food_Benefits) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County
ORDER BY Vendor_County;

/*Percentage of County wise Families Redeemed The Food_Benefits Stats with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Number_of_Families_Redeemed_Food_Benefits) AS Number_of_Families_Redeemed_Food_Benefits,
       ROUND(SUM(Number_of_Families_Redeemed_Food_Benefits) * 100.0 / (select SUM(Number_of_Families_Redeemed_Food_Benefits) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County,Vendor_County_Code
ORDER BY Vendor_County_Code;

/*Percentage of County wise Families Redeemed The Food_Benefits Stats in Descending Order*/
SELECT Vendor_County,
       SUM(Number_of_Families_Redeemed_Food_Benefits) AS Number_of_Families_Redeemed_Food_Benefits,
       ROUND(SUM(Number_of_Families_Redeemed_Food_Benefits) * 100.0 / (select SUM(Number_of_Families_Redeemed_Food_Benefits) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County
ORDER BY IN_Percentage DESC;

/*Percentage of County wise Families Redeemed The Food_Benefits Stats in Descending Order with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Number_of_Families_Redeemed_Food_Benefits) AS Number_of_Families_Redeemed_Food_Benefits,
       ROUND(SUM(Number_of_Families_Redeemed_Food_Benefits) * 100.0 / (select SUM(Number_of_Families_Redeemed_Food_Benefits) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County,Vendor_County_Code
ORDER BY IN_Percentage DESC;

/*Top 5 County wise Families Redeemed The Food_Benefits Stats*/
SELECT Vendor_County,
       SUM(Number_of_Families_Redeemed_Food_Benefits) AS Number_of_Families_Redeemed_Food_Benefits
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Number_of_Families_Redeemed_Food_Benefits DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Top 5 County wise Families Redeemed The Food_Benefits Stats with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Number_of_Families_Redeemed_Food_Benefits) AS Number_of_Families_Redeemed_Food_Benefits
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County,Vendor_County_Code
ORDER BY Number_of_Families_Redeemed_Food_Benefits DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Bottom 5 County wise Families Redeemed The Food_Benefits Stats*/
SELECT Vendor_County,
       SUM(Number_of_Families_Redeemed_Food_Benefits) AS Number_of_Families_Redeemed_Food_Benefits
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Number_of_Families_Redeemed_Food_Benefits
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Bottom 5 County wise Families Redeemed The Food_Benefits Stats with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Number_of_Families_Redeemed_Food_Benefits) AS Number_of_Families_Redeemed_Food_Benefits
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County,Vendor_County_Code
ORDER BY Number_of_Families_Redeemed_Food_Benefits
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*County Wise Total, Minimum, Maximum and Average Number_of_Families_Redeemed_Food_Benefits */
SELECT Vendor_County,  
	   SUM(Number_of_Families_Redeemed_Food_Benefits) AS Total_Number_of_Families_Redeemed_Food_Benefits,
	   MIN(Number_of_Families_Redeemed_Food_Benefits)AS MINIMUN_Number_of_Families_Redeemed_Food_Benefits, 
       MAX(Number_of_Families_Redeemed_Food_Benefits) AS MAXIMIUM_Number_of_Families_Redeemed_Food_Benefits,
	   ROUND(AVG(Number_of_Families_Redeemed_Food_Benefits),2) AS AVERAGE_Number_of_Families_Redeemed_Food_Benefits
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Vendor_County;

/*County Wise Total, Minimum, Maximum and Average Number_of_Families_Redeemed_Food_Benefits with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County, 
	   SUM(Number_of_Families_Redeemed_Food_Benefits) AS Total_Number_of_Families_Redeemed_Food_Benefits,
	   MIN(Number_of_Families_Redeemed_Food_Benefits)AS MINIMUN_Number_of_Families_Redeemed_Food_Benefits, 
       MAX(Number_of_Families_Redeemed_Food_Benefits) AS MAXIMIUM_Number_of_Families_Redeemed_Food_Benefits,
	   ROUND(AVG(Number_of_Families_Redeemed_Food_Benefits),2) AS AVERAGE_Number_of_Families_Redeemed_Food_Benefits
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County,Vendor_County_Code 
ORDER BY Vendor_County_Code ;

/*County Wise Total, Minimum, Maximum and Average Number_of_Families_Redeemed_Food_Benefits & Orderd By Total Number_of_Families_Redeemed_Food_Benefits*/
SELECT Vendor_County,  
	   SUM(Number_of_Families_Redeemed_Food_Benefits) AS Total_Number_of_Families_Redeemed_Food_Benefits,
	   MIN(Number_of_Families_Redeemed_Food_Benefits)AS MINIMUN_Number_of_Families_Redeemed_Food_Benefits, 
       MAX(Number_of_Families_Redeemed_Food_Benefits) AS MAXIMIUM_Number_of_Families_Redeemed_Food_Benefits,
	   ROUND(AVG(Number_of_Families_Redeemed_Food_Benefits),2) AS AVERAGE_Number_of_Families_Redeemed_Food_Benefits
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Total_Number_of_Families_Redeemed_Food_Benefits desc;

/*County Wise Total, Minimum, Maximum and Average Number_of_Families_Redeemed_Food_Benefits & Orderd By Total Number_of_Families_Redeemed_Food_Benefits*/
SELECT Vendor_County_Code,Vendor_County,  
	   SUM(Number_of_Families_Redeemed_Food_Benefits) AS Total_Number_of_Families_Redeemed_Food_Benefits,
	   MIN(Number_of_Families_Redeemed_Food_Benefits)AS MINIMUN_Number_of_Families_Redeemed_Food_Benefits, 
       MAX(Number_of_Families_Redeemed_Food_Benefits) AS MAXIMIUM_Number_of_Families_Redeemed_Food_Benefits,
	   ROUND(AVG(Number_of_Families_Redeemed_Food_Benefits),2) AS AVERAGE_Number_of_Families_Redeemed_Food_Benefits
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County
ORDER BY Total_Number_of_Families_Redeemed_Food_Benefits desc;

/*Obligation Year and Month Families Redeemed The Food_Benefits Stats*/
SELECT Obligation_Year_and_Month,
       SUM(Number_of_Families_Redeemed_Food_Benefits) AS Number_of_Families_Redeemed_Food_Benefits
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Obligation_Year_and_Month;

/*Percentage of Obligation Year and Month Families Redeemed The Food_Benefits Stats*/
SELECT Obligation_Year_and_Month,
       SUM(Number_of_Families_Redeemed_Food_Benefits) AS Number_of_Families_Redeemed_Food_Benefits,
       ROUND(SUM(Number_of_Families_Redeemed_Food_Benefits) * 100.0 / (select SUM(Number_of_Families_Redeemed_Food_Benefits) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month
ORDER BY Obligation_Year_and_Month;

/*Percentage of Obligation Year and Month Families Redeemed The Food_Benefits Stats in Descending Order*/
SELECT Obligation_Year_and_Month,
       SUM(Number_of_Families_Redeemed_Food_Benefits) AS Number_of_Families_Redeemed_Food_Benefits,
       ROUND(SUM(Number_of_Families_Redeemed_Food_Benefits) * 100.0 / (select SUM(Number_of_Families_Redeemed_Food_Benefits) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month
ORDER BY IN_Percentage DESC;

/*Top 5 Obligation Year and Month Families Redeemed The Food_Benefits Stats*/
SELECT Obligation_Year_and_Month,
       SUM(Number_of_Families_Redeemed_Food_Benefits) AS Number_of_Families_Redeemed_Food_Benefits
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Number_of_Families_Redeemed_Food_Benefits DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Bottom 5 Obligation Year and Month Families Redeemed The Food_Benefits Stats*/
SELECT Obligation_Year_and_Month,
       SUM(Number_of_Families_Redeemed_Food_Benefits) AS Number_of_Families_Redeemed_Food_Benefits
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Number_of_Families_Redeemed_Food_Benefits
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Obligation Year and Month Total, Minimum, Maximum and Average Number_of_Families_Redeemed_Food_Benefits */
SELECT Obligation_Year_and_Month,  
	   SUM(Number_of_Families_Redeemed_Food_Benefits) AS Total_Number_of_Families_Redeemed_Food_Benefits,
	   MIN(Number_of_Families_Redeemed_Food_Benefits)AS MINIMUN_Number_of_Families_Redeemed_Food_Benefits, 
       MAX(Number_of_Families_Redeemed_Food_Benefits) AS MAXIMIUM_Number_of_Families_Redeemed_Food_Benefits,
	   ROUND(AVG(Number_of_Families_Redeemed_Food_Benefits),2) AS AVERAGE_Number_of_Families_Redeemed_Food_Benefits
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Obligation_Year_and_Month;

/*Obligation Year and Month Total, Minimum, Maximum and Average Number_of_Families_Redeemed_Food_Benefits & Orderd By Total Number_of_Families_Redeemed_Food_Benefits*/
SELECT Obligation_Year_and_Month,  
	   SUM(Number_of_Families_Redeemed_Food_Benefits) AS Total_Number_of_Families_Redeemed_Food_Benefits,
	   MIN(Number_of_Families_Redeemed_Food_Benefits)AS MINIMUN_Number_of_Families_Redeemed_Food_Benefits, 
       MAX(Number_of_Families_Redeemed_Food_Benefits) AS MAXIMIUM_Number_of_Families_Redeemed_Food_Benefits,
	   ROUND(AVG(Number_of_Families_Redeemed_Food_Benefits),2) AS AVERAGE_Number_of_Families_Redeemed_Food_Benefits
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Total_Number_of_Families_Redeemed_Food_Benefits desc;

/*County wise Food Instruments Stats*/
SELECT Vendor_County,
       SUM(Number_of_Food_Instruments_Redeemed) AS Number_of_Food_Instruments_Redeemed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Vendor_County;

/*County wise Food Instruments Stats with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Number_of_Food_Instruments_Redeemed) AS Number_of_Food_Instruments_Redeemed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County 
ORDER BY Vendor_County_Code;

/*Percentage of County wise Food Instruments Stats*/
SELECT Vendor_County,
       SUM(Number_of_Food_Instruments_Redeemed) AS Number_of_Food_Instruments_Redeemed,
       ROUND(SUM(Number_of_Food_Instruments_Redeemed) * 100.0 / (select SUM(Number_of_Food_Instruments_Redeemed) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County
ORDER BY Vendor_County;

/*Percentage of County wise Food Instruments Stats with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Number_of_Food_Instruments_Redeemed) AS Number_of_Food_Instruments_Redeemed,
       ROUND(SUM(Number_of_Food_Instruments_Redeemed) * 100.0 / (select SUM(Number_of_Food_Instruments_Redeemed) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County
ORDER BY Vendor_County_Code;

/*Percentage of County wise Food Instruments Stats in Descending Order*/
SELECT Vendor_County,
       SUM(Number_of_Food_Instruments_Redeemed) AS Number_of_Food_Instruments_Redeemed,
       ROUND(SUM(Number_of_Food_Instruments_Redeemed) * 100.0 / (select SUM(Number_of_Food_Instruments_Redeemed) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County
ORDER BY IN_Percentage DESC;

/*Percentage of County wise Food Instruments Stats in Descending Order with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Number_of_Food_Instruments_Redeemed) AS Number_of_Food_Instruments_Redeemed,
       ROUND(SUM(Number_of_Food_Instruments_Redeemed) * 100.0 / (select SUM(Number_of_Food_Instruments_Redeemed) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County
ORDER BY IN_Percentage DESC;

/*Top 5 Counties Redeemed The Food Instruments*/
SELECT Vendor_County,
       SUM(Number_of_Food_Instruments_Redeemed) AS Number_of_Food_Instruments_Redeemed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Number_of_Food_Instruments_Redeemed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Top 5 Counties Redeemed The Food Instruments with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Number_of_Food_Instruments_Redeemed) AS Number_of_Food_Instruments_Redeemed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County 
ORDER BY Number_of_Food_Instruments_Redeemed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Bottom 5 Counties Redeemed The Food Instruments*/
SELECT Vendor_County,
       SUM(Number_of_Food_Instruments_Redeemed) AS Number_of_Food_Instruments_Redeemed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Number_of_Food_Instruments_Redeemed
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Bottom 5 Counties Redeemed The Food Instruments with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Number_of_Food_Instruments_Redeemed) AS Number_of_Food_Instruments_Redeemed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County 
ORDER BY Number_of_Food_Instruments_Redeemed
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*County Wise Total, Minimum, Maximum and Average Number of Food Instruments Redeemed */
SELECT Vendor_County,  
	   SUM(Number_of_Food_Instruments_Redeemed) AS Total_Number_of_Food_Instruments_Redeemed,
	   MIN(Number_of_Food_Instruments_Redeemed)AS MINIMUN_Number_of_Food_Instruments_Redeemed , 
       MAX(Number_of_Food_Instruments_Redeemed) AS MAXIMIUM_Number_of_Food_Instruments_Redeemed,
	   ROUND(AVG(Number_of_Food_Instruments_Redeemed),2) AS AVERAGE_Number_of_Food_Instruments_Redeemed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Vendor_County;

/*County Wise Total, Minimum, Maximum and Average Number of Food Instruments Redeemed with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,  
	   SUM(Number_of_Food_Instruments_Redeemed) AS Total_Number_of_Food_Instruments_Redeemed,
	   MIN(Number_of_Food_Instruments_Redeemed)AS MINIMUN_Number_of_Food_Instruments_Redeemed , 
       MAX(Number_of_Food_Instruments_Redeemed) AS MAXIMIUM_Number_of_Food_Instruments_Redeemed,
	   ROUND(AVG(Number_of_Food_Instruments_Redeemed),2) AS AVERAGE_Number_of_Food_Instruments_Redeemed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County 
ORDER BY Vendor_County_Code;

/*County Wise Total, Minimum, Maximum and Average Number of Food Instruments Redeemed & Orderd By Total Number of Food Instruments Redeemed*/
SELECT Vendor_County,  
	   SUM(Number_of_Food_Instruments_Redeemed) AS Total_Number_of_Food_Instruments_Redeemed,
	   MIN(Number_of_Food_Instruments_Redeemed)AS MINIMUN_Number_of_Food_Instruments_Redeemed , 
       MAX(Number_of_Food_Instruments_Redeemed) AS MAXIMIUM_Number_of_Food_Instruments_Redeemed,
	   ROUND(AVG(Number_of_Food_Instruments_Redeemed),2) AS AVERAGE_Number_of_Food_Instruments_Redeemed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Total_Number_of_Food_Instruments_Redeemed desc;

/*County Wise Total, Minimum, Maximum and Average Number of Food Instruments Redeemed & Orderd By Total Number of Food Instruments Redeemed with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,  
	   SUM(Number_of_Food_Instruments_Redeemed) AS Total_Number_of_Food_Instruments_Redeemed,
	   MIN(Number_of_Food_Instruments_Redeemed)AS MINIMUN_Number_of_Food_Instruments_Redeemed , 
       MAX(Number_of_Food_Instruments_Redeemed) AS MAXIMIUM_Number_of_Food_Instruments_Redeemed,
	   ROUND(AVG(Number_of_Food_Instruments_Redeemed),2) AS AVERAGE_Number_of_Food_Instruments_Redeemed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County 
ORDER BY Total_Number_of_Food_Instruments_Redeemed desc;

/*Obligation Year and Month Food Instruments Stats*/
SELECT Obligation_Year_and_Month,
       SUM(Number_of_Food_Instruments_Redeemed) AS Number_of_Food_Instruments_Redeemed
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Obligation_Year_and_Month;

/*Percentage of Obligation Year and Month Food Instruments Stats*/
SELECT Obligation_Year_and_Month,
       SUM(Number_of_Food_Instruments_Redeemed) AS Number_of_Food_Instruments_Redeemed,
       ROUND(SUM(Number_of_Food_Instruments_Redeemed) * 100.0 / (select SUM(Number_of_Food_Instruments_Redeemed) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month
ORDER BY Obligation_Year_and_Month;

/*Percentage of Obligation Year and Month Food Instruments Stats in Descending Order*/
SELECT Obligation_Year_and_Month,
       SUM(Number_of_Food_Instruments_Redeemed) AS Number_of_Food_Instruments_Redeemed,
       ROUND(SUM(Number_of_Food_Instruments_Redeemed) * 100.0 / (select SUM(Number_of_Food_Instruments_Redeemed) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month
ORDER BY IN_Percentage DESC;

/*Top 5 Counties Redeemed The Food Instruments*/
SELECT Obligation_Year_and_Month,
       SUM(Number_of_Food_Instruments_Redeemed) AS Number_of_Food_Instruments_Redeemed
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Number_of_Food_Instruments_Redeemed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Bottom 5 Counties Redeemed The Food Instruments*/
SELECT Obligation_Year_and_Month,
       SUM(Number_of_Food_Instruments_Redeemed) AS Number_of_Food_Instruments_Redeemed
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Number_of_Food_Instruments_Redeemed
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Obligation Year and Month Total, Minimum, Maximum and Average Number of Food Instruments Redeemed */
SELECT Obligation_Year_and_Month,  
	   SUM(Number_of_Food_Instruments_Redeemed) AS Total_Number_of_Food_Instruments_Redeemed,
	   MIN(Number_of_Food_Instruments_Redeemed)AS MINIMUN_Number_of_Food_Instruments_Redeemed , 
       MAX(Number_of_Food_Instruments_Redeemed) AS MAXIMIUM_Number_of_Food_Instruments_Redeemed,
	   ROUND(AVG(Number_of_Food_Instruments_Redeemed),2) AS AVERAGE_Number_of_Food_Instruments_Redeemed
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Obligation_Year_and_Month;

/*Obligation Year and Month Total, Minimum, Maximum and Average Number of Food Instruments Redeemed & Orderd By Total Number of Food Instruments Redeemed*/
SELECT Obligation_Year_and_Month,  
	   SUM(Number_of_Food_Instruments_Redeemed) AS Total_Number_of_Food_Instruments_Redeemed,
	   MIN(Number_of_Food_Instruments_Redeemed)AS MINIMUN_Number_of_Food_Instruments_Redeemed , 
       MAX(Number_of_Food_Instruments_Redeemed) AS MAXIMIUM_Number_of_Food_Instruments_Redeemed,
	   ROUND(AVG(Number_of_Food_Instruments_Redeemed),2) AS AVERAGE_Number_of_Food_Instruments_Redeemed
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Total_Number_of_Food_Instruments_Redeemed desc;

/*County wise Dollar Amount Redeemed for Food Instruments Stats*/
SELECT Vendor_County,
       SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Dollar_Amount_Redeemed_for_Food_Instruments
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Vendor_County;

/*County wise Dollar Amount Redeemed for Food Instruments Stats with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Dollar_Amount_Redeemed_for_Food_Instruments
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County
ORDER BY Vendor_County_Code;

/*Percentage of County wise Dollar Amount Redeemed for Food Instruments Stats*/
SELECT Vendor_County,
       SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Dollar_Amount_Redeemed_for_Food_Instruments,
       ROUND(SUM(Dollar_Amount_Redeemed_for_Food_Instruments) * 100.0 / (select SUM(Dollar_Amount_Redeemed_for_Food_Instruments) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County
ORDER BY Vendor_County;

/*Percentage of County wise Dollar Amount Redeemed for Food Instruments Stats with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Dollar_Amount_Redeemed_for_Food_Instruments,
       ROUND(SUM(Dollar_Amount_Redeemed_for_Food_Instruments) * 100.0 / (select SUM(Dollar_Amount_Redeemed_for_Food_Instruments) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County
ORDER BY Vendor_County_Code;

/*Percentage of County wise Dollar Amount Redeemed for Food Instruments Stats in Descending Order*/
SELECT Vendor_County,
       SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Dollar_Amount_Redeemed_for_Food_Instruments,
       ROUND(SUM(Dollar_Amount_Redeemed_for_Food_Instruments) * 100.0 / (select SUM(Dollar_Amount_Redeemed_for_Food_Instruments) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County
ORDER BY IN_Percentage DESC;

/*Percentage of County wise Dollar Amount Redeemed for Food Instruments Stats in Descending Order with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Dollar_Amount_Redeemed_for_Food_Instruments,
       ROUND(SUM(Dollar_Amount_Redeemed_for_Food_Instruments) * 100.0 / (select SUM(Dollar_Amount_Redeemed_for_Food_Instruments) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County
ORDER BY IN_Percentage DESC;

/*Top 5 Counties with The Dollar Amount Redeemed for Food Instruments*/
SELECT Vendor_County,
       SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Dollar_Amount_Redeemed_for_Food_Instruments
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Dollar_Amount_Redeemed_for_Food_Instruments DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Top 5 Counties with The Dollar Amount Redeemed for Food Instruments with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Dollar_Amount_Redeemed_for_Food_Instruments
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County 
ORDER BY Dollar_Amount_Redeemed_for_Food_Instruments DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Bottom 5 Counties with The Dollar Amount Redeemed for Food Instruments*/
SELECT Vendor_County,
       SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Dollar_Amount_Redeemed_for_Food_Instruments
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Dollar_Amount_Redeemed_for_Food_Instruments
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Bottom 5 Counties with The Dollar Amount Redeemed for Food Instruments with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Dollar_Amount_Redeemed_for_Food_Instruments
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County  
ORDER BY Dollar_Amount_Redeemed_for_Food_Instruments
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*County Wise Total, Minimum, Maximum and Average Dollar Amount Redeemed for Food Instruments */
SELECT Vendor_County,  
	   SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Total_Dollar_Amount_Redeemed_for_Food_Instruments,
	   MIN(Dollar_Amount_Redeemed_for_Food_Instruments)AS MINIMUN_Dollar_Amount_Redeemed_for_Food_Instruments , 
       MAX(Dollar_Amount_Redeemed_for_Food_Instruments) AS MAXIMIUM_Dollar_Amount_Redeemed_for_Food_Instruments,
	   ROUND(AVG(Dollar_Amount_Redeemed_for_Food_Instruments),2) AS AVERAGE_Dollar_Amount_Redeemed_for_Food_Instruments
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Vendor_County;

/*County Wise Total, Minimum, Maximum and Average Dollar Amount Redeemed for Food Instruments with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,  
	   SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Total_Dollar_Amount_Redeemed_for_Food_Instruments,
	   MIN(Dollar_Amount_Redeemed_for_Food_Instruments)AS MINIMUN_Dollar_Amount_Redeemed_for_Food_Instruments , 
       MAX(Dollar_Amount_Redeemed_for_Food_Instruments) AS MAXIMIUM_Dollar_Amount_Redeemed_for_Food_Instruments,
	   ROUND(AVG(Dollar_Amount_Redeemed_for_Food_Instruments),2) AS AVERAGE_Dollar_Amount_Redeemed_for_Food_Instruments
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County
ORDER BY Vendor_County_Code;

/*County Wise Total, Minimum, Maximum and Average Dollar Amount Redeemed for Food Instruments & Orderd By Total Dollar Amount Redeemed for Food Instruments*/
SELECT Vendor_County,  
	   SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Total_Dollar_Amount_Redeemed_for_Food_Instruments,
	   MIN(Dollar_Amount_Redeemed_for_Food_Instruments)AS MINIMUN_Dollar_Amount_Redeemed_for_Food_Instruments , 
       MAX(Dollar_Amount_Redeemed_for_Food_Instruments) AS MAXIMIUM_Dollar_Amount_Redeemed_for_Food_Instruments,
	   ROUND(AVG(Dollar_Amount_Redeemed_for_Food_Instruments),2) AS AVERAGE_Dollar_Amount_Redeemed_for_Food_Instruments
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Total_Dollar_Amount_Redeemed_for_Food_Instruments desc;

/*County Wise Total, Minimum, Maximum and Average Dollar Amount Redeemed for Food Instruments & Orderd By Total Dollar Amount Redeemed for Food Instruments with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,  
	   SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Total_Dollar_Amount_Redeemed_for_Food_Instruments,
	   MIN(Dollar_Amount_Redeemed_for_Food_Instruments)AS MINIMUN_Dollar_Amount_Redeemed_for_Food_Instruments , 
       MAX(Dollar_Amount_Redeemed_for_Food_Instruments) AS MAXIMIUM_Dollar_Amount_Redeemed_for_Food_Instruments,
	   ROUND(AVG(Dollar_Amount_Redeemed_for_Food_Instruments),2) AS AVERAGE_Dollar_Amount_Redeemed_for_Food_Instruments
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County 
ORDER BY Total_Dollar_Amount_Redeemed_for_Food_Instruments desc;

/*Obligation Year and Month Dollar Amount Redeemed for Food Instruments Stats*/
SELECT Obligation_Year_and_Month,
       SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Dollar_Amount_Redeemed_for_Food_Instruments
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Obligation_Year_and_Month;

/*Percentage of Obligation Year and Month Dollar Amount Redeemed for Food Instruments Stats*/
SELECT Obligation_Year_and_Month,
       SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Dollar_Amount_Redeemed_for_Food_Instruments,
       ROUND(SUM(Dollar_Amount_Redeemed_for_Food_Instruments) * 100.0 / (select SUM(Dollar_Amount_Redeemed_for_Food_Instruments) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month
ORDER BY Obligation_Year_and_Month;

/*Percentage of Obligation Year and Month Dollar Amount Redeemed for Food Instruments Stats in Descending Order*/
SELECT Obligation_Year_and_Month,
       SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Dollar_Amount_Redeemed_for_Food_Instruments,
       ROUND(SUM(Dollar_Amount_Redeemed_for_Food_Instruments) * 100.0 / (select SUM(Dollar_Amount_Redeemed_for_Food_Instruments) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month
ORDER BY IN_Percentage DESC;

/*Top 5 Counties with The Dollar Amount Redeemed for Food Instruments*/
SELECT Obligation_Year_and_Month,
       SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Dollar_Amount_Redeemed_for_Food_Instruments
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Dollar_Amount_Redeemed_for_Food_Instruments DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Bottom 5 Counties with The Dollar Amount Redeemed for Food Instruments*/
SELECT Obligation_Year_and_Month,
       SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Dollar_Amount_Redeemed_for_Food_Instruments
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Dollar_Amount_Redeemed_for_Food_Instruments
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Obligation Year and Month Total, Minimum, Maximum and Average Dollar Amount Redeemed for Food Instruments */
SELECT Obligation_Year_and_Month,  
	   SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Total_Dollar_Amount_Redeemed_for_Food_Instruments,
	   MIN(Dollar_Amount_Redeemed_for_Food_Instruments)AS MINIMUN_Dollar_Amount_Redeemed_for_Food_Instruments , 
       MAX(Dollar_Amount_Redeemed_for_Food_Instruments) AS MAXIMIUM_Dollar_Amount_Redeemed_for_Food_Instruments,
	   ROUND(AVG(Dollar_Amount_Redeemed_for_Food_Instruments),2) AS AVERAGE_Dollar_Amount_Redeemed_for_Food_Instruments
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Obligation_Year_and_Month;

/*Obligation Year and Month Total, Minimum, Maximum and Average Dollar Amount Redeemed for Food Instruments & Orderd By Total Dollar Amount Redeemed for Food Instruments*/
SELECT Obligation_Year_and_Month,  
	   SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Total_Dollar_Amount_Redeemed_for_Food_Instruments,
	   MIN(Dollar_Amount_Redeemed_for_Food_Instruments)AS MINIMUN_Dollar_Amount_Redeemed_for_Food_Instruments , 
       MAX(Dollar_Amount_Redeemed_for_Food_Instruments) AS MAXIMIUM_Dollar_Amount_Redeemed_for_Food_Instruments,
	   ROUND(AVG(Dollar_Amount_Redeemed_for_Food_Instruments),2) AS AVERAGE_Dollar_Amount_Redeemed_for_Food_Instruments
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Total_Dollar_Amount_Redeemed_for_Food_Instruments desc;

/*Average Doller Rate During the Food Instruments Redemption*/
SELECT Vendor_County,
       SUM(Number_of_Food_Instruments_Redeemed) AS Number_of_Food_Instruments_Redeemed,
	   SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Dollar_Amount_Redeemed_for_Food_Instruments, 
	   ROUND((SUM(Dollar_Amount_Redeemed_for_Food_Instruments)/SUM(Number_of_Food_Instruments_Redeemed)),2)  AS Redeemed_Average_Doller_Rate
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Vendor_County;

/*Average Doller Rate During the Food Instruments Redemption with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Number_of_Food_Instruments_Redeemed) AS Number_of_Food_Instruments_Redeemed,
	   SUM(Dollar_Amount_Redeemed_for_Food_Instruments) AS Dollar_Amount_Redeemed_for_Food_Instruments, 
	   ROUND((SUM(Dollar_Amount_Redeemed_for_Food_Instruments)/SUM(Number_of_Food_Instruments_Redeemed)),2)  AS Redeemed_Average_Doller_Rate
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County
ORDER BY Vendor_County_Code;

/*Doller Rate During the Food Instruments Redemption By Year and Month Wise Stats */
SELECT Obligation_Year_and_Month,
       Vendor_County,
       Number_of_Food_Instruments_Redeemed ,
	   Dollar_Amount_Redeemed_for_Food_Instruments , 
	   ROUND((Dollar_Amount_Redeemed_for_Food_Instruments / Number_of_Food_Instruments_Redeemed),2)  AS Redeemed_Average_Doller_Rate
FROM [dbo].[Dataset 1] 
ORDER BY Obligation_Year_and_Month;

/*County Wise Number of WIC Card Transactions Processed Stats*/
SELECT Vendor_County ,
       SUM(Number_of_WIC_Card_Transactions_Processed) AS Number_of_WIC_Card_Transactions_Processed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County  
ORDER BY Vendor_County ;

/*County Wise Number of WIC Card Transactions Processed Stats with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County ,
       SUM(Number_of_WIC_Card_Transactions_Processed) AS Number_of_WIC_Card_Transactions_Processed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County 
ORDER BY Vendor_County_Code;

/*Percentage of County Wise Number of WIC Card Transactions Processed Stats*/
SELECT Vendor_County ,
       SUM(Number_of_WIC_Card_Transactions_Processed) AS Number_of_WIC_Card_Transactions_Processed,
       ROUND(SUM(Number_of_WIC_Card_Transactions_Processed) * 100.0 / (select SUM(Number_of_WIC_Card_Transactions_Processed) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Vendor_County ;

/*Percentage of County Wise Number of WIC Card Transactions Processed Stats with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County ,
       SUM(Number_of_WIC_Card_Transactions_Processed) AS Number_of_WIC_Card_Transactions_Processed,
       ROUND(SUM(Number_of_WIC_Card_Transactions_Processed) * 100.0 / (select SUM(Number_of_WIC_Card_Transactions_Processed) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County 
ORDER BY Vendor_County_Code;

/*Percentage of County Wise Number of WIC Card Transactions Processed Stats in Descending Order*/
SELECT Vendor_County ,
       SUM(Number_of_WIC_Card_Transactions_Processed) AS Number_of_WIC_Card_Transactions_Processed,
       ROUND(SUM(Number_of_WIC_Card_Transactions_Processed) * 100.0 / (select SUM(Number_of_WIC_Card_Transactions_Processed) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY IN_Percentage DESC;

/*Percentage of County Wise Number of WIC Card Transactions Processed Stats in Descending Order with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County ,
       SUM(Number_of_WIC_Card_Transactions_Processed) AS Number_of_WIC_Card_Transactions_Processed,
       ROUND(SUM(Number_of_WIC_Card_Transactions_Processed) * 100.0 / (select SUM(Number_of_WIC_Card_Transactions_Processed) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County  
ORDER BY IN_Percentage DESC;

/*Top 5 Counties with The Total Number of WIC Card Transactions Processed*/
SELECT Vendor_County ,
       SUM(Number_of_WIC_Card_Transactions_Processed) AS Number_of_WIC_Card_Transactions_Processed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County  
ORDER BY Number_of_WIC_Card_Transactions_Processed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Top 5 Counties with The Total Number of WIC Card Transactions Processed with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County ,
       SUM(Number_of_WIC_Card_Transactions_Processed) AS Number_of_WIC_Card_Transactions_Processed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County    
ORDER BY Number_of_WIC_Card_Transactions_Processed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Bottom 5 Counties with The Total Number of WIC Card Transactions Processed*/
SELECT Vendor_County ,
       SUM(Number_of_WIC_Card_Transactions_Processed) AS Number_of_WIC_Card_Transactions_Processed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County  
ORDER BY Number_of_WIC_Card_Transactions_Processed
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Bottom 5 Counties with The Total Number of WIC Card Transactions Processed with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County ,
       SUM(Number_of_WIC_Card_Transactions_Processed) AS Number_of_WIC_Card_Transactions_Processed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County  
ORDER BY Number_of_WIC_Card_Transactions_Processed
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*County Wise Total, Minimum, Maximum and Average Number of WIC Card Transactions Processed */
SELECT Vendor_County ,  
	   SUM(Number_of_WIC_Card_Transactions_Processed) AS Total_Number_of_WIC_Card_Transactions_Processed,
	   MIN(Number_of_WIC_Card_Transactions_Processed)AS MINIMUN_Number_of_WIC_Card_Transactions_Processed , 
       MAX(Number_of_WIC_Card_Transactions_Processed) AS MAXIMIUM_Number_of_WIC_Card_Transactions_Processed,
	   ROUND(AVG(Number_of_WIC_Card_Transactions_Processed),2) AS AVERAGE_Number_of_WIC_Card_Transactions_Processed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County  
ORDER BY Vendor_County ;

/*County Wise Total, Minimum, Maximum and Average Number of WIC Card Transactions Processed with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County ,
	   SUM(Number_of_WIC_Card_Transactions_Processed) AS Total_Number_of_WIC_Card_Transactions_Processed,
	   MIN(Number_of_WIC_Card_Transactions_Processed)AS MINIMUN_Number_of_WIC_Card_Transactions_Processed , 
       MAX(Number_of_WIC_Card_Transactions_Processed) AS MAXIMIUM_Number_of_WIC_Card_Transactions_Processed,
	   ROUND(AVG(Number_of_WIC_Card_Transactions_Processed),2) AS AVERAGE_Number_of_WIC_Card_Transactions_Processed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County   
ORDER BY Vendor_County_Code ;

/*County Wise Total, Minimum, Maximum and Average Number of WIC Card Transactions Processed & Orderd By Total Number of WIC Card Transactions Processed*/
SELECT Vendor_County ,  
	   SUM(Number_of_WIC_Card_Transactions_Processed) AS Total_Number_of_WIC_Card_Transactions_Processed,
	   MIN(Number_of_WIC_Card_Transactions_Processed)AS MINIMUN_Number_of_WIC_Card_Transactions_Processed , 
       MAX(Number_of_WIC_Card_Transactions_Processed) AS MAXIMIUM_Number_of_WIC_Card_Transactions_Processed,
	   ROUND(AVG(Number_of_WIC_Card_Transactions_Processed),2) AS AVERAGE_Number_of_WIC_Card_Transactions_Processed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County  
ORDER BY Total_Number_of_WIC_Card_Transactions_Processed desc;

/*County Wise Total, Minimum, Maximum and Average Number of WIC Card Transactions Processed & Orderd By Total Number of WIC Card Transactions Processed with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County ,  
	   SUM(Number_of_WIC_Card_Transactions_Processed) AS Total_Number_of_WIC_Card_Transactions_Processed,
	   MIN(Number_of_WIC_Card_Transactions_Processed)AS MINIMUN_Number_of_WIC_Card_Transactions_Processed , 
       MAX(Number_of_WIC_Card_Transactions_Processed) AS MAXIMIUM_Number_of_WIC_Card_Transactions_Processed,
	   ROUND(AVG(Number_of_WIC_Card_Transactions_Processed),2) AS AVERAGE_Number_of_WIC_Card_Transactions_Processed
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County    
ORDER BY Total_Number_of_WIC_Card_Transactions_Processed desc;

/*Obligation Year and Month Number of WIC Card Transactions Processed Stats*/
SELECT Obligation_Year_and_Month,
       SUM(Number_of_WIC_Card_Transactions_Processed) AS Number_of_WIC_Card_Transactions_Processed
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Obligation_Year_and_Month;

/*Percentage of Obligation Year and Month Number of WIC Card Transactions Processed Stats*/
SELECT Obligation_Year_and_Month,
       SUM(Number_of_WIC_Card_Transactions_Processed) AS Number_of_WIC_Card_Transactions_Processed,
       ROUND(SUM(Number_of_WIC_Card_Transactions_Processed) * 100.0 / (select SUM(Number_of_WIC_Card_Transactions_Processed) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month
ORDER BY Obligation_Year_and_Month;

/*Percentage of Obligation Year and Month Number of WIC Card Transactions Processed Stats in Descending Order*/
SELECT Obligation_Year_and_Month,
       SUM(Number_of_WIC_Card_Transactions_Processed) AS Number_of_WIC_Card_Transactions_Processed,
       ROUND(SUM(Number_of_WIC_Card_Transactions_Processed) * 100.0 / (select SUM(Number_of_WIC_Card_Transactions_Processed) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month
ORDER BY IN_Percentage DESC;

/*Top 5 Counties Number of WIC Card Transactions Processed */
SELECT Obligation_Year_and_Month,
       SUM(Number_of_WIC_Card_Transactions_Processed) AS Number_of_WIC_Card_Transactions_Processed
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Number_of_WIC_Card_Transactions_Processed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Bottom 5 Counties Number of WIC Card Transactions Processed */
SELECT Obligation_Year_and_Month,
       SUM(Number_of_WIC_Card_Transactions_Processed) AS Number_of_WIC_Card_Transactions_Processed
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Number_of_WIC_Card_Transactions_Processed
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Obligation Year and Month Total, Minimum, Maximum and Average Number of WIC Card Transactions Processed Redeemed */
SELECT Obligation_Year_and_Month,  
	   SUM(Number_of_WIC_Card_Transactions_Processed) AS Total_Number_of_WIC_Card_Transactions_Processed,
	   MIN(Number_of_WIC_Card_Transactions_Processed)AS MINIMUN_Number_of_WIC_Card_Transactions_Processed , 
       MAX(Number_of_WIC_Card_Transactions_Processed) AS MAXIMIUM_Number_of_WIC_Card_Transactions_Processed,
	   ROUND(AVG(Number_of_WIC_Card_Transactions_Processed),2) AS AVERAGE_Number_of_WIC_Card_Transactions_Processed
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Obligation_Year_and_Month;

/*Obligation Year and Month Total, Minimum, Maximum and Average Number of WIC Card Transactions Processed Redeemed & Orderd By Total Number of Number of WIC Card Transactions Processed Redeemed*/
SELECT Obligation_Year_and_Month,  
	   SUM(Number_of_WIC_Card_Transactions_Processed) AS Total_Number_of_WIC_Card_Transactions_Processed,
	   MIN(Number_of_WIC_Card_Transactions_Processed)AS MINIMUN_Number_of_WIC_Card_Transactions_Processed , 
       MAX(Number_of_WIC_Card_Transactions_Processed) AS MAXIMIUM_Number_of_WIC_Card_Transactions_Processed,
	   ROUND(AVG(Number_of_WIC_Card_Transactions_Processed),2) AS AVERAGE_Number_of_WIC_Card_Transactions_Processed
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Total_Number_of_WIC_Card_Transactions_Processed desc;

/*County Wise Dollar_Amount Reimbursed for WIC Card Transactions Stats*/
SELECT Vendor_County ,
       SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Dollar_Amount_Reimbursed_for_WIC_Card_Transactions
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County  
ORDER BY Vendor_County ;

/*County Wise Dollar_Amount Reimbursed for WIC Card Transactions Stats with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County ,
       SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Dollar_Amount_Reimbursed_for_WIC_Card_Transactions
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County 
ORDER BY Vendor_County_Code ;

/*Percentage of County Wise Dollar_Amount Reimbursed for WIC Card Transactions Stats*/
SELECT Vendor_County ,
       SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Dollar_Amount_Reimbursed_for_WIC_Card_Transactions,
       ROUND(SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) * 100.0 / (select SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Vendor_County ;

/*Percentage of County Wise Dollar_Amount Reimbursed for WIC Card Transactions Stats with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County ,
       SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Dollar_Amount_Reimbursed_for_WIC_Card_Transactions,
       ROUND(SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) * 100.0 / (select SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County  
ORDER BY Vendor_County_Code;

/*Percentage of County Wise Dollar_Amount Reimbursed for WIC Card Transactions Stats in Descending Order*/
SELECT Vendor_County ,
       SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Dollar_Amount_Reimbursed_for_WIC_Card_Transactions,
       ROUND(SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) * 100.0 / (select SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY IN_Percentage DESC;

/*Percentage of County Wise Dollar_Amount Reimbursed for WIC Card Transactions Stats in Descending Order with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County ,
       SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Dollar_Amount_Reimbursed_for_WIC_Card_Transactions,
       ROUND(SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) * 100.0 / (select SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County 
ORDER BY IN_Percentage DESC;

/*Top 5 Counties with The Total Dollar_Amount Reimbursed for WIC Card Transactions*/
SELECT Vendor_County ,
       SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Dollar_Amount_Reimbursed_for_WIC_Card_Transactions
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County  
ORDER BY Dollar_Amount_Reimbursed_for_WIC_Card_Transactions DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Top 5 Counties with The Total Dollar_Amount Reimbursed for WIC Card Transactions with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County ,
       SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Dollar_Amount_Reimbursed_for_WIC_Card_Transactions
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County   
ORDER BY Dollar_Amount_Reimbursed_for_WIC_Card_Transactions DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Bottom 5 Counties with The Total Dollar_Amount Reimbursed for WIC Card Transactions*/
SELECT Vendor_County ,
       SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Dollar_Amount_Reimbursed_for_WIC_Card_Transactions
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County  
ORDER BY Dollar_Amount_Reimbursed_for_WIC_Card_Transactions
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Bottom 5 Counties with The Total Dollar_Amount Reimbursed for WIC Card Transactions with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County ,
       SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Dollar_Amount_Reimbursed_for_WIC_Card_Transactions
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County   
ORDER BY Dollar_Amount_Reimbursed_for_WIC_Card_Transactions
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*County Wise Total, Minimum, Maximum and Average Dollar_Amount Reimbursed for WIC Card Transactions */
SELECT Vendor_County ,  
	   SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Total_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions,
	   MIN(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions)AS MINIMUN_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions , 
       MAX(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS MAXIMIUM_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions,
	   ROUND(AVG(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions),2) AS AVERAGE_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County  
ORDER BY Vendor_County ;

/*County Wise Total, Minimum, Maximum and Average Dollar_Amount Reimbursed for WIC Card Transactions with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County ,  
	   SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Total_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions,
	   MIN(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions)AS MINIMUN_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions , 
       MAX(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS MAXIMIUM_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions,
	   ROUND(AVG(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions),2) AS AVERAGE_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County  
ORDER BY Vendor_County_Code ;

/*County Wise Total, Minimum, Maximum and Average Dollar_Amount Reimbursed for WIC Card Transactions & Orderd By Total Dollar_Amount Reimbursed for WIC Card Transactions*/
SELECT Vendor_County ,  
	   SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Total_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions,
	   MIN(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions)AS MINIMUN_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions , 
       MAX(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS MAXIMIUM_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions,
	   ROUND(AVG(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions),2) AS AVERAGE_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County  
ORDER BY Total_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions desc;

/*County Wise Total, Minimum, Maximum and Average Dollar_Amount Reimbursed for WIC Card Transactions & Orderd By Total Dollar_Amount Reimbursed for WIC Card Transactions with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County ,  
	   SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Total_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions,
	   MIN(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions)AS MINIMUN_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions , 
       MAX(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS MAXIMIUM_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions,
	   ROUND(AVG(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions),2) AS AVERAGE_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County   
ORDER BY Total_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions desc;

/*Obligation Year and Month Dollar_Amount Reimbursed for WIC Card Transactions Stats*/
SELECT Obligation_Year_and_Month,
       SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Dollar_Amount_Reimbursed_for_WIC_Card_Transactions
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Obligation_Year_and_Month;

/*Percentage of Obligation Year and Month Dollar_Amount Reimbursed for WIC Card Transactions Stats*/
SELECT Obligation_Year_and_Month,
       SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Dollar_Amount_Reimbursed_for_WIC_Card_Transactions,
       ROUND(SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) * 100.0 / (select SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month
ORDER BY Obligation_Year_and_Month;

/*Percentage of Obligation Year and Month Dollar_Amount Reimbursed for WIC Card Transactions Stats in Descending Order*/
SELECT Obligation_Year_and_Month,
       SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Dollar_Amount_Reimbursed_for_WIC_Card_Transactions,
       ROUND(SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) * 100.0 / (select SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month
ORDER BY IN_Percentage DESC;

/*Top 5 Counties Dollar_Amount Reimbursed for WIC Card Transactions */
SELECT Obligation_Year_and_Month,
       SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Dollar_Amount_Reimbursed_for_WIC_Card_Transactions
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Dollar_Amount_Reimbursed_for_WIC_Card_Transactions DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Bottom 5 Counties Dollar_Amount Reimbursed for WIC Card Transactions */
SELECT Obligation_Year_and_Month,
       SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Dollar_Amount_Reimbursed_for_WIC_Card_Transactions
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Dollar_Amount_Reimbursed_for_WIC_Card_Transactions
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Obligation Year and Month Total, Minimum, Maximum and Average Dollar_Amount Reimbursed for WIC Card Transactions Redeemed */
SELECT Obligation_Year_and_Month,  
	   SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Total_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions,
	   MIN(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions)AS MINIMUN_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions , 
       MAX(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS MAXIMIUM_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions,
	   ROUND(AVG(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions),2) AS AVERAGE_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Obligation_Year_and_Month;

/*Obligation Year and Month Total, Minimum, Maximum and Average Dollar_Amount Reimbursed for WIC Card Transactions Redeemed & Orderd By Total Number of Dollar_Amount Reimbursed for WIC Card Transactions Redeemed*/
SELECT Obligation_Year_and_Month,  
	   SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Total_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions,
	   MIN(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions)AS MINIMUN_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions , 
       MAX(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS MAXIMIUM_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions,
	   ROUND(AVG(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions),2) AS AVERAGE_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Total_Dollar_Amount_Reimbursed_for_WIC_Card_Transactions desc;

/*Average Doller Rate During the WIC Card Transaction*/
SELECT Vendor_County,
       SUM(Number_of_WIC_Card_Transactions_Processed) AS Number_of_WIC_Card_Transactions_Processed,
	   SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Dollar_Amount_Reimbursed_for_WIC_Card_Transactions, 
	   ROUND((SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions)/SUM(Number_of_WIC_Card_Transactions_Processed)),2)  AS Transactions_Average_Doller_Rate
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Vendor_County;

/*Average Doller Rate During the WIC Card Transaction with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Number_of_WIC_Card_Transactions_Processed) AS Number_of_WIC_Card_Transactions_Processed,
	   SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions) AS Dollar_Amount_Reimbursed_for_WIC_Card_Transactions, 
	   ROUND((SUM(Dollar_Amount_Reimbursed_for_WIC_Card_Transactions)/SUM(Number_of_WIC_Card_Transactions_Processed)),2)  AS Transactions_Average_Doller_Rate
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County
ORDER BY Vendor_County_Code;

/*Doller Rate During the Food Instruments Redemption By Year and Month Wise Stats */
SELECT Obligation_Year_and_Month,
       Vendor_County,
       Number_of_WIC_Card_Transactions_Processed,
	   Dollar_Amount_Reimbursed_for_WIC_Card_Transactions , 
	   ROUND((Dollar_Amount_Reimbursed_for_WIC_Card_Transactions / Number_of_WIC_Card_Transactions_Processed),2)  AS Transactions_Average_Doller_Rate
FROM [dbo].[Dataset 1] 
ORDER BY Obligation_Year_and_Month;

/*County Wise Average Cost per Family Stats*/
SELECT Vendor_County ,
       SUM(Average_Cost_per_Family) AS Average_Cost_per_Family
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County  
ORDER BY Vendor_County ;

/*County Wise Average Cost per Family Stats with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Average_Cost_per_Family) AS Average_Cost_per_Family
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County  
ORDER BY Vendor_County_Code ;

/*Percentage of County Wise Average Cost per Family Stats*/
SELECT Vendor_County ,
       SUM(Average_Cost_per_Family) AS Average_Cost_per_Family,
       ROUND(SUM(Average_Cost_per_Family) * 100.0 / (select SUM(Average_Cost_per_Family) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY Vendor_County ;

/*Percentage of County Wise Average Cost per Family Stats with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Average_Cost_per_Family) AS Average_Cost_per_Family,
       ROUND(SUM(Average_Cost_per_Family) * 100.0 / (select SUM(Average_Cost_per_Family) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County 
ORDER BY Vendor_County_Code;

/*Percentage of County Wise Average Cost per Family Stats in Descending Order*/
SELECT Vendor_County ,
       SUM(Average_Cost_per_Family) AS Average_Cost_per_Family,
       ROUND(SUM(Average_Cost_per_Family) * 100.0 / (select SUM(Average_Cost_per_Family) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County 
ORDER BY IN_Percentage DESC;

/*Percentage of County Wise Average Cost per Family Stats in Descending Order with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Average_Cost_per_Family) AS Average_Cost_per_Family,
       ROUND(SUM(Average_Cost_per_Family) * 100.0 / (select SUM(Average_Cost_per_Family) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County 
ORDER BY IN_Percentage DESC;

/*Top 5 Counties with The Total Average Cost per Family*/
SELECT Vendor_County ,
       SUM(Average_Cost_per_Family) AS Average_Cost_per_Family
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County  
ORDER BY Average_Cost_per_Family DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Top 5 Counties with The Total Average Cost per Family with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Average_Cost_per_Family) AS Average_Cost_per_Family
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County  
ORDER BY Average_Cost_per_Family DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Bottom 5 Counties with The Total Average Cost per Family*/
SELECT Vendor_County ,
       SUM(Average_Cost_per_Family) AS Average_Cost_per_Family
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County  
ORDER BY Average_Cost_per_Family
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Bottom 5 Counties with The Total Average Cost per Family with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County,
       SUM(Average_Cost_per_Family) AS Average_Cost_per_Family
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County 
ORDER BY Average_Cost_per_Family
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*County Wise Total, Minimum, Maximum and Average Average Cost per Family */
SELECT Vendor_County ,  
	   SUM(Average_Cost_per_Family) AS Total_Average_Cost_per_Family,
	   MIN(Average_Cost_per_Family)AS MINIMUN_Average_Cost_per_Family , 
       MAX(Average_Cost_per_Family) AS MAXIMIUM_Average_Cost_per_Family,
	   ROUND(AVG(Average_Cost_per_Family),2) AS AVERAGE_Average_Cost_per_Family
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County  
ORDER BY Vendor_County ;

/*County Wise Total, Minimum, Maximum and Average Average Cost per Family with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County, 
	   SUM(Average_Cost_per_Family) AS Total_Average_Cost_per_Family,
	   MIN(Average_Cost_per_Family)AS MINIMUN_Average_Cost_per_Family , 
       MAX(Average_Cost_per_Family) AS MAXIMIUM_Average_Cost_per_Family,
	   ROUND(AVG(Average_Cost_per_Family),2) AS AVERAGE_Average_Cost_per_Family
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County  
ORDER BY Vendor_County_Code;

/*County Wise Total, Minimum, Maximum and Average Average Cost per Family & Orderd By Total Average Cost per Family*/
SELECT Vendor_County ,  
	   SUM(Average_Cost_per_Family) AS Total_Average_Cost_per_Family,
	   MIN(Average_Cost_per_Family)AS MINIMUN_Average_Cost_per_Family , 
       MAX(Average_Cost_per_Family) AS MAXIMIUM_Average_Cost_per_Family,
	   ROUND(AVG(Average_Cost_per_Family),2) AS AVERAGE_Average_Cost_per_Family
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County  
ORDER BY Total_Average_Cost_per_Family desc;

/*County Wise Total, Minimum, Maximum and Average Average Cost per Family & Orderd By Total Average Cost per Famil with Vendor County Code*/
SELECT Vendor_County_Code,Vendor_County, 
	   SUM(Average_Cost_per_Family) AS Total_Average_Cost_per_Family,
	   MIN(Average_Cost_per_Family)AS MINIMUN_Average_Cost_per_Family , 
       MAX(Average_Cost_per_Family) AS MAXIMIUM_Average_Cost_per_Family,
	   ROUND(AVG(Average_Cost_per_Family),2) AS AVERAGE_Average_Cost_per_Family
FROM [dbo].[Dataset 1] 
GROUP BY Vendor_County_Code,Vendor_County  
ORDER BY Total_Average_Cost_per_Family desc;

/*Obligation Year and Month Average Cost per Family Stats*/
SELECT Obligation_Year_and_Month,
       SUM(Average_Cost_per_Family) AS Average_Cost_per_Family
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Obligation_Year_and_Month;

/*Percentage of Obligation Year and Month Average Cost per Family Stats*/
SELECT Obligation_Year_and_Month,
       SUM(Average_Cost_per_Family) AS Average_Cost_per_Family,
       ROUND(SUM(Average_Cost_per_Family) * 100.0 / (select SUM(Average_Cost_per_Family) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month
ORDER BY Obligation_Year_and_Month;

/*Percentage of Obligation Year and Month Average Cost per Family Stats in Descending Order*/
SELECT Obligation_Year_and_Month,
       SUM(Average_Cost_per_Family) AS Average_Cost_per_Family,
       ROUND(SUM(Average_Cost_per_Family) * 100.0 / (select SUM(Average_Cost_per_Family) from [dbo].[Dataset 1] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month
ORDER BY IN_Percentage DESC;

/*Top 5 Counties Average Cost per Family */
SELECT Obligation_Year_and_Month,
       SUM(Average_Cost_per_Family) AS Average_Cost_per_Family
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Average_Cost_per_Family DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Bottom 5 Counties Average Cost per Family */
SELECT Obligation_Year_and_Month,
       SUM(Average_Cost_per_Family) AS Average_Cost_per_Family
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Average_Cost_per_Family
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Obligation Year and Month Total, Minimum, Maximum and Average Average Cost per Family Redeemed */
SELECT Obligation_Year_and_Month,  
	   SUM(Average_Cost_per_Family) AS Total_Average_Cost_per_Family,
	   MIN(Average_Cost_per_Family)AS MINIMUN_Average_Cost_per_Family , 
       MAX(Average_Cost_per_Family) AS MAXIMIUM_Average_Cost_per_Family,
	   ROUND(AVG(Average_Cost_per_Family),2) AS AVERAGE_Average_Cost_per_Family
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Obligation_Year_and_Month;

/*Obligation Year and Month Total, Minimum, Maximum and Average Average Cost per Family Redeemed & Orderd By Total Number of Average Cost per Family Redeemed*/
SELECT Obligation_Year_and_Month,  
	   SUM(Average_Cost_per_Family) AS Total_Average_Cost_per_Family,
	   MIN(Average_Cost_per_Family)AS MINIMUN_Average_Cost_per_Family , 
       MAX(Average_Cost_per_Family) AS MAXIMIUM_Average_Cost_per_Family,
	   ROUND(AVG(Average_Cost_per_Family),2) AS AVERAGE_Average_Cost_per_Family
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month 
ORDER BY Total_Average_Cost_per_Family desc;

/*Statewide Infant Formula Rebate Stats*/
SELECT DISTINCT Vendor_County = 'Statewide',
       SUM(Statewide_Infant_Formula_Rebate) AS Statewide_Infant_Formula_Rebate
FROM [dbo].[Dataset 1] ;

/*Statewide Total Cost Adjusted Stats*/
SELECT DISTINCT Vendor_County = 'Statewide',
       SUM(Total_Cost_Adjusted) AS Total_Cost_Adjusted
FROM [dbo].[Dataset 1] ;

/*Statewide Average Cost Adjusted Stats*/
SELECT DISTINCT Vendor_County = 'Statewide',
       SUM(Average_Cost_Adjusted) AS Average_Cost_Adjusted
FROM [dbo].[Dataset 1] ;

/*Statewide Infant Formula Rebate Stats with Obligation Year and Month*/
SELECT DISTINCT Vendor_County = 'Statewide', Obligation_Year_and_Month,
       SUM(Statewide_Infant_Formula_Rebate) AS Statewide_Infant_Formula_Rebate
FROM [dbo].[Dataset 1]
GROUP BY Obligation_Year_and_Month
ORDER BY Obligation_Year_and_Month;

/*Statewide Total Cost Adjusted Stats with Obligation Year and Month*/
SELECT DISTINCT Vendor_County = 'Statewide', Obligation_Year_and_Month,
       SUM(Total_Cost_Adjusted) AS Total_Cost_Adjusted
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month
ORDER BY Obligation_Year_and_Month;

/*Statewide Average Cost Adjusted Stats with Obligation Year and Month*/
SELECT DISTINCT Vendor_County = 'Statewide', Obligation_Year_and_Month,
       SUM(Average_Cost_Adjusted) AS Average_Cost_Adjusted
FROM [dbo].[Dataset 1] 
GROUP BY Obligation_Year_and_Month
ORDER BY Obligation_Year_and_Month;

/*--------------------------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------------------------*/

/*County,Participant Category & Year wise Total Number of Participants Redeemed, Total Number Vouchers Redeemed, Total Cost Vouchers, Toatl Average Cost Stats*/
SELECT Vendor_Location,Participant_Category,Year,
	   SUM(Number_of_Participants_Redeemed) AS Number_of_Participants_Redeemed,
	   SUM(Number_Vouchers_Redeemed) AS Number_Vouchers_Redeemed,
	   ROUND(SUM(Total_Cost_Vouchers),2) AS Total_Cost_Vouchers,
	   ROUND(SUM(Average_Cost),2) AS Average_Cost
FROM [dbo].[Dataset 2]
GROUP BY  Vendor_Location,Participant_Category,Year
ORDER BY Vendor_Location,Year;

/*County wise Total Number of Participants Redeemed, Total Number Vouchers Redeemed, Total Cost Vouchers, Toatl Average Cost Stats*/
SELECT Vendor_Location,
	   SUM(Number_of_Participants_Redeemed) AS Number_of_Participants_Redeemed,
	   SUM(Number_Vouchers_Redeemed) AS Number_Vouchers_Redeemed,
	   ROUND(SUM(Total_Cost_Vouchers),2) AS Total_Cost_Vouchers,
	   ROUND(SUM(Average_Cost),2) AS Average_Cost
FROM [dbo].[Dataset 2]
GROUP BY  Vendor_Location
ORDER BY Vendor_Location;

/*Participant Category wise Total Number of Participants Redeemed, Total Number Vouchers Redeemed, Total Cost Vouchers, Toatl Average Cost Stats*/
SELECT Participant_Category,
	   SUM(Number_of_Participants_Redeemed) AS Number_of_Participants_Redeemed,
	   SUM(Number_Vouchers_Redeemed) AS Number_Vouchers_Redeemed,
	   ROUND(SUM(Total_Cost_Vouchers),2) AS Total_Cost_Vouchers,
	   ROUND(SUM(Average_Cost),2) AS Average_Cost
FROM [dbo].[Dataset 2]
GROUP BY  Participant_Category
ORDER BY Participant_Category;

/*Year wise Total Number of Participants Redeemed, Total Number Vouchers Redeemed, Total Cost Vouchers, Toatl Average Cost Stats*/
SELECT Year,
	   SUM(Number_of_Participants_Redeemed) AS Number_of_Participants_Redeemed,
	   SUM(Number_Vouchers_Redeemed) AS Number_Vouchers_Redeemed,
	   ROUND(SUM(Total_Cost_Vouchers),2) AS Total_Cost_Vouchers,
	   ROUND(SUM(Average_Cost),2) AS Average_Cost
FROM [dbo].[Dataset 2]
GROUP BY  Year
ORDER BY Year;

/*Average Cost trend with respect to year*/
SELECT  Year , ROUND(SUM(Average_Cost),2) AS Average_Cost
FROM [dbo].[Dataset 2] 
GROUP BY Year 
ORDER BY Average_Cost;

/*Average Cost trend with respect to year in Descending Order*/
SELECT  Year , ROUND(SUM(Average_Cost),2) AS Average_Cost
FROM [dbo].[Dataset 2] 
GROUP BY Year 
ORDER BY Average_Cost DESC;

/*Percentage of Participants redeemed as per Vendor Location*/
SELECT Vendor_Location,
       SUM(Number_of_Participants_Redeemed) AS Total_Number_of_Participants_Redeemed,
       ROUND(SUM(Number_of_Participants_Redeemed) * 100.0 / (select SUM(Number_of_Participants_Redeemed) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Vendor_Location
ORDER BY Vendor_Location;

/*Percentage of Participants redeemed as per category*/
SELECT Participant_Category,
       SUM(Number_of_Participants_Redeemed) AS Total_Number_of_Participants_Redeemed,
       ROUND(SUM(Number_of_Participants_Redeemed) * 100.0 / SUM(SUM(Number_of_Participants_Redeemed)) OVER(),2)  AS IN_Percentage
FROM [dbo].[Dataset 2] 
GROUP BY Participant_Category 
ORDER BY Participant_Category;

SELECT Participant_Category,
       SUM(Number_of_Participants_Redeemed) AS Total_Number_of_Participants_Redeemed,
       ROUND(SUM(Number_of_Participants_Redeemed) * 100.0 / (select SUM(Number_of_Participants_Redeemed) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Participant_Category 
ORDER BY Participant_Category;

/*Percentage of Participants redeemed as per category in Descending Order*/
SELECT Participant_Category,
       SUM(Number_of_Participants_Redeemed) AS Total_Number_of_Participants_Redeemed,
       ROUND(SUM(Number_of_Participants_Redeemed) * 100.0 / (select SUM(Number_of_Participants_Redeemed) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Participant_Category 
ORDER BY IN_Percentage DESC;

/*Percentage of Participants redeemed as per Year*/
SELECT Year,
       SUM(Number_of_Participants_Redeemed) AS Total_Number_of_Participants_Redeemed,
       ROUND(SUM(Number_of_Participants_Redeemed) * 100.0 / (select SUM(Number_of_Participants_Redeemed) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Year
ORDER BY Year;

/*Percentage of Participants redeemed as per Year_Month*/
SELECT Year_Month,
       SUM(Number_of_Participants_Redeemed) AS Total_Number_of_Participants_Redeemed,
       ROUND(SUM(Number_of_Participants_Redeemed) * 100.0 / (select SUM(Number_of_Participants_Redeemed) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Year_Month
ORDER BY Year_Month;

/*Percentage of Vouchers Redeemed as per Vendor Location*/
SELECT Vendor_Location,
       SUM(Number_Vouchers_Redeemed) AS Number_Vouchers_Redeemed,
       ROUND(SUM(Number_Vouchers_Redeemed) * 100.0 / (select SUM(Number_Vouchers_Redeemed) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Vendor_Location 
ORDER BY Vendor_Location;

/*Percentage of Vouchers Redeemed as per category*/
SELECT Participant_Category,
       SUM(Number_Vouchers_Redeemed) AS Number_Vouchers_Redeemed,
       ROUND(SUM(Number_Vouchers_Redeemed) * 100.0 / (select SUM(Number_Vouchers_Redeemed) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Participant_Category 
ORDER BY Participant_Category;

/*Percentage of Vouchers Redeemed as per Year*/
SELECT Year,
       SUM(Number_Vouchers_Redeemed) AS Number_Vouchers_Redeemed,
       ROUND(SUM(Number_Vouchers_Redeemed) * 100.0 / (select SUM(Number_Vouchers_Redeemed) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Year 
ORDER BY Year;

/*Percentage of Vouchers Redeemed as per Year_Month*/
SELECT Year_Month,
       SUM(Number_Vouchers_Redeemed) AS Number_Vouchers_Redeemed,
       ROUND(SUM(Number_Vouchers_Redeemed) * 100.0 / (select SUM(Number_Vouchers_Redeemed) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Year_Month 
ORDER BY Year_Month;

/*Percentage of Total Cost Vouchers as per Vendor Location*/
SELECT Vendor_Location,
       ROUND(SUM(Total_Cost_Vouchers),2) AS Total_Cost_Vouchers,
       ROUND(SUM(Total_Cost_Vouchers) * 100.0 / (select SUM(Total_Cost_Vouchers) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Vendor_Location 
ORDER BY Vendor_Location;

/*Percentage of Total Cost Vouchers as per category*/
SELECT Participant_Category,
       ROUND(SUM(Total_Cost_Vouchers),2) AS Total_Cost_Vouchers,
       ROUND(SUM(Total_Cost_Vouchers) * 100.0 / (select SUM(Total_Cost_Vouchers) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Participant_Category 
ORDER BY Participant_Category;

/*Percentage of Total Cost Vouchers as per Year*/
SELECT Year,
       ROUND(SUM(Total_Cost_Vouchers),2) AS Total_Cost_Vouchers,
       ROUND(SUM(Total_Cost_Vouchers) * 100.0 / (select SUM(Total_Cost_Vouchers) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Year 
ORDER BY Year;

/*Percentage of Total Cost Vouchers as per Year*/
SELECT Year_Month,
       ROUND(SUM(Total_Cost_Vouchers),2) AS Total_Cost_Vouchers,
       ROUND(SUM(Total_Cost_Vouchers) * 100.0 / (select SUM(Total_Cost_Vouchers) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Year_Month 
ORDER BY Year_Month;

/*Percentage of Average_Cost as per Vendor Location*/
SELECT Vendor_Location,
       ROUND(SUM(Average_Cost),2) AS Average_Cost,
       ROUND(SUM(Average_Cost) * 100.0 / (select SUM(Average_Cost) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Vendor_Location 
ORDER BY Vendor_Location;

/*Percentage of Average_Cost as per category*/
SELECT Participant_Category,
       ROUND(SUM(Average_Cost),2) AS Average_Cost,
       ROUND(SUM(Average_Cost) * 100.0 / (select SUM(Average_Cost) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Participant_Category 
ORDER BY Participant_Category;

/*Percentage of Average_Cost as per Year*/
SELECT Year,
       ROUND(SUM(Average_Cost),2) AS Average_Cost,
       ROUND(SUM(Average_Cost) * 100.0 / (select SUM(Average_Cost) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Year 
ORDER BY Year;

/*Percentage of Average_Cost as per Year*/
SELECT Year_Month,
       ROUND(SUM(Average_Cost),2) AS Average_Cost,
       ROUND(SUM(Average_Cost) * 100.0 / (select SUM(Average_Cost) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Year_Month 
ORDER BY Year_Month;

/*Percentage of Total Cost Vouchers as per category*/
SELECT Participant_Category,
       ROUND(SUM(Total_Cost_Vouchers),2) AS Total_Cost_Vouchers,
       ROUND(SUM(Total_Cost_Vouchers) * 100.0 / (select SUM(Total_Cost_Vouchers) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Participant_Category 
ORDER BY Participant_Category;

/*Percentage of Total Cost Vouchers as per Year*/
SELECT Year,
       ROUND(SUM(Total_Cost_Vouchers),2) AS Total_Cost_Vouchers,
       ROUND(SUM(Total_Cost_Vouchers) * 100.0 / (select SUM(Total_Cost_Vouchers) from [dbo].[Dataset 2] ),2)  AS IN_Percentage 
FROM [dbo].[Dataset 2] 
GROUP BY Year 
ORDER BY Year;


/*ISNULL(@Product1 / NULLIF(@Product2,0),0)*/

SELECT Vendor_Location,Participant_Category,
       SUM(Number_of_Participants_Redeemed) AS Number_of_Participants_Redeemed,
       SUM(Number_Vouchers_Redeemed) AS Number_Vouchers_Redeemed,
	   (SUM(Number_Vouchers_Redeemed)-SUM(Number_of_Participants_Redeemed)) AS Vouchers,
	   ROUND(SUM(Total_Cost_Vouchers),2) AS Total_Cost_Vouchers,
	   ISNULL(ROUND(SUM(Total_Cost_Vouchers) /  NULLIF(SUM(Number_Vouchers_Redeemed)-SUM(Number_of_Participants_Redeemed),0),2),0)  AS Cost_of_each_Voucher
FROM [dbo].[Dataset 2] 
GROUP BY Vendor_Location,Participant_Category
ORDER BY Vendor_Location,Participant_Category DESC;

/*--------------------------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------------------------*/


SELECT * FROM [dbo].[Dataset 2]

/*Number_of_Participants_Redeemed Vs Number of Families Redeemed Food Benefits Relation*/
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Number_of_Participants_Redeemed  as FLOAT)),2) AS Number_of_Participants_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by B.Vendor_Location;

/*Number_of_Participants_Redeemed Vs Number of Families Redeemed Food Benefits Relation Orderd by Number of Families Redeemed Food Benefits in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Number_of_Participants_Redeemed as FLOAT)),2) AS Number_of_Participants_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_Families_Redeemed_Food_Benefits DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Number_of_Participants_Redeemed Vs Number of Families Redeemed Food Benefits Relation Orderd by Number of Families Redeemed Food Benefits in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Number_of_Participants_Redeemed as FLOAT)),2) AS Number_of_Participants_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_Families_Redeemed_Food_Benefits ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Number_of_Participants_Redeemed Vs Number of Families Redeemed Food Benefits Relation Orderd by Number of Participants Redeemed in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Number_of_Participants_Redeemed as FLOAT)),2) AS Number_of_Participants_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Number_of_Participants_Redeemed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Number_of_Participants_Redeemed Vs Number of Families Redeemed Food Benefits Relation Orderd by Number of Participants Redeemed in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Number_of_Participants_Redeemed as FLOAT)),2) AS Number_of_Participants_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Number_of_Participants_Redeemed ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Number_of_Participants_Redeemed Vs Number of Families Redeemed Food Benefits Relation with Vendor County Code*/
SELECT A.Vendor_County_Code,B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Number_of_Participants_Redeemed  as FLOAT)),2) AS Number_of_Participants_Redeemed	  
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by A.Vendor_County_Code,B.Vendor_Location
order by B.Vendor_Location;

/* Number Vouchers Redeemed Vs Number of Families Redeemed Food Benefits Relation*/
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Number_Vouchers_Redeemed  as FLOAT)),2) AS Number_Vouchers_Redeemed   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by B.Vendor_Location;

/* Number Vouchers Redeemed Vs Number of Families Redeemed Food Benefits Relation Orderd by Number of Families Redeemed Food Benefits in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Number_Vouchers_Redeemed as FLOAT)),2) AS Number_Vouchers_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_Families_Redeemed_Food_Benefits DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/* Number Vouchers Redeemed Vs Number of Families Redeemed Food Benefits Relation Orderd by Number of Families Redeemed Food Benefits in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Number_Vouchers_Redeemed as FLOAT)),2) AS Number_Vouchers_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_Families_Redeemed_Food_Benefits ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/* Number Vouchers Redeemed Vs Number of Families Redeemed Food Benefits Relation Orderd by Number Vouchers Redeemedd in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Number_Vouchers_Redeemed as FLOAT)),2) AS Number_Vouchers_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Number_Vouchers_Redeemed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/* Number Vouchers Redeemed Vs Number of Families Redeemed Food Benefits Relation Orderd by Number Vouchers Redeemed in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Number_Vouchers_Redeemed as FLOAT)),2) AS Number_Vouchers_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Number_Vouchers_Redeemed ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Number Vouchers Redeemed Vs Number of Families Redeemed Food Benefits Relation with Vendor County Code*/
SELECT A.Vendor_County_Code,B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Number_Vouchers_Redeemed  as FLOAT)),2) AS Number_Vouchers_Redeemed  	  
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by A.Vendor_County_Code,B.Vendor_Location
order by B.Vendor_Location;

/*Total Cost Voucher Vs Number of Families Redeemed Food Benefits Relation*/
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Total_Cost_Vouchers as FLOAT)),2) AS Cost_Vouchers	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by B.Vendor_Location;

/*Total Cost Voucher Vs Number of Families Redeemed Food Benefits Relation Orderd by Number of Families Redeemed Food Benefits in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Total_Cost_Vouchers as FLOAT)),2) AS Total_Cost_Vouchers	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_Families_Redeemed_Food_Benefits DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Total Cost Voucher Vs Number of Families Redeemed Food Benefits Relation Orderd by Number of Families Redeemed Food Benefits in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Total_Cost_Vouchers as FLOAT)),2) AS Total_Cost_Vouchers	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_Families_Redeemed_Food_Benefits ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Total Cost Voucher Vs Number of Families Redeemed Food Benefits Relation Orderd by Total_Cost_Vouchers in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Total_Cost_Vouchers as FLOAT)),2) AS Total_Cost_Vouchers	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Total_Cost_Vouchers DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Total Cost Voucher Vs Number of Families Redeemed Food Benefits Relation Orderd by Total_Cost_Vouchers in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Total_Cost_Vouchers as FLOAT)),2) AS Total_Cost_Vouchers	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Total_Cost_Vouchers ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Total Cost Voucher Vs Number of Families Redeemed Food Benefits Relation with Vendor County Code*/
SELECT A.Vendor_County_Code,B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Total_Cost_Vouchers as FLOAT)),2) AS Cost_Vouchers	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by A.Vendor_County_Code,B.Vendor_Location
order by B.Vendor_Location;

/*Average Cost Vs Number of Families Redeemed Food Benefits Relation*/
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Average_Cost  as FLOAT)),2) AS Average_Cost	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by B.Vendor_Location;

/*Average Cost Vs Number of Families Redeemed Food Benefits Relation Orderd by Number of Families Redeemed Food Benefits in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Average_Cost as FLOAT)),2) AS Average_Cost	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_Families_Redeemed_Food_Benefits DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Average Cost Vs Number of Families Redeemed Food Benefits Relation Orderd by Number of Families Redeemed Food Benefits in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Average_Cost as FLOAT)),2) AS Average_Cost	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_Families_Redeemed_Food_Benefits ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Average Cost Vs Number of Families Redeemed Food Benefits Relation Orderd by Average_Cost in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Average_Cost as FLOAT)),2) AS Average_Cost	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Average_Cost DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Average Cost Vs Number of Families Redeemed Food Benefits Relation Orderd by Average_Cost in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Average_Cost as FLOAT)),2) AS Average_Cost	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Average_Cost ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Average Cost Vs Number of Families Redeemed Food Benefits Relation with Vendor County Code*/
SELECT A.Vendor_County_Code,B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Families_Redeemed_Food_Benefits as FLOAT)),2) AS Number_of_Families_Redeemed_Food_Benefits, 
       ROUND(SUM(CAST(B.Average_Cost  as FLOAT)),2) AS Average_Cost 	  
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by A.Vendor_County_Code,B.Vendor_Location
order by B.Vendor_Location;

/*Number of Participants Redeemed Vs Number of Food Instruments Redeemed Relation*/
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Numbe_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Number_of_Participants_Redeemed  as FLOAT)),2) AS Number_of_Participants_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by B.Vendor_Location;

/*Number of Participants Redeemed Vs Number of Food Instruments Redeemed Relation Orderd by Number_of_Food_Instruments_Redeemed in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Number_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Number_of_Participants_Redeemed as FLOAT)),2) AS Number_of_Participants_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_Food_Instruments_Redeemed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Number of Participants Redeemed Vs Number of Food Instruments Redeemed Relation Orderd by Number_of_Food_Instruments_Redeemed in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Number_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Number_of_Participants_Redeemed as FLOAT)),2) AS Number_of_Participants_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_Food_Instruments_Redeemed ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Number of Participants Redeemed Vs Number of Food Instruments Redeemed Relation Orderd by Number_of_Participants_Redeemed in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Number_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Number_of_Participants_Redeemed as FLOAT)),2) AS Number_of_Participants_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Number_of_Participants_Redeemed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Number of Participants Redeemed Vs Number of Food Instruments Redeemed Relation Orderd by Number_of_Participants_Redeemed in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Number_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Number_of_Participants_Redeemed as FLOAT)),2) AS Number_of_Participants_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Number_of_Participants_Redeemed ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Number of Participants Redeemed Vs Number of Food Instruments Redeemed Relation with Vendor County Code*/
SELECT A.Vendor_County_Code,B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Numbe_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Number_of_Participants_Redeemed  as FLOAT)),2) AS Number_of_Participants_Redeemed	  
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by A.Vendor_County_Code,B.Vendor_Location
order by B.Vendor_Location;

/* Number Vouchers Redeemed Vs Number of Food Instruments Redeemed Relation*/
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Numbe_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Number_Vouchers_Redeemed  as FLOAT)),2) AS Number_Vouchers_Redeemed   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by B.Vendor_Location;

/* Number Vouchers Redeemed Vs Number of Food Instruments Redeemed Relation Orderd by Number_of_Food_Instruments_Redeemed in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Number_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Number_Vouchers_Redeemed as FLOAT)),2) AS Number_Vouchers_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_Food_Instruments_Redeemed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/* Number Vouchers Redeemed Vs Number of Food Instruments Redeemed Relation Orderd by Number_of_Food_Instruments_Redeemed in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Number_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Number_Vouchers_Redeemed as FLOAT)),2) AS Number_Vouchers_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_Food_Instruments_Redeemed ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/* Number Vouchers Redeemed Vs Number of Food Instruments Redeemed Relation Orderd by Number_Vouchers_Redeemed in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Number_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Number_Vouchers_Redeemed as FLOAT)),2) AS Number_Vouchers_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Number_Vouchers_Redeemed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/* Number Vouchers Redeemed Vs Number of Food Instruments Redeemed Relation Orderd by Number_Vouchers_Redeemed in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Number_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Number_Vouchers_Redeemed as FLOAT)),2) AS Number_Vouchers_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Number_Vouchers_Redeemed ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Number Vouchers Redeemed Vs Number of Food Instruments Redeemed Relation with Vendor County Code*/
SELECT A.Vendor_County_Code,B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Numbe_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Number_Vouchers_Redeemed  as FLOAT)),2) AS Number_Vouchers_Redeemed  	  
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by A.Vendor_County_Code,B.Vendor_Location
order by B.Vendor_Location;

/*Total Cost Voucher Vs Number of Food Instruments Redeemed Relation*/
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Numbe_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Total_Cost_Vouchers as FLOAT)),2) AS Cost_Vouchers	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by B.Vendor_Location;

/*Total Cost Voucher Vs Number of Food Instruments Redeemed Relation Orderd by Number_of_Food_Instruments_Redeemed in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Number_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Total_Cost_Vouchers as FLOAT)),2) AS Total_Cost_Vouchers	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_Food_Instruments_Redeemed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Total Cost Voucher Vs Number of Food Instruments Redeemed Relation Orderd by Number_of_Food_Instruments_Redeemed in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Number_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Total_Cost_Vouchers as FLOAT)),2) AS Total_Cost_Vouchers	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_Food_Instruments_Redeemed ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Total Cost Voucher Vs Number of Food Instruments Redeemed Relation Orderd by Total_Cost_Vouchers in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Number_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Total_Cost_Vouchers as FLOAT)),2) AS Total_Cost_Vouchers	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Total_Cost_Vouchers DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Total Cost Voucher Vs Number of Food Instruments Redeemed Relation Orderd by Total_Cost_Vouchers in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Number_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Total_Cost_Vouchers as FLOAT)),2) AS Total_Cost_Vouchers	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Total_Cost_Vouchers ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Total Cost Voucher Vs Number of Food Instruments Redeemed Relation with Vendor County Code*/
SELECT A.Vendor_County_Code,B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Numbe_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Total_Cost_Vouchers as FLOAT)),2) AS Cost_Vouchers	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by A.Vendor_County_Code,B.Vendor_Location
order by B.Vendor_Location;

/*Average Cost Vs Number of Food Instruments Redeemed Relation*/
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Numbe_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Average_Cost  as FLOAT)),2) AS Average_Cost	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by B.Vendor_Location;

/*Average Cost Vs Number of Food Instruments Redeemed Relation Orderd by Number_of_Food_Instruments_Redeemed in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Number_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Average_Cost as FLOAT)),2) AS Average_Cost	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_Food_Instruments_Redeemed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Average Cost Vs Number of Food Instruments Redeemed Relation Orderd by Number_of_Food_Instruments_Redeemed in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Number_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Average_Cost as FLOAT)),2) AS Average_Cost	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_Food_Instruments_Redeemed ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Average Cost Vs Number of Food Instruments Redeemed Relation Orderd by Average_Cost in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Number_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Average_Cost as FLOAT)),2) AS Average_Cost	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Average_Cost DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Average Cost Vs Number of Food Instruments Redeemed Relation Orderd by Average_Cost in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Number_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Average_Cost as FLOAT)),2) AS Average_Cost	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Average_Cost ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Average Cost Vs Number of Food Instruments Redeemed Relation with Vendor County Code*/
SELECT A.Vendor_County_Code,B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_Food_Instruments_Redeemed as FLOAT)),2) AS Numbe_of_Food_Instruments_Redeemed, 
       ROUND(SUM(CAST(B.Average_Cost  as FLOAT)),2) AS Average_Cost 	  
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by A.Vendor_County_Code,B.Vendor_Location
order by B.Vendor_Location;

/*Number of Participants Redeemed Vs Number of WIC Card Transactions Processed Relation*/
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Number_of_Participants_Redeemed  as FLOAT)),2) AS Number_of_Participants_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by B.Vendor_Location;

/*Number of Participants Redeemed Vs Number of WIC Card Transactions Processed Relation Orderd by Number_of_WIC_Card_Transactions_Processed in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Number_of_Participants_Redeemed as FLOAT)),2) AS Number_of_Participants_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_WIC_Card_Transactions_Processed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Number of Participants Redeemed Vs Number of WIC Card Transactions Processed Relation Orderd by Number_of_WIC_Card_Transactions_Processed in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Number_of_Participants_Redeemed as FLOAT)),2) AS Number_of_Participants_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_WIC_Card_Transactions_Processed ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Number of Participants Redeemed Vs Number of WIC Card Transactions Processed Relation Orderd by Number_of_Participants_Redeemed in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Number_of_Participants_Redeemed as FLOAT)),2) AS Number_of_Participants_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Number_of_Participants_Redeemed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Number of Participants Redeemed Vs Number of WIC Card Transactions Processed Relation Orderd by Number_of_Participants_Redeemed in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Number_of_Participants_Redeemed as FLOAT)),2) AS Number_of_Participants_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Number_of_Participants_Redeemed ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Number of Participants Redeemed Vs Number of WIC Card Transactions Processed Relation with Vendor County Code*/
SELECT A.Vendor_County_Code,B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Number_of_Participants_Redeemed  as FLOAT)),2) AS Number_of_Participants_Redeemed	  
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by A.Vendor_County_Code,B.Vendor_Location
order by B.Vendor_Location;

/* Number Vouchers Redeemed Vs Number of WIC Card Transactions Processed Relation*/
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Number_Vouchers_Redeemed  as FLOAT)),2) AS Number_Vouchers_Redeemed   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by B.Vendor_Location;

/* Number Vouchers Redeemed Vs Number of WIC Card Transactions Processed Relation Orderd by Number_of_WIC_Card_Transactions_Processed in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Number_Vouchers_Redeemed as FLOAT)),2) AS Number_Vouchers_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_WIC_Card_Transactions_Processed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/* Number Vouchers Redeemed Vs Number of WIC Card Transactions Processed Relation Orderd by Number_of_WIC_Card_Transactions_Processed in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Number_Vouchers_Redeemed as FLOAT)),2) AS Number_Vouchers_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_WIC_Card_Transactions_Processed ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/* Number Vouchers Redeemed Vs Number of WIC Card Transactions Processed Relation Orderd by Number_Vouchers_Redeemed in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Number_Vouchers_Redeemed as FLOAT)),2) AS Number_Vouchers_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Number_Vouchers_Redeemed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/* Number Vouchers Redeemed Vs Number of WIC Card Transactions Processed Relation Orderd by Number_Vouchers_Redeemed in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Number_Vouchers_Redeemed as FLOAT)),2) AS Number_Vouchers_Redeemed	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Number_Vouchers_Redeemed ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Number Vouchers Redeemed Vs Number of WIC Card Transactions Processed Relation with Vendor County Code*/
SELECT A.Vendor_County_Code,B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Number_Vouchers_Redeemed  as FLOAT)),2) AS Number_Vouchers_Redeemed  	  
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by A.Vendor_County_Code,B.Vendor_Location
order by B.Vendor_Location;

/*Total Cost Voucher Vs Number of WIC Card Transactions Processed Relation*/
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Total_Cost_Vouchers as FLOAT)),2) AS Cost_Vouchers	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by B.Vendor_Location;

/*Total Cost Voucher Vs Number of WIC Card Transactions Processed Relation Orderd by Number_of_WIC_Card_Transactions_Processed in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Total_Cost_Vouchers as FLOAT)),2) AS Total_Cost_Vouchers	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_WIC_Card_Transactions_Processed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Total Cost Voucher Vs Number of WIC Card Transactions Processed Relation Orderd by Number_of_WIC_Card_Transactions_Processed in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Total_Cost_Vouchers as FLOAT)),2) AS Total_Cost_Vouchers	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_WIC_Card_Transactions_Processed ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Total Cost Voucher Vs Number of WIC Card Transactions Processed Relation Orderd by Total_Cost_Vouchers in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Total_Cost_Vouchers as FLOAT)),2) AS Total_Cost_Vouchers	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Total_Cost_Vouchers DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Total Cost Voucher Vs Number of WIC Card Transactions Processed Relation Orderd by Total_Cost_Vouchers in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Total_Cost_Vouchers as FLOAT)),2) AS Total_Cost_Vouchers	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Total_Cost_Vouchers ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Total Cost Voucher Vs Number of WIC Card Transactions Processed Relation with Vendor County Code*/
SELECT A.Vendor_County_Code,B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Total_Cost_Vouchers as FLOAT)),2) AS Cost_Vouchers	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by A.Vendor_County_Code,B.Vendor_Location
order by B.Vendor_Location;

/*Average Cost Vs Number of WIC Card Transactions Processed Relation*/
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Average_Cost  as FLOAT)),2) AS Average_Cost	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by B.Vendor_Location;

/*Average Cost Vs Number of WIC Card Transactions Processed Relation Orderd by Number_of_WIC_Card_Transactions_Processed in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Average_Cost as FLOAT)),2) AS Average_Cost	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_WIC_Card_Transactions_Processed DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Average Cost Vs Number of WIC Card Transactions Processed Relation Orderd by Number_of_WIC_Card_Transactions_Processed in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Average_Cost as FLOAT)),2) AS Average_Cost	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by Number_of_WIC_Card_Transactions_Processed ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Average Cost Vs Number of WIC Card Transactions Processed Relation Orderd by Average_Cost in Descending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Average_Cost as FLOAT)),2) AS Average_Cost	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Average_Cost DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Average Cost Vs Number of WIC Card Transactions Processed Relation Orderd by Average_Cost in Ascending */
SELECT B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Average_Cost as FLOAT)),2) AS Average_Cost	   
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by B.Vendor_Location
order by  Average_Cost ASC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

/*Average Cost Vs Number of WIC Card Transactions Processed Relation with Vendor County Code*/
SELECT A.Vendor_County_Code,B.Vendor_Location, 
       ROUND(SUM(CAST(A.Number_of_WIC_Card_Transactions_Processed as FLOAT)),2) AS Number_of_WIC_Card_Transactions_Processed, 
       ROUND(SUM(CAST(B.Average_Cost  as FLOAT)),2) AS Average_Cost 	  
FROM [dbo].[Dataset 2] AS B
JOIN [dbo].[Dataset 1] AS A
ON B.Vendor_Location = A.Vendor_County
group by A.Vendor_County_Code,B.Vendor_Location
order by B.Vendor_Location;







