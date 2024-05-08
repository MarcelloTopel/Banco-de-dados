create DATABASE agendamento;
USE agendamento;

CREATE TABLE Servicos (
    ID INT PRIMARY KEY,
    Nome VARCHAR(50)
);

INSERT INTO Servicos (ID, Nome) VALUES
(1, 'Consulta'),
(2, 'Ultrasson'),
(3, 'Raio-X'),
(4, 'Vacinação'),
(5, 'Cirurgia'),
(6, 'Exames Hematológicos');

CREATE TABLE Animais (
    ID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Idade INT,
    Peso DECIMAL(10,2),
    Tipo VARCHAR(20),
    Tutor VARCHAR(100),
    Telefone VARCHAR(20)
);

CREATE TABLE Horarios (
    ID INT PRIMARY KEY,
    DiaSemana VARCHAR(10),
    HoraInicio TIME,
    HoraFim TIME
);

INSERT INTO Horarios (ID, DiaSemana, HoraInicio, HoraFim) VALUES
(1, 'Segunda', '14:00:00', '18:00:00'),
(2, 'Terça', '14:00:00', '18:00:00'),
(3, 'Quarta', '14:00:00', '18:00:00'),
(4, 'Quinta', '14:00:00', '18:00:00'),
(5, 'Sexta', '14:00:00', '18:00:00');

CREATE TABLE Agendamentos (
    ID INT PRIMARY KEY,
    Data DATE,
    HorarioID INT,
    AnimalID INT,
    ServicoID INT,
    Confirmacao BOOLEAN,
    FOREIGN KEY (HorarioID) REFERENCES Horarios(ID),
    FOREIGN KEY (AnimalID) REFERENCES Animais(ID),
    FOREIGN KEY (ServicoID) REFERENCES Servicos(ID)
);

CREATE TABLE Block (
    ID INT PRIMARY KEY,
    Data DATE,
    HorarioID INT,
    FOREIGN KEY (HorarioID) REFERENCES Horarios(ID)
);
