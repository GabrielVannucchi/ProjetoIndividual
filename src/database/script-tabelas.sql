/* casa dos roedores*/
create database casaDosRoedores;
use casaDosRoedores;
create table usuario(
	id int primary key AUTO_INCREMENT,
	nome VARCHAR(45),
	email varchar(100),
	senha varchar(30),
	fotoPerfil varchar(255) default 'https://i.imgur.com/4d4mNrF.png'
);

