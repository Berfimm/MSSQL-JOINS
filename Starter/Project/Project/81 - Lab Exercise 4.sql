---------------------------------------------------------------------
-- LAB 04
--
-- Exercise 4
---------------------------------------------------------------------

USE TSQL;
GO

---------------------------------------------------------------------
-- Task 1
-- 
--
-- Write a SELECT statement to retrieve the custid and contactname columns from the Sales.Customers table and the orderid column from the Sales.Orders table. The statement should retrieve all rows from the Sales.Customers table.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 82 - Lab Exercise 4 - Task 1 Result.txt. 
--
-- Notice the values in the column orderid. Are there any missing values (marked as NULL)? Why? 
-- 2 TANE NULL DE�ER�M�Z VAR. 1.TABLODAK� T�M DE�ERLER� �STED��� ���N LEFT JOIN KULLANDIK.O Y�ZDEN E�LE�MEYEN 2 DE�ER� DE GET�RD�.
---------------------------------------------------------------------
SELECT C.custid,contactname,orderid 
FROM Sales.Customers AS C
LEFT JOIN Sales.Orders AS O ON  O.custid = C.custid
where O.orderid is null;





