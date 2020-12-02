DROP PROC best�edeEksamenerForstuderende

GO
CREATE PROC best�edeEksamenerForstuderende
@studerende_id INT
AS
BEGIN
SELECT e.navn
FROM eksamen e, eksamensResultat er
WHERE e.eksamen_id = er.eksamen_id
AND er.studerende_id = @studerende_id
AND er.karakter > 0
END

EXEC best�edeEksamenerForstuderende 1