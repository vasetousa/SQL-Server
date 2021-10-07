--1
USE [Gringotts]

SELECT SUBSTRING([FirstName], 1, 1) AS [FirstLetter]
FROM
[WizzardDeposits]
GROUP BY [DepositGroup], SUBSTRING([FirstName], 1, 1)
HAVING [DepositGroup] = 'Troll Chest'
ORDER BY SUBSTRING([FirstName], 1, 1) ASC


--2
 SELECT LEFT([FirstName], 1) AS [FirstLetter]
FROM 
[WizzardDeposits]
GROUP BY [DepositGroup], LEFT([FirstName], 1)
HAVING [DepositGroup] = 'Troll Chest'
ORDER BY LEFT([FirstName], 1)

