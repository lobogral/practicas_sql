PRAGMA foreign_keys = ON;

CREATE TABLE HabilidadesEmpleados (
  Empleado TEXT,
  Habilidad TEXT,
  LugarTrabajoEmpleado TEXT,
  PRIMARY KEY(Empleado, Habilidad)
);

INSERT INTO HabilidadesEmpleados VALUES 
("Jones", "Mecanografía", "114 Main Street"),
("Jones", "Taquigrafía", "114 Main Street"),
("Jones", "Tallado", "114 Main Street"),
("Bravo", "Limpieza ligera", "73 Industrial Way"),
("Ellis", "Alquimia", "73 Industrial Way"),
("Ellis", "Malabarismo", "73 Industrial Way"),
("Harrison", "Limpieza ligera", "73 Industrial Way");

SELECT * FROM HabilidadesEmpleados;
DROP TABLE HabilidadesEmpleados;