CREATE TABLE Clientes (
  id INTEGER PRIMARY KEY,
  Nombre TEXT,
  Apellido TEXT
);

CREATE TABLE Telefonos (
  id_Cliente INTEGER,
  Telefono TEXT,
  CONSTRAINT fk_Cliente FOREIGN KEY (id_cliente) REFERENCES Clientes (id)
);

INSERT INTO Clientes VALUES (123, "Rachel", "Ingram");
INSERT INTO Clientes VALUES (456, "James", "Wright");
INSERT INTO Clientes VALUES (789, "Cesar", "Dure");

INSERT INTO Telefonos VALUES (123, "555-861-2025");
INSERT INTO Telefonos VALUES (456, "555-403-1659");
INSERT INTO Telefonos VALUES (456, "555-776-4100");
INSERT INTO Telefonos VALUES (456, "555-888-6366");
INSERT INTO Telefonos VALUES (789, "555-808-9633");


SELECT Clientes.id, Clientes.Nombre, Clientes.Apellido, Telefonos.Telefono Telefono
FROM Clientes
INNER JOIN Telefonos ON Clientes.id=Telefonos.id_cliente;

DROP TABLE Clientes;
DROP TABLE Telefonos;