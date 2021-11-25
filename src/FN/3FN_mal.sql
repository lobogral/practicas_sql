PRAGMA foreign_keys = ON;

CREATE TABLE GanadoresTorneo (
  Torneo TEXT,
  Año TEXT,
  Ganador TEXT,
  FechaNacimientoGanador TEXT,
  PRIMARY KEY(Torneo, Año)
);

INSERT INTO GanadoresTorneo VALUES 
("Indiana Invitational", "1998", "Al Fredrickson", "21 de julio de 1975"),
("Cleveland Open", "1999", "Bob Albertson", "28 de septiembre de 1968"),
("Des Moines Masters", "1999", "Al Fredrickson", "21 de julio de 1975"),
("Indiana Invitational", "1999", "Chip Masterson", "14 de marzo de 1977");


SELECT * FROM GanadoresTorneo;
DROP TABLE GanadoresTorneo;