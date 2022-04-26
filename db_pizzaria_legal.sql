create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
massa varchar(255) not null,
descricao varchar(255) not null,
primary key (id)
);

insert tb_categoria (massa,descricao) value ("Integral","Macia e saldável");
insert tb_categoria (massa,descricao) value ("Sem glútem", "Sem trigo");
insert tb_categoria (massa,descricao) value ("vegana","sem ovo e leite");
insert tb_categoria (massa,descricao) value ("tradicional","massa especial da casa");
insert tb_categoria (massa,descricao) value ("tradicional fina","massa fina especial da casa");

create table tb_pizzas(
id bigint auto_increment,
nome varchar(255) not null,
vegana boolean not null,
sabor varchar(1000) not null,
preco double not null,
classe_id bigint not null,
primary key (id),
foreign key (classe_id) references tb_categoria(id)
);

insert tb_pizzas (nome,vegana,sabor,preco,classe_id) value ("nordestina",false,"charque com queijo coalho",59.90,4);
insert tb_pizzas (nome,vegana,sabor,preco,classe_id) value ("napolitana",false,"queijo muçarela",65.90,3);
insert tb_pizzas (nome,vegana,sabor,preco,classe_id) value ("mix de vegetais",true,"Mix de vegetais com queijo veganp",150.00,2);
insert tb_pizzas (nome,vegana,sabor,preco,classe_id) value ("nordestina",false,"charque com queijo coalho",89.90,1);
insert tb_pizzas (nome,vegana,sabor,preco,classe_id) value ("marguerita",false,"queijo, tomate e manjericão",59.90,3);
insert tb_pizzas (nome,vegana,sabor,preco,classe_id) value ("pé na jaca",true,"Carne de jaca e queijo vegano",150.90,2);
insert tb_pizzas (nome,vegana,sabor,preco,classe_id) value ("ratatouille",true,"legumes cozidos",150.90,2);
insert tb_pizzas (nome,vegana,sabor,preco,classe_id) value ("frango com catupiry",false,"frango desfiado com requeijao catupiry",90.00,3);

select * from tb_pizzas where preco > 45.00;
select * from tb_pizzas where preco >= 50.00 and preco <=100.00;
select * from tb_pizzas where nome like "%m%";

select tb_pizzas.nome,tb_pizzas.sabor,tb_pizzas.vegana,tb_pizzas.preco,tb_categoria.massa,tb_categoria.descricao from tb_categoria
 inner join tb_pizzas on tb_categoria.id = tb_pizzas.classe_id;
 
 select sabor from tb_pizzas inner join tb_categoria on tb_pizzas.id = tb_pizzas.id
 
 select tb_pizzas.nome, tb_pizzas.sabor,tb_pizzas.vegana,tb_pizzas.preco,tb_categoria.massa,tb_categoria.descricao from tb_pizzas
inner join tb_categoria on tb_categoria.id = tb_pizzas.classe_id where tb_categoria.id = 3;
