CREATE TABLE FilmInfo(FilmID INT PRIMARY KEY NOT NULL,
FilmTitel VARCHAR(30) NOT NULL)

CREATE TABLE Genre(genreID TINYINT PRIMARY KEY NOT NULL,
genre VARCHAR(30) NOT NULL)

CREATE TABLE Directors(DirectorID SMALLINT PRIMARY KEY NOT NULL,
Age TINYINT NOT NULL,
DirectorName VARCHAR(30) NOT NULL)

CREATE TABLE Actors(ActorID INT PRIMARY KEY NOT NULL,
ActorName VARCHAR(30) NOT NULL,
Age TINYINT NOT NULL)

CREATE TABLE Theaters(TheaterID TINYINT PRIMARY KEY NOT NULL,
TheaterName VARCHAR(30) NOT NULL,
address VARCHAR(50) NOT NULL)

CREATE TABLE Attendents(AttendentsName VARCHAR(30) NOT NULL,
EMail VARCHAR(50) NOT NULL,
AttendentID SMALLINT PRIMARY KEY NOT NULL)

CREATE TABLE Directed(directed TINYINT PRIMARY KEY NOT NULL,
DirectorID SMALLINT NOT NULL,
FOREIGN KEY (DirectorID) REFERENCES Directors(DirectorID),
FilmID INT NOT NULL,
FOREIGN KEY (FilmID) REFERENCES FilmInfo(FilmID))

CREATE TABLE Stars(stars TINYINT PRIMARY KEY NOT NULL,
ActorID INT NOT NULL,
FOREIGN KEY (ActorID) REFERENCES Actors(ActorID),
FilmID INT NOT NULL,
FOREIGN KEY (FilmID) REFERENCES FilmInfo(FilmID))

CREATE TABLE Film(FilmID int NOT NULL, FOREIGN KEY (FilmID) REFERENCES FilmInfo(FilmID),
genreID TINYINT NOT NULL, FOREIGN KEY (genreID) REFERENCES Genre(genreID),
length SMALLINT NOT NULL,
release DATE NOT NULL,
directed TINYINT NOT NULL, FOREIGN KEY (directed) REFERENCES Directed(directed),
stars TINYINT NOT NULL, FOREIGN KEY (stars) REFERENCES Stars(stars))

CREATE TABLE Cinema(CinemaID TINYINT PRIMARY KEY NOT NULL,
TheaterID TINYINT NOT NULL, FOREIGN KEY (TheaterID) REFERENCES Theaters(TheaterID))

CREATE TABLE Seats(SeatID TINYINT PRIMARY KEY NOT NULL,
CinemaID TINYINT NOT NULL, FOREIGN KEY (CinemaID) REFERENCES Cinema(CinemaID))

CREATE TABLE Showings(ShowingID TINYINT PRIMARY KEY NOT NULL,
SeatID TINYINT NOT NULL, FOREIGN KEY (SeatID) REFERENCES Seats(SeatID),
FilmID INT NOT NULL, FOREIGN KEY (FilmID) REFERENCES FilmInfo(FilmID))

CREATE TABLE Tickets(TicketID SMALLINT PRIMARY KEY NOT NULL,
Price SMALLINT NOT NULL,
AttendentID SMALLINT NOT NULL, FOREIGN KEY (AttendentID) REFERENCES Attendents(AttendentID),
ShowingID TINYINT NOT NULL, FOREIGN KEY (ShowingID) REFERENCES Showings(ShowingID))

INSERT INTO FilmInfo
VALUES (1, 'The Freelancer'),
(2, 'Big Dick John'),
(3, 'John Cena'),
(4, 'John Rick'),
(5, 'Rick Ashley')

INSERT INTO Genre
VALUES (1, 'Horror'),
(2, 'Romance'),
(3, 'Action'),
(4, 'Comedy')

INSERT INTO Directors
VALUES (1, 46, 'Charles'),
(2, 39, 'James'),
(3, 57, 'Anna'),
(4, 21, 'Bella'),
(5, 72, 'WarWick')

INSERT INTO Actors
VALUES (1, 'Sofie', 32),
(2, 'Josh', 19),
(3, 'Lauren', 24),
(4, 'Trundle', 63),
(5, 'Senna', 58)

INSERT INTO Theaters
VALUES (1, 'House of Evil', 'Frederiksberg 10th'),
(2, 'Kids Land', 'New York 34th'),
(3, 'Prison School', 'Aalborg 121'),
(4, 'Palace', 'Atlantis 21'),
(5, 'Nyk�bing F Bio', 'Spain 1716')

INSERT INTO Attendents
VALUES ('Ole', 'Ole3124@gmail.com', 1),
('Bob', 'Bob0000@gmail.com', 2),
('Ib', 'Ib9513@gmail.com', 3),
('Tim', 'Tim1313@gmail.com', 4),
('Qang', 'QangOG@gmail.com', 5)

INSERT INTO Directed
VALUES (1, 2, 3),
(2, 3, 4),
(3, 4, 5),
(4, 5, 1),
(5, 1, 2)

INSERT INTO Stars
VALUES (1, 5, 4),
(2, 4, 5),
(3, 3, 1),
(4, 2, 2),
(5, 1, 3)


INSERT INTO Film
VALUES (1, 1, 143, '2023-03-13', 1, 2),
(2, 2, 172, '2023-01-02', 2, 3),
(3, 3, 121, '2023-04-18', 3, 4),
(4, 3, 137, '2023-03-27', 4, 5),
(5, 4, 112, '2023-04-09', 5, 1)

INSERT INTO Cinema
VALUES (1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5)

INSERT INTO Seats
VALUES (1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5)

INSERT INTO Showings
VALUES (1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5)

INSERT INTO Tickets
VALUES (1, 175, 1, 1),
(2, 185, 2, 2),
(3, 170, 3, 3),
(4, 180, 4, 4),
(5, 185, 5, 5)