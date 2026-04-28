-- Total prescriptions per practice
SELECT PRACTICE_CODE, COUNT(*) AS TotalPrescriptions
FROM Prescriptions
GROUP BY PRACTICE_CODE;

-- Most prescribed drugs
SELECT TOP 10 BNF_CODE, SUM(ITEMS) AS TotalItems
FROM Prescriptions
GROUP BY BNF_CODE
ORDER BY TotalItems DESC;
