CREATE TABLE Membri (
    ID_Membru INT PRIMARY KEY,
    Nume VARCHAR(50),
    Prenume VARCHAR(50),
    Data_Nasterii DATE,
    Adresa VARCHAR(100),
    Email VARCHAR(100)
);
CREATE TABLE Antrenori (
    ID_Antrenor INT PRIMARY KEY,
    Nume VARCHAR(50),
    Prenume VARCHAR(50),
    Specializare VARCHAR(100),
    Email VARCHAR(100)
);
CREATE TABLE Clase_Fitness (
    ID_Clasa INT PRIMARY KEY,
    Nume_Clasa VARCHAR(50),
    Descriere VARCHAR(255),
    ID_Antrenor INT,
    Orar DATETIME,
    FOREIGN KEY (ID_Antrenor)
        REFERENCES Antrenori (ID_Antrenor)
);
CREATE TABLE Echipamente (
    ID_Echipament INT PRIMARY KEY,
    Nume_Echipament VARCHAR(100),
    Stare VARCHAR(50),
    ID_Clasa INT,
    FOREIGN KEY (ID_Clasa) REFERENCES Clase_Fitness(ID_Clasa)
);
CREATE TABLE Inscrieri (
    ID_Inscriere INT PRIMARY KEY,
    ID_Membru INT,
    ID_Clasa INT,
    FOREIGN KEY (ID_Membru) REFERENCES Membri(ID_Membru),
    FOREIGN KEY (ID_Clasa) REFERENCES Clase_Fitness(ID_Clasa)

);
