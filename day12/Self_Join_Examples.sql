select * from EmployMgr
GO

/* Implement Self-Join */

SELECT E1.Empno 'Manager Id', 
E2.Empno 'Employ Id', 
E1.Name
'Manager Name',
E2.Name 'Employ Name'
FROM EmployMgr E1 INNER JOIN EmployMgr E2 
ON E1.Empno = E2.MgrID
ORDER BY E1.Empno
GO


SELECT E1.Empno 'Manager Id', 
E2.Empno 'Employ Id', 
CASE WHEN E1.name IS NULL THEN 'No Manager'
ELSE 
E1.Name  END 
'Manager Name',
E2.Name 'Employ Name'
FROM EmployMgr E1 RIGHT JOIN EmployMgr E2 
ON E1.Empno = E2.MgrID
ORDER BY E1.Empno
GO
