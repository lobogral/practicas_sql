PRAGMA foreign_keys = ON;

CREATE TABLE Clientes (
  id INTEGER,
  Nombre TEXT,
  Apellido TEXT,
  PRIMARY KEY(id)
);

CREATE TABLE Telefonos (
  id_Cliente INTEGER,
  Telefono TEXT,
  FOREIGN KEY (id_cliente) REFERENCES Clientes (id)
);

INSERT INTO Clientes VALUES 
(123, "Rachel", "Ingram"),
(456, "James", "Wright"),
(789, "Cesar", "Dure");

INSERT INTO Telefonos VALUES
(123, "555-861-2025"),
(456, "555-403-1659"),
(456, "555-776-4100"),
(456, "555-888-6366"),
(789, "555-808-9633");

SELECT Clientes.id, Clientes.Nombre, Clientes.Apellido, Telefonos.Telefono Telefono
FROM Clientes
INNER JOIN Telefonos ON Clientes.id=Telefonos.id_cliente;

DROP TABLE Telefonos;
DROP TABLE Clientes;
