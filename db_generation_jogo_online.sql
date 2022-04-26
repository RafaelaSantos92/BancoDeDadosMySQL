create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
tipo varchar(255) not null,
descricao varchar(1000) not null,
primary key (id)
);

insert tb_classe(tipo,descricao) value
('atirador de elite','armas e tiros de precisão');

insert tb_classe (tipo,descricao) value
('arqueira''grande força e precisão em seus ataques');

insert tb_classe (tipo,descricao) value
('coringa','possui poderes mágicos que aumentam seu ataque e sua velocidade');

insert tb_classe (tipo,descricao) value
('fada','possue grandes poderes e pode enganar qualquer inimigo');

insert tb_classe (tipo,descricao) value
('guru','guia espiritual');

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
forca varchar(255) not null,
ataque int not null,
defesa int not null,
classe_id bigint not null,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);

insert tb_personagens (nome,forca,ataque,defesa,classe_id) value ("Durl","atirar com precisão",1500,850,1);
insert tb_personagens (nome,forca,ataque,defesa,classe_id) value ("Elga","cantar e enganar o inimigo",1650,1400,4);
insert tb_personagens (nome,forca,ataque,defesa,classe_id) value ("Sam","Usar o arco e flexa",1700,1500,2);
insert tb_personagens (nome,forca,ataque,defesa,classe_id) value ("Lord","Usar a mágica para vencer",1700,1200,3);
insert tb_personagens (nome,forca,ataque,defesa,classe_id) value ("Mest","disfarce para não aparecer entre os inimigos",1600,1500,5);
insert tb_personagens (nome,forca,ataque,defesa,classe_id) value ("Olg","lançar feitiços",1680,1500,4);
insert tb_personagens (nome,forca,ataque,defesa,classe_id) value ("Jog","atirar com precisão",1500,900,1);

select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa >= 1000 and defesa <= 2000;
select * from tb_personagens where nome like "%c%";

select tb_personagens.nome, tb_personagens.forca, tb_personagens.ataque, tb_personagens.defesa, tb_classe.tipo, tb_classe.descricao from tb_personagens
inner join tb_classe on tb_classe.id = tb_personagens.classe_id;

select tipo from tb_classe inner join tb_personagens on tb_classe.id = tb_personagens.id;

