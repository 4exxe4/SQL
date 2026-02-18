--SQLQuery3 - SELECT Teachers.sql
USE PV_521_Import;

SELECT
		 [Преподаватель]	=	FORMATMESSAGE(N'%s %s %s', last_name, first_name, middle_name)
		,[Дата рождения]	=	birth_date
		,[Возраст]			=	CAST(DATEDIFF(DAY, birth_date, GETDATE())/365.25 AS TINYINT)
FROM	Teachers
WHERE	CAST(DATEDIFF(DAY, birth_date, GETDATE())/365.25 AS TINYINT) BETWEEN
ORDER BY	[Возраст] 	ASC
--ASC	- Ascinding (По возрастанию)
--DESC	- Descending(По убыванию)
;