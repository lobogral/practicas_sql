PRAGMA foreign_keys = ON;

CREATE TABLE Jugadores (
  id INTEGER,
  Nombre TEXT,
  FechaNacimiento TEXT,
  PRIMARY KEY(id)
);

CREATE TABLE Torneos (
  id INTEGER,
  Nombre TEXT,
  PRIMARY KEY(id)
);

CREATE TABLE GanadoresTorneos (
  idTorneo INTEGER,
  Año TEXT,
  idJugador INTEGER,
  PRIMARY KEY(idTorneo, Año),
  FOREIGN KEY (idTorneo) REFERENCES Torneos(id),
  FOREIGN KEY (idJugador) REFERENCES Jugadores(id)
);


INSERT INTO Jugadores VALUES 
(1, "Chip Masterson", "14 de marzo de 1977"),
(2, "Al Fredrickson", "21 de julio de 1975"),
(3, "Bob Albertson", "28 de septiembre de 1968");

INSERT INTO Torneos VALUES 
(1, "Indiana Invitational"),
(2, "Cleveland Open"),
(3, "Des Moines Masters");

INSERT INTO GanadoresTorneos VALUES 
(1, "1998", 2),
(2, "1999", 3),
(3, "1999", 2),
(1, "1999", 1);

SELECT Torneos.Nombre, GanadoresTorneos.Año, Jugadores.Nombre, Jugadores.FechaNacimiento
FROM GanadoresTorneos
INNER JOIN Jugadores ON GanadoresTorneos.idTorneo=Torneos.id
INNER JOIN Torneos ON GanadoresTorneos.idJugador=Jugadores.id;

DROP TABLE GanadoresTorneos;
DROP TABLE Jugadores;
DROP TABLE Torneos;
