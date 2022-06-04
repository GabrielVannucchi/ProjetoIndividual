/* casa dos roedores*/
create database casaDosRoedores;
use casaDosRoedores;
create table usuario(
	id int primary key AUTO_INCREMENT,
	nome VARCHAR(45),
	email varchar(100),
	senha varchar(30),
	fotoPerfil varchar(500) default 'https://i.imgur.com/4d4mNrF.png'
);
create table postagem(
	idPostagem int,
    fkUsuario int,
    foreign key (fkUsuario) references usuario (id),
    primary key (idPostagem, fkUsuario),
    imgPost varchar(500) default 'sem imagem',
    titulo varchar(100),
    texto varchar(2550),
    especie char(3),
    dataPostagem datetime,
    check (especie in('pdi','hmc','frt','grb','twt','hms','chn','mco'))
);
insert into postagem values (1,1,'https://i.imgur.com/4d4mNrF.png', 'Titulo teste','texto teste', 'pdi',now());
