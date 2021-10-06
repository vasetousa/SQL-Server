USE [Gringotts]

SELECT TOP 2
[DepositGroup]
FROM
(SELECT
[DepositGroup], AVG([MagicWandSize]) AS [MinimumtMagicWand]
FROM
[WizzardDeposits]
GROUP BY [DepositGroup]) AS Deposits
ORDER BY [MinimumtMagicWand]