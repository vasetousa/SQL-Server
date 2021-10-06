USE [Gringotts]

SELECT
*
FROM
(SELECT 
[DepositGroup], [MagicWandCreator], MIN([DepositCharge]) AS [MinDepositCharge]
FROM
[WizzardDeposits]
GROUP BY [DepositGroup], [MagicWandCreator]) AS [DepoCreator]


