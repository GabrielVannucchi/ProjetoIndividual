create database CasaDosRoedores;
use CasaDosRoedores;
create table Usuario (
	idUsuario int primary key auto_increment,
    Nome varchar(45),
    Email varchar(60),
    Senha varchar(30),
    FotoPerfil varchar(150)
);
create table Postagem (
	idPostagem int primary key auto_increment,
    fkUsuario int,
    foreign key (fkUsuario) references Usuario(idUsuario),
    Texto varchar(2550),
    Imagem varchar(150)
);