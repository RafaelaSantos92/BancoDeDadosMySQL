create database db_ML;

use db_ML;

create table tb_produtos(
id bigint auto_increment,
produto varchar(100) not null,
marca varchar(100) not null,
tamanho varchar(100) not null,
preco double not null,
disponivel boolean,
primary key (id)
);
drop table tb_produtos;

insert into tb_produtos (produto,marca,tamanho,preco,disponivel)
value("Tenis Color", "Adidas", "38",250,false);

insert into tb_produtos (produto,marca,tamanho,preco,disponivel)
value("Camisa Gol", "Adidas", "G",380,true);

insert into tb_produtos (produto,marca,tamanho,preco,disponivel)
value("Tenis Pulse", "Nike", "42",580,true);

insert into tb_produtos (produto,marca,tamanho,preco,disponivel)
value("Camisa Nike", "Nike", "M",480,true);

insert into tb_produtos (produto,marca,tamanho,preco,disponivel)
value("Camisa Sol", "Farm", "M",623,false);

insert into tb_produtos (produto,marca,tamanho,preco,disponivel)
value("Bola Nike", "Nike", "U",758,true);

insert into tb_produtos (produto,marca,tamanho,preco,disponivel)
value("Tenis biker", "Adidas", "42",250,true);

insert into tb_produtos (produto,marca,tamanho,preco,disponivel)
value("Camisa Float", "Adidas", "PP",755,true);

insert into tb_produtos (produto,marca,tamanho,preco,disponivel)
value("Tenis Adidas", "Adidas", "40",850,true);

insert into tb_produtos (produto,marca,tamanho,preco,disponivel)
value("Tenis Beach", "Vans", "38",100,true);

select * from tb_produtos;

select * from tb_funcionarios where salario > 500;
select * from tb_produtos where preco < 500;


