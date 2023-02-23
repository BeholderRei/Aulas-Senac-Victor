DROP DATABASE IF EXISTS trabalho_em_grupo_5;
CREATE DATABASE projeto_em_grupo_5;
USE projeto_em_grupo_5;

-- criação das tabelas 

CREATE TABLE Cemitério (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereço VARCHAR(255) NOT NULL
);

CREATE TABLE Pessoa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    data_falecimento DATE,
    cemitério_id INT,
    túmulo_id INT,
     texto TEXT NOT NULL,
    FOREIGN KEY (cemitério_id) REFERENCES Cemitério(id)
);

CREATE TABLE Família (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sobrenome VARCHAR(255) NOT NULL,
    cemitério_id INT,
    FOREIGN KEY (cemitério_id) REFERENCES Cemitério(id)
);

CREATE TABLE Túmulo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    número VARCHAR(255) NOT NULL,
    família_id INT,
    FOREIGN KEY (família_id) REFERENCES Família(id)
);

CREATE TABLE Funcionário (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    cemitério_id INT,
    FOREIGN KEY (cemitério_id) REFERENCES Cemitério(id)
);






