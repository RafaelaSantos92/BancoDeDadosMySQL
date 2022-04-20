use db_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade bigint not null,
setor varchar(255) not null,
salario float not null,
endereco varchar(255) not null,
primary key (id)
);




