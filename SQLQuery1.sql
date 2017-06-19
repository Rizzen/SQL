WITH Hierachy 
AS
(
SELECT depts.ID, ���,  ��������, [��� �������������], depts.[ID ������������� �������������]
FROM ���������� AS emp
INNER JOIN ������������� AS depts 
	ON [ID �������������] = depts.ID

UNION ALL

SELECT d1.ID, emp.���, h.��������, h.[��� �������������], h.[ID ������������� �������������]
FROM ���������� AS emp
INNER JOIN ������������� AS d1
	ON [ID �������������] = d1.ID
INNER JOIN Hierachy AS h
	ON d1.[ID ������������� �������������] = h.ID
)

SELECT ���, ��������, [��� �������������]
FROM Hierachy
ORDER BY ���


