CREATE TABLE Persona (
	id integer PRIMARY KEY,
	nombre text NOT NULL,
	email text NOT NULL
);

CREATE TRIGGER validar_email_antes_insertar_persona 
   BEFORE INSERT ON Persona
BEGIN
   SELECT
      CASE
	WHEN NEW.email NOT LIKE '%_@__%.__%' THEN
   	  RAISE (ABORT,'Email inválido')
       END;
END;

INSERT INTO Persona (nombre,email)
VALUES('Jorge','jjj');
