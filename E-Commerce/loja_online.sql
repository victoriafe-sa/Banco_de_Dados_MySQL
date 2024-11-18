/*criar o banco de dados*/
create database loja_online;

use loja_online;

create table categoria
(
   id_categoria int not null primary key,
   nome varchar(60) not null
);

create table status
(
   id_status int not null primary key,
   descricao varchar(60) not null
);

create table cliente
(
   email varchar(80) not null primary key,
   nome  varchar(80) not null,
   senha varchar(80) not null,
   telefone varchar(15) not null
);

create table produto
(
   id_produto int not null primary key,
   nome varchar(60) not null,
   descricao varchar(100) not null,
   quantidade int not null,
   preco decimal(7,2) not null,
   avaliacao float,
   foto varchar(255) not null
);

create table endereco
(
   id_endereco int auto_increment primary key,
   rua varchar(80) not null,
   complemento varchar(80),
   numero int not null,
   cep char(8) not null,
   bairro varchar(60),
   cidade varchar(60) not null,
   estado char(2) not null,
   cliente_email varchar(80) not null,
   foreign key (cliente_email) references cliente (email)
);

create table pedido
(
   num_pedido int not null primary key,
   dt_pedido datetime not null,
   valor decimal(7,2) not null,
   cliente_email varchar(80) not null,
   id_endereco int not null,
   foreign key (cliente_email) references cliente  (email),
   foreign key (id_endereco)   references endereco (id_endereco)
);

create table pagamento
(
   id_pagamento int not null primary key,
   dt_pagamento datetime not null,
   valor decimal(7,2) not null,
   forma_pagamento varchar(60) not null,
   num_pedido int,
   foreign key (num_pedido) references pedido (num_pedido)
);

create table categoria_produto
(
   id_produto int not null, 
   id_categoria int not null,
   primary key (id_produto, id_categoria),
   foreign key (id_produto)   references produto (id_produto),
   foreign key (id_categoria) references categoria (id_categoria)
);
create table status_pedido
(
   id_status int not null,
   num_pedido int not null,
   primary key (id_status,num_pedido),
   dt_status datetime not null,
   observacao varchar(255),
   foreign key (id_status) references status (id_status),
   foreign key (num_pedido) references pedido (num_pedido)
);