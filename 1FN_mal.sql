CREATE TABLE Cliente (
  id INTEGER PRIMARY KEY,
  Nombre TEXT,
  Apellido TEXT,
  Telefono TEXT
);

INSERT INTO Cliente VALUES (123, "Rachel", "Ingram", "555-861-2025");
INSERT INTO Cliente VALUES (456, "James", "Wright", "555-403-1659, 555-776-4100, 555-888-6366");
INSERT INTO Cliente VALUES (789, "Cesar", "Dure", "555-808-9633");

SELECT * FROM Cliente;
DROP TABLE Cliente;