CREATE TABLE Departamentos (
  id INTEGER,
  nombre TEXT,
  PRIMARY KEY(id)
);

CREATE TABLE Empleados (
  apellido TEXT,
  idDepartamento INTEGER,
  PRIMARY KEY(apellido),
  FOREIGN KEY (idDepartamento) REFERENCES Departamentos(id)
);

INSERT INTO Departamentos VALUES 
(31, "Ventas"),
(33, "Ingeniería"),
(34, "Producción"),
(35, "Mercadeo");

INSERT INTO Empleados VALUES 
("Andrade", 31),
("Jordán", 33),
("Steinberg", 33),
("Róbinson", 34),
("Zolano", 34),
("Gaspar", 36);

SELECT Empleados.apellido Empleado, Departamentos.nombre Departamentos
FROM Empleados
INNER JOIN Departamentos ON Departamentos.id=Empleados.idDepartamento;

DROP TABLE Departamentos;
DROP TABLE Empleados;

