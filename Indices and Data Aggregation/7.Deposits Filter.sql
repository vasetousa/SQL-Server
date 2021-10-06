USE [Gringotts]

SELECT
*
FROM
(SELECT 
[DepositGroup], SUM([DepositAmount]) AS [TotalSum]
FROM
[WizzardDeposits]
WHERE [MagicWandCreator] = 'Ollivander family'
GROUP BY [DepositGroup]) AS Depos
WHERE [TotalSum] < 150000
ORDER BY [TotalSum] DESC


