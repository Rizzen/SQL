WITH Hierachy 
AS
(
SELECT depts.ID, ФИО,  Название, [Тип подразделения], depts.[ID родительского подразделения]
FROM Сотрудники AS emp
INNER JOIN Подразделения AS depts 
	ON [ID подразделения] = depts.ID

UNION ALL

SELECT d1.ID, emp.ФИО, h.Название, h.[Тип подразделения], h.[ID родительского подразделения]
FROM Сотрудники AS emp
INNER JOIN Подразделения AS d1
	ON [ID подразделения] = d1.ID
INNER JOIN Hierachy AS h
	ON d1.[ID родительского подразделения] = h.ID
)

SELECT ФИО, Название, [Тип подразделения]
FROM Hierachy
ORDER BY ФИО


