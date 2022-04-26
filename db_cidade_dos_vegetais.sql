create database db_cidade_dos_vegetais;

use db_cidade_dos_vegetais;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255) not null,
descricao varchar(1000) not null,
primary key (id)
);

drop table tb_categorias;


insert into tb_categorias (tipo,descricao) value ("fruta","frutos, pseudofrutos e infrutescências comestíveis");
insert into tb_categorias (tipo,descricao) value ("verdura","vegetais cuja parte comestível é folhosa");
insert into tb_categorias (tipo,descricao) value ("legume","vegetais cuja parte comestível não é folhosa");
insert into tb_categorias (tipo,descricao) value ("sucos especiais","sucos naturais com mix de vegetais");

drop table tb_categorias;
select * from tb_categorias;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
codigo bigint not null,
preco double not null,
quantidade int not null,
classe_id bigint not null,
primary key (id),
foreign key (classe_id) references tb_categorias(id)
);

drop table tb_produtos;
select * from tb_produtos;


insert tb_produtos (nome,codigo,preco,quantidade,classe_id) value ("maçã",1254259821222,6.80,500,1);
insert tb_produtos (nome,codigo,preco,quantidade,classe_id) value ("banana",1254259821223,5.90,240,1);
insert tb_produtos (nome,codigo,preco,quantidade,classe_id) value ("laranja",1254259821224,4.90,680,1);
insert tb_produtos (nome,codigo,preco,quantidade,classe_id) value ("alface",1254259821232,3.90,100,2);
insert tb_produtos (nome,codigo,preco,quantidade,classe_id) value ("rúcula",1254259821233,4.80,80,2);
insert tb_produtos (nome,codigo,preco,quantidade,classe_id) value ("açafrão",1254259821234,7.90,50,2);
insert tb_produtos (nome,codigo,preco,quantidade,classe_id) value ("cenoura",1254259821242,25.90,400,3);
insert tb_produtos (nome,codigo,preco,quantidade,classe_id) value ("batata",1254259821243,7.90,500,3);
insert tb_produtos (nome,codigo,preco,quantidade,classe_id) value ("suco verde",1254259821252,10.00,5,4);
insert tb_produtos (nome,codigo,preco,quantidade,classe_id) value ("suco detox",1254259821253,15.00,10,4);

select * from tb_produtos;

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco < 50;
select * from tb_produtos where preco >=50 and preco <=150;
select * from tb_produtos where nome like "%c%";

select tb_produtos.nome,tb_produtos.codigo,tb_produtos.preco,tb_produtos.quantidade,tb_categorias.tipo,tb_categorias.descricao from tb_categorias
inner join tb_produtos on tb_categorias.id = tb_produtos.classe_id;

select tb_produtos.nome,tb_produtos.codigo,tb_produtos.preco,tb_produtos.quantidade,tb_categorias.tipo,tb_categorias.descricao from tb_categorias
inner join tb_produtos on tb_categorias.id = tb_produtos.classe_id where tb_categorias.id = 1;






