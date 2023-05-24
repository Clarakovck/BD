create database drogarias1;
use drogarias1;
create table Farmacia(
cnpj int primary key,
razao_social varchar(50) not null 
 );

create table Funcionario(
matricula int primary key ,
Tipo varchar(30) not null,
Nome  varchar(30) not null
);
insert into Funcionario(matricula,nome,tipo)
values (146356, 'Maria Clara','gerente');

create table produto(
EAN int primary key ,
Descriçao varchar(50) not null,
Nome varchar(30) not null
);

create table fornecedor (
id_fornecedor int primary key,
Empresa varchar(50) not null
);

create table produto_fornecedor(
fk_EAN int ,
fk_id_fornecedor int , 
constraint produto_fornecedor_pk 
primary key(fk_EAN,fk_id_fornecedor));
Alter table produto_fornecedor
add foreign key (fk_ean) references produto(ean),
add foreign key (fk_id_fornecedor) references fornecedor(id_fornecedor);

create table farmacia_funcionario(
fk_cnpj int ,
fk_matricula int , 
constraint farmacia_funcionario_pk
primary key(fk_cnpj,fk_matricula));
alter table farmacia_funcionario
add foreign key (fk_cnpj) references farmacia(cnpj),
add foreign key (fk_matricula) references funcionario(matricula);
