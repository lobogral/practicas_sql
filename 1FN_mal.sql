PRAGMA foreign_keys = ON;

CREATE TABLE Cliente (
  id INTEGER,
  Nombre TEXT,
  Apellido TEXT,
  Telefono TEXT,
  PRIMARY KEY(id)
);

INSERT INTO Cliente VALUES 
(123, "Rachel", "Ingram", "555-861-2025"),
(456, "James", "Wright", "555-403-1659, 555-776-4100, 555-888-6366"),
(789, "Cesar", "Dure", "555-808-9633");

SELECT * FROM Cliente;
DROP TABLE Cliente;