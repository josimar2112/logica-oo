-- CRIAÇÃO DO BANCO --
CREATE DATABASE comercial;

-- ACESSANDO O BANCO -- 

use comercial;

-- inciando a criação das tabelas

create table cliente(
id int not null auto_increment,
codigo_cliente varchar(10),
nome varchar (100),
razao_social varchar (100),
data_cadastro date,
cnpj varchar (20),
telefone varchar (20),
primary key (id));

-- inserir valor na tabela -- 
insert into cliente (codigo_cliente , nome , razao_social, data_cadastro , cnpj , telefone)
	value ('C1' , 'Thaisa Benvenutti', 'Instrutor de Ingles' , '2019-07-02' , '10041983' , '(47) 99181-9295' );
    
    select * from cliente;
    
    create table fornecedor(
    id int not null auto_increment,
    codigo_fornecedor varchar (10),
    nome varchar (100),
    razao_social varchar (100),
    telefone varchar (20),
    primary Key (id));
    
    create table vendedor(
    id int not null auto_increment,
    codigo_Vendedor varchar (10),
    nome varchar(100),
    razavende varchar(100),
    telefone varchar (20),
    n_porcvende float (10,2),
    primary key (id));
    
    create table prodruto(
    id int not null auto_increment,
    codigo_produto varchar (20),
    descricao varchar (100),
    valor float(10,2),
    situaao varchar(1),
    id_fornecedor int,
    primary Key (id));
    
    create table venda(
    id int not null auto_increment,
    codigo_venda varchar (10),
    id_cliente int not null,
    id_fornecedor int not null,
    id_vendedor int not null,
    valor float (10,2),
    desconto float (10,2),
    total float (10,2),
    data_venda date,
    primary key (id));
    
    create table item_venda(
    id int not null auto_increment,
    codigo_item_venda int not null,
    id_produto int not null,
    valor float(10,2),
    qtde int,
    desconto float(10,2),
    primary key(id));
    
    -- fim da criação das Tabelas -- 

   -- remover todos os clientes --
    truncate cliente;
    select * from cliente;
    
    -- inicio alteração de tabelas --
    
    alter table cliente add column cidade varchar (50);
    
        -- mostra a estrutura fisica da tabela
    
    describe cliente;
    
    
    alter table cliente add column estado varchar (50);
    
	alter table cliente drop column estado;
    
	alter table cliente add column estado varchar (50);
    
    alter table cliente modify column estado int;
    
    alter table cliente modify column estado varchar (100);
  

  -- fim da alteração de tabelas --

        -- inicio da cria��o dos index --
    
    alter table produto add index produto_fornecedor_id (id asc);
    alter table venda add index venda_clien (id_cliente asc);
    alter table venda add index venda_fornecedor_id (id_fornecedor asc);
    alter table item_venda add index venda_produto_id (id_produto asc);
    
    -- fim da cria��o dos index --
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


