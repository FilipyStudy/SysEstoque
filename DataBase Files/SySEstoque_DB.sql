/*Creating the database:*/
CREATE SCHEMA SYS_ESTOQUE;

/*Selecting the database:*/
USE SYS_ESTOQUE;

/*Creating the tables:*/

/*Client record table:*/
CREATE TABLE Client(
	ID_Client INT NOT NULL AUTO_INCREMENT UNIQUE,
    Nome VARCHAR(45) NOT NULL,
    Sobrenome VARCHAR(45),
    CPF VARCHAR(45) NOT NULL UNIQUE,
    Celular VARCHAR(45),
    Email VARCHAR(45) NOT NULL,
    Rua VARCHAR(45),
    Bairro VARCHAR(45),
    Cidade VARCHAR(45),
    Estado VARCHAR(45),
    Nacao VARCHAR(45),
    CEP VARCHAR(45),
	PRIMARY KEY(ID_Client)
    );

/*Loja record table:*/
CREATE TABLE Loja(
	ID_Loja INT NOT NULL AUTO_INCREMENT UNIQUE,
    Rua VARCHAR(45) NOT NULL,
    Bairro VARCHAR(45) NOT NULL,
    Cidade VARCHAR(45) NOT NULL,
    Estado VARCHAR(45) NOT NULL,
    Nacao VARCHAR(45) NOT NULL,
    CEP VARCHAR(45) NOT NULL,
    PRIMARY KEY(ID_Loja)
	);
    
/*Product record table:*/
CREATE TABLE Product(
	ID_Compra INT NOT NULL AUTO_INCREMENT UNIQUE,
    Nome VARCHAR(45) NOT NULL,
    Valor DECIMAL(10,2) NOT NULL,
    Validade DATE,
    Fornecedor VARCHAR(45),
    PRIMARY KEY (ID_Compra)
);