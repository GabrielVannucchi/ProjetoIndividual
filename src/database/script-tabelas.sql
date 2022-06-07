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

create table suporte(
	idSuporte int primary key auto_increment,
    fkUsuario int,
    foreign key (fkUsuario) references usuario(id),
    motivo varchar(10),
    especie char(3),
    titulo varchar(100),
    texto varchar(2000),
    check (especie in('pdi','hmc','frt','grb','twt','hms','chn','mco','n/a'))
);

-- inserts

insert into usuario values 
	(null, 'João Pedro','joao@email.com','123','https://f001.backblazeb2.com/file/papocine/2016/06/20160629-shrek-miniatura-e1467165542554.jpg'),
	(null, 'Pedro Paulo','pedro@email.com','123','https://i.imgur.com/4d4mNrF.png'),
	(null, 'Maria Anastacia','maria@email.com','123','https://i.imgur.com/4d4mNrF.png'),
	(null, 'Alessandra Baccin','ale@email.com','123','http://localhost:3333/images/PorquinhoDaIndia.png'),
	(null, 'Gerson Oliveira','gerson@email.com','123','https://i.imgur.com/4d4mNrF.png'),
	(null, 'Otavio Almeida','otavio@email.com','123','https://i.imgur.com/4d4mNrF.png'),
	(null, 'Natalia Freitas','nat@email.com','123','https://i.imgur.com/4d4mNrF.png'),
	(null, 'Rafael Raposo','raposo@email.com','123','https://i.imgur.com/4d4mNrF.png'),
	(null, 'Zenia','zenia@email.com','123','https://i.imgur.com/4d4mNrF.png'),
	(null, 'Kezya Castro Lima','kezya@email.com','123','https://i.imgur.com/4d4mNrF.png')
;
insert into postagem values
	(1, 1, 'https://blog.cobasi.com.br/wp-content/webpc-passthru.php?src=https://blog.cobasi.com.br/wp-content/uploads/2018/08/roedor-porquinho-da-india.png', 'A melhor experiencie', 'Gostei muito de ter um porquinho da índia, foi a melhor experiencia com animais que eu ja tive', 'pdi', now()),
	(1, 2, 'https://blog.cobasi.com.br/wp-content/uploads/2021/06/porquinho-da-india-angora-meio.jpg', 'Floquinho', 'essa é aminha porquinha floquinho!', 'pdi', now()),
	(2, 2, 'https://www.petlove.com.br/dicas/wp-content/uploads/2020/07/porquinho-india-petlove-1280x720.jpg', 'Princesa', 'essa é a minha porquinha princesa!', 'pdi', now()),
	(1, 3, 'https://www.petz.com.br/blog/wp-content/uploads/2022/04/porquinho-da-india-ingles.jpg', 'Meu melhor amigo', 'Esse é o Bolota, meu companheiro pra todas as horas. Ele adora comer folhinhas', 'pdi', now()),
	(1, 4, 'http://localhost:3333/images/porquinhoPlaceHolder.png', 'Minha gordinha', '.', 'pdi', now()),
	(1, 6, 'https://i.pinimg.com/550x/90/f3/02/90f302d352bba116bab4f01e4620aacb.jpg', 'Meus amores', 'Os dois amores da minha vida', 'pdi', now()),
	(1, 7, 'https://http2.mlstatic.com/D_NQ_NP_779052-MLB44668084674_012021-O.jpg', 'Hora de comer', 'Meu gritalhão que adora uma comidinha', 'pdi', now()),
    (2, 4, 'http://localhost:3333/images/pdiSemana.png', 'Amo minha Gordinha', 'Essa é a minha gordinha Eevee, amo muito ela mesmo que ela esteja no céu', 'pdi', now()),
	(1, 10, 'https://http2.mlstatic.com/D_NQ_NP_978130-MLB41126932032_032020-O.jpg', 'Filhotinha', 'Essa é a Lua, minha mais nova filhinha', 'hmc', now()),
    (1, 8, 'https://www.petz.com.br/blog/wp-content/uploads/2017/04/furao.jpg', 'quero muito um', 'conheci os ferrets por esse site, me apaixonei, não vejo a hora de ter um', 'frt', now()),
    (2, 8, 'https://www.petlove.com.br/dicas/wp-content/uploads/2020/10/passeio-ferret-petlove.jpg', 'muito lindo', 'olha esse branco, muito lindo', 'frt', now()),
    (1, 5, 'https://s2.glbimg.com/Yao5zwH-X71CxZQR2a-qL8K1cW4=/e.glbimg.com/og/ed/f/original/2022/02/11/gerbil.png', 'Gosto', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit maxime necessitatibus asperiores, recusandae cum ut totam ad eos cupiditate incidunt architecto suscipit aliquid labore esse explicabo, sit libero nostrum quod.', 'grb', now()),
    (2, 6, 'https://blog.cobasi.com.br/wp-content/uploads/2018/08/roedor-gerbil.png', 'Meu Bolota', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit maxime necessitatibus asperiores, recusandae cum ut totam ad eos cupiditate incidunt architecto suscipit aliquid labore esse explicabo, sit libero nostrum quod.' ,'grb', now()),
    (2, 5, 'https://i0.wp.com/files.agro20.com.br/uploads/2019/05/Gerbil.jpeg?resize=1024%2C768&ssl=1', 'Gosto muito mesmo', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit maxime necessitatibus asperiores, recusandae cum ut totam ad eos cupiditate incidunt architecto suscipit aliquid labore esse explicabo, sit libero nostrum quod.' ,'grb', now()),
    (1, 9, 'https://img.elo7.com.br/product/600x380/3FA3778/saia-lacinho-pet-roedores-rato-twister-roupinha-para-porquinho-da-india.jpg', 'Não São Feios','Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit maxime necessitatibus asperiores, recusandae cum ut totam ad eos cupiditate incidunt architecto suscipit aliquid labore esse explicabo, sit libero nostrum quod.','twt', now()),
    (2, 9, 'https://blog.cobasi.com.br/wp-content/webpc-passthru.php?src=https://blog.cobasi.com.br/wp-content/uploads/2021/01/gaiola-para-rato-twister-meio-2.png&nocache=1', 'São Lindos','Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit maxime necessitatibus asperiores, recusandae cum ut totam ad eos cupiditate incidunt architecto suscipit aliquid labore esse explicabo, sit libero nostrum quod.','twt', now()),
    (3, 9, 'https://img.olx.com.br/images/12/121234278752594.jpg', 'OLHA COMO SÃO LINDOS','Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit maxime necessitatibus asperiores, recusandae cum ut totam ad eos cupiditate incidunt architecto suscipit aliquid labore esse explicabo, sit libero nostrum quod.','twt', now()),
    (2, 3, 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Standardchinchilla.jpg', 'Chinchila', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit maxime necessitatibus asperiores, recusandae cum ut totam ad eos cupiditate incidunt architecto suscipit aliquid labore esse explicabo, sit libero nostrum quod.', 'chn', now()),
    (3, 6, 'https://img.olx.com.br/images/54/545250268666049.jpg', 'Coelho pequeno','Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit maxime necessitatibus asperiores, recusandae cum ut totam ad eos cupiditate incidunt architecto suscipit aliquid labore esse explicabo, sit libero nostrum quod.','mco',now()),
    (4, 6, 'https://http2.mlstatic.com/D_NQ_NP_874653-MLB45197716337_032021-O.jpg', 'Muito pequenos mesmo','Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit maxime necessitatibus asperiores, recusandae cum ut totam ad eos cupiditate incidunt architecto suscipit aliquid labore esse explicabo, sit libero nostrum quod.','mco',now())
;