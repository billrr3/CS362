/*************************************************************************************************
* Author:	William Reid
* Email: W.reid6@my.denver.coloradotech.edu
* Description:	This script is created to answer questions for WK02-Data Normalization Assignment 
*
* Notes: Homework  2: WK02-Data Normalization Assignment 
**************************************************************************************************
* Change History
**************************************************************************************************
* Date:			Author:			Description:
* ----------    ---------- 		--------------------------------------------------
* 10/10/2018	WReid			Lab 00
*************************************************************************************************
* Usage:
*************************************************************************************************
Execute each batch of the script sequentially - Assumption is once in cia_factbook_db it will remain for the queries
*************************************************************************************************/

-- Question 1 Select the top 10 Lakes with the largest area size?--
USE cia_factbook_db

SELECT TOP(10) [Name]
	,[AREA]
From dbo.Lake
Order By [Area] desc;

/*  Question 2 You found an expert prediction that a Sea level will raise six feet at the end of the next five year,
 calculate the depth of each Sea five years from now? */
SELECT [NAME], ([Depth] + 6) AS Projected_Sea_Depth
FROM dbo.Sea;

-- Question 3 Display unique Rivers for your report?--
SELECT Distinct [River]
from dbo.River 

-- Question 4 Calculate the result of the sum of 4 and 5, multiplied by 6 using SQL?--
SELECT ( 4 + 5 ) * 6 AS Results;

-- Question 5 Display all columns from Airport table, in a descending order of Airport name by state?--
SELECT * 
FROM dbo.Airport
WHERE [country] = 'USA'
Order by [Province] ,[NAME] desc;