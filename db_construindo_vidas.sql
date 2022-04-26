create database db_construindo_vidas;

use db_construindo_vidas;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
localizacao varchar(1000) not null,
primary key (id)
);

drop table tb_categoria;
insert into tb_categoria (tipo,localizacao) value ("Construção","corredor 01 ao 07");
insert into tb_categoria (tipo,localizacao) value ("Decoração","corredor 08 ao 15");
insert into tb_categoria (tipo,localizacao) value ("Iluminação","corredor 16 ao 20");
insert into tb_categoria (tipo,localizacao) value ("Ferramentas","corredor 21 e 22");

select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
item varchar(255) not null,
marca varchar(255) not null,
especificacao varchar(1000) not null,
preco double not null,
quantidade int not null,
classe_id bigint not null,
primary key (id),
foreign key (classe_id) references tb_categoria(id)
);

insert into tb_produtos (item,marca,especificacao,preco,quantidade,classe_id) value 
("cimento","Poty","Cimento portland composto com pozolana",30.90,50,1);
insert into tb_produtos (item,marca,especificacao,preco,quantidade,classe_id) value 
("cimento cinza","vitalmassa","Cimento portland cinza",3.10,50,1);
insert into tb_produtos (item,marca,especificacao,preco,quantidade,classe_id) value 
("Tapete capacho","Bianchini","Tapete para área externa",22.90,20,2);
insert into tb_produtos (item,marca,especificacao,preco,quantidade,classe_id) value 
("Espelho com alça","Jolie Decor","Espelho Decorativo para Parede 52cm com Alça Marrom",189.00,30,2);
insert into tb_produtos (item,marca,especificacao,preco,quantidade,classe_id) value 
("SpotLed","EcoLine","Spot LED de Embutir Plástico Redondo 5,0w Branca",16.90,300,3);
insert into tb_produtos (item,marca,especificacao,preco,quantidade,classe_id) value 
("Cabo Antichamas","Sil","Cabo Flexível Antichamas Flexsil 1,50 mm Rolo com 100 m 450/750V 1 Condutor Azul",134.90,200,3);
insert into tb_produtos (item,marca,especificacao,preco,quantidade,classe_id) value 
("Perfurador","Bosch","Martelete Perfurador Bosch GBH 2-24 D 820W 220V em maleta",769.00,300,4);
insert into tb_produtos (item,marca,especificacao,preco,quantidade,classe_id) value 
("Kit de pontas","Bosch","Kit de pontas e brocas Bosch X-Line 33 peças",149.00,300,4);

select * from tb_produtos;

select * from tb_produtos where preco > 100;
select * from tb_produtos where preco >=70 and preco <=150;
select * from tb_produtos where item like "%c%";

select tb_produtos.item,tb_produtos.marca,tb_produtos.especificacao,tb_produtos.preco,tb_produtos.quantidade,tb_categoria.tipo,tb_categoria.localizacao from tb_categoria 
inner join tb_produtos on tb_categoria.id = tb_produtos.classe_id;

select tb_produtos.item,tb_produtos.marca,tb_produtos.especificacao,tb_produtos.preco,tb_produtos.quantidade,tb_categoria.tipo,tb_categoria.localizacao from tb_categoria 
inner join tb_produtos on tb_categoria.id = tb_produtos.classe_id where tb_categoria.id = 2;
