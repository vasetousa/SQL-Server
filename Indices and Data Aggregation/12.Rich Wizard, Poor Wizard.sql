USE [Gringotts]

SELECT SUM([Difference]) AS [SumDifference]
FROM (
SELECT  [FirstName] AS [Host Wizzard],
		[DepositAmount] AS [Host Wizard Deposit],
		LEAD([FirstName]) OVER(ORDER BY [Id]) AS [Guest Wizzard],
		LEAD([DepositAmount]) OVER(ORDER BY [Id]) AS [Guest Wizzard Deposit],
		[DepositAmount] - LEAD([DepositAmount]) OVER(ORDER BY [Id]) AS [Difference]
  FROM  [WizzardDeposits])  AS [DifferenceSubQuery]
		

			
