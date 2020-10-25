-- CRIAÃ‡ÃƒO DO BANCO --
CREATE DATABASE comercial;

-- ACESSANDO O BANCO -- 

use comercial;

-- inciando a criaÃ§Ã£o das tabelas

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
    
    -- fim da criaÃ§Ã£o das Tabelas -- 

   -- remover todos os clientes --
    truncate cliente;
    select * from cliente;
    
    -- inicio alteraÃ§Ã£o de tabelas --
    
    alter table cliente add column cidade varchar (50);
    
        -- mostra a estrutura fisica da tabela
    
    describe cliente;
    
    
    alter table cliente add column estado varchar (50);
    
	alter table cliente drop column estado;
    
	alter table cliente add column estado varchar (50);
    
    alter table cliente modify column estado int;
    
    alter table cliente modify column estado varchar (100);
  

  -- fim da alteraÃ§Ã£o de tabelas --

        -- inicio da criação dos index --
    
    alter table produto add index produto_fornecedor_id (id asc);
    alter table venda add index venda_clien (id_cliente asc);
    alter table venda add index venda_fornecedor_id (id_fornecedor asc);
    alter table item_venda add index venda_produto_id (id_produto asc);
    
    -- fim da criação dos index --
    
       -- Inicio da criação das constraints de chave estrangeira --
alter table venda add constraint fk_produto_fornecedor
foreign key(id_fornecedor)
references fornecedor(id)
on delete no action
on update no action;

alter table venda add constraint fk_venda_cliente
foreign key(id_cliente)
references cliente(id)
on delete no action
on update no action;

alter table venda add constraint fk_venda_vendedor
foreign key(id_vendedor)
references vendedor(id)
on delete no action
on update no action;

alter table venda add constraint fk_venda_fornecedor
foreign key(id_fornecedor )
references fornecedor(id)
on delete no action
on update no action;

alter table item_venda add constraint fk_item_venda_produto
foreign key(id_produto)
references produto (id)
on delete no action
on update no action;
--  Fim da criação das constraints --

use comercial;
/*
Arquivo: popula_banco.sql
*/

## Inicio popula tabela clientes
insert into cliente values( 1 ,'0001','AARONSON FURNITURE'      ,'AARONSON FURNITURE LTD' ,'2015-02-17 23:14:50',     '17.807.928/0001-85', '(21) 8167-6584' ,'QUEIMADOS'             ,'RJ' );
insert into cliente values( 2   ,'0002','LITTLER '                ,'LITTLER  LTDA'         ,'2015-02-17 23:14:50',     '55.643.605/0001-92', '(27) 7990-9502' ,'SERRA'                 ,'ES' );
insert into cliente values( 3   ,'0003','KELSEY  NEIGHBOURHOOD'    ,'KELSEY  NEIGHBOURHOOD' ,'2015-02-17 23:14:50',     '05.202.361/0001-34', '(11) 4206-9703' ,'BRAGANÇA PAULISTA'     ,'SP' );
insert into cliente values( 4   ,'0004','GREAT AMERICAN MUSIC'    ,'GREAT AMERICAN MUSIC'    ,'2015-02-17 23:14:50',     '11.880.735/0001-73', '(75) 7815-7801' ,'SANTO ANTÔNIO DE JESUS','BA' );
insert into cliente values( 5   ,'0005','LIFE PLAN COUNSELLING'    ,'LIFE PLAN COUNSELLING' ,'2015-02-17 23:14:50',     '75.185.467/0001-52', '(17) 4038-9355' ,'BEBEDOURO'             ,'SP' );
insert into cliente values( 6   ,'0006','PRACTI-PLAN'              ,'PRACTI-PLAN LTDA'     ,'2015-02-17 23:14:50',     '32.518.106/0001-78', '(28) 2267-6159' ,'CACHOEIRO DE ITAPEMIRI','ES' );
insert into cliente values( 7   ,'0007','SPORTSWEST'              ,'SPORTSWEST LTDA'       ,'2015-02-17 23:14:50',     '83.175.645/0001-92', '(61) 4094-7184' ,'TAGUATINGA'           ,'DF' );
insert into cliente values( 8   ,'0008','HUGHES MARKETS'          ,'HUGHES MARKETS LTDA'   ,'2015-02-17 23:14:50',     '04.728.160/0001-02', '(21) 7984-9809' ,'RIO DE JANEIRO'       ,'RJ' );
insert into cliente values( 9   ,'0009','AUTO WORKS'              ,'AUTO WORKS LTDA'       ,'2015-02-17 23:14:50',     '08.271.985/0001-00', '(21) 8548-5555' ,'RIO DE JANEIRO'       ,'RJ' );
insert into cliente values( 10 ,'00010','DAHLKEMPER '           ,'DAHLKEMPER  LTDA'     ,'2015-02-17 23:14:50',   '49.815.047/0001-00','(11) 4519-7670'  ,'SÃO PAULO'             ,'SP' );
## Fim popula tabela clientes

## Inicio popula tabela Vendedores
insert into vendedor values(1,'0001',    'CARLOS FERNANDES','CARLOS FERNANDES LTDA',  '(47) 7535-8144',12  );
insert into vendedor values(2,'0002',    'JÚLIA GOMES',     'JÚLIA GOMES LTDA',       '(12) 8037-6661',25  );
## Fim popula tabela Vendedores

## Inicio popula tabela Fornecedores
insert into fornecedor values(1 ,'0001',  'DUN RITE LAWN MAINTENANCE'   ,'DUN RITE LAWN MAINTENANCE LTDA' ,'(85) 7886-8837' );
insert into fornecedor values(2 ,'0002',  'SEWFRO FABRICS'           ,'SEWFRO FABRICS LTDA'            ,'(91) 5171-8483' );
## Fim popula tabela Fornecedores

## Inicio popula tabela Produtos
insert into produto values( 1 , '123131',     'NOTEBOOK' ,'1251.29'  ,'A', 1  );
insert into produto values( 2 , '123223',     'SMARTPHONE','1242.21'  ,'A', 2  );
insert into produto values( 3 , '1231',     'DESKTOP' ,'1241.21'  ,'A', 1  );
insert into produto values( 4 , '142123',     'TELEVISÃO' ,'2564.92'  ,'A', 2  );
insert into produto values( 5 , '7684',     'DRONE' ,'2325.32'  ,'A', 1  );
## Fim popula tabela Produtos

## Inicio popula tabela Vendas
## n_numevenda c_codivenda n_numeclien n_numeforne n_numevende n_valovenda n_descvenda n_totavenda d_datavenda  
insert into venda values(1    , '1'    , 1 , 1 , 1 ,  '25141.02'  , 0 , '25141.02'  ,  '2015-01-01' );
insert into venda values(2    , '2'    , 2 , 2 , 2 ,  '12476.58'  , 0 , '12476.58'  ,  '2015-01-02' );
insert into venda values(3    , '3'    , 3 , 1 , 1 ,  '16257.32'  , 0 , '16257.32'  ,  '2015-01-03' );
insert into venda values(4    , '4'    , 4 , 2 , 2 ,  '8704.55',    0 , '8704.55'   ,  '2015-01-04' );
insert into venda values(5    , '5'    , 5 , 1 , 1 ,  '13078.81', 0 , '13078.81'  ,  '2015-01-01' );
insert into venda values(6    , '6'    , 6 , 2 , 2 ,  '6079.19',    0 , '6079.19'   ,  '2015-01-02' );
insert into venda values(7    , '7'    , 7 , 1 , 1 ,  '7451.26',    0 , '7451.26'   ,  '2015-01-03' );
insert into venda values(8    , '8'    , 8 , 2 , 2 ,  '15380.47', 0 , '15380.47'  ,  '2015-01-04' );
insert into venda values(9    , '9'    , 9 , 1 , 1 ,  '13508.34', 0 , '13508.34'  ,  '2015-01-01' );
insert into venda values(10    , '10' , 1 , 2 , 2 ,  '20315.07', 0 , '20315.07'  ,  '2015-01-02' );
insert into venda values(11    , '11' , 1 , 1 , 1 ,  '8704.55',    0 , '8704.55'   ,  '2015-01-01' );
insert into venda values(12    , '12' , 2 , 2 , 2 ,  '11198.05', 0 , '11198.05'  ,  '2015-01-02' );
insert into venda values(13    , '13' , 3 , 1 , 1 ,  '4967.84',    0 , '4967.84'   ,  '2015-01-03' );
insert into venda values(14    , '14' , 3 , 2 , 2 ,  '7451.26',    0 , '7451.26'   ,  '2015-01-04' );
insert into venda values(15    , '15' , 5 , 1 , 1 ,  '10747.359', 0 , '10747.36'  ,  '2015-01-01' );
insert into venda values(16    , '16' , 6 , 2 , 2 ,  '13502.34', 0 , '13502.34'  ,  '2015-01-02' );
insert into venda values(17    , '17' , 7 , 1 , 1 ,  '22222.99', 0 , '22222.99'  ,  '2015-01-03' );
insert into venda values(18    , '18' , 8 , 2 , 2 ,  '15465.69', 0 , '15465.69'  ,  '2015-01-04' );
insert into venda values(19    , '19' , 9 , 1 , 1 ,  '4650.64',    0 , '4650.64'   ,  '2015-01-01' );
insert into venda values(20    , '20' , 9 , 2 , 2 ,  '6975.96',    0 , '6975.96'   ,  '2015-01-02' );
## Fim popula tabela Vendas



## Inicio popula tabela Itens Vendas
insert into item_venda values(1 ,1 ,1,'1251.29',1,0);
insert into item_venda values(2 ,1 ,2,'1242.21',2,0);
insert into item_venda values(3 ,1 ,3,'1241.21',3,0);
insert into item_venda values(4 ,1 ,4,'1513.77',4,0);
insert into item_venda values(5 ,1 ,5,'2325.32',5,0);              
insert into item_venda values(6 ,2 ,1,'1251.29',6,0);              
insert into item_venda values(7 ,3 ,3,'1241.21',7,0);              
insert into item_venda values(8 ,4 ,1,'1251.29',1,0);              
insert into item_venda values(9 ,5 ,3,'1241.21',2,0);              
insert into item_venda values(10,6 ,1,'1251.29',3,0);              
insert into item_venda values(11,7 ,2,'1242.21',4,0);              
insert into item_venda values(12,8 ,5,'2325.32',5,0);
insert into item_venda values(13,9 ,2,'1242.21',6,0);
insert into item_venda values(14,10,3,'1241.21',7,0);
insert into item_venda values(15,11,1,'1251.29',1,0);
insert into item_venda values(16,12,1,'1251.29',2,0);
insert into item_venda values(17,13,2,'1242.21',3,0);
insert into item_venda values(18,14,2,'1242.21',4,0);
insert into item_venda values(19,15,3,'1241.21',5,0);
insert into item_venda values(20,16,3,'1241.21',6,0);
insert into item_venda values(21 ,17,4,'1513.77',7,0);
insert into item_venda values(22 ,18,4,'1513.77',1,0);
insert into item_venda values(23 ,19,5,'2325.32',2,0);
insert into item_venda values(24 ,20,5,'2325.32',3,0);
insert into item_venda values(25 ,2 ,2,'1242.21',4,0);
insert into item_venda values(26 ,3 ,4,'1513.77',5,0);
insert into item_venda values(27 ,4 ,2,'1242.21',6,0);
insert into item_venda values(28 ,5 ,4,'1513.77',7,0);
insert into item_venda values(29 ,6 ,5,'2325.32',1,0);
insert into item_venda values(30,7 ,3,'1241.21',2,0);
insert into item_venda values(31,8 ,1,'1251.29',3,0);
insert into item_venda values(32,9 ,4,'1513.77',4,0);
insert into item_venda values(33,10,5,'2325.32',5,0);
insert into item_venda values(34,11,2,'1242.21',6,0);
insert into item_venda values(35,12,2,'1242.21',7,0);
insert into item_venda values(36,13,3,'1241.21',1,0);
insert into item_venda values(37,14,3,'1241.21',2,0);
insert into item_venda values(38,15,4,'1513.77',3,0);
insert into item_venda values(39,16,4,'1513.77',4,0);
insert into item_venda values(40,17,5,'2325.32',5,0);
insert into item_venda values(41,18,5,'2325.32',6,0);
## Fim popula tabela  Itens Vendas


-- consulta simples em uma unica tabela--

 SELECT * FROM produto;
select * from fornecedor where id = 2;

-- consulta ligando tabelas -- 

select p.descricao, p.valor, p.id_fornecedor, f.nome from produto p inner join forncedor f on p.id_fornecedor = f.id;
    
    
    
    -- consulta simples em uma unica tabela--

 SELECT * FROM produto;
select * from fornecedor where id = 2;

-- consulta ligando tabelas -- 

select p.descricao, p.valor, p.id_fornecedor, f.nome from produto p inner join forncedor f on p.id_fornecedor = f.id;
    
    
    
   select c.nome as "Nome Cliente", f.nome as "Nome do Fornecedor" , vend.nome as "Nome do Fornecedor",
 v.valor , concat( v.desconto ,' %') as desconto, concat(" R$ " v.total) as total_venda from venda v 
inner join fornecedor f on v.id_fornecedor = f.id
inner join cliente c on v.id_cliente = c.id
inner join vendedor vend on v.id_vendedor = vend.id; 
    

select format (avg(p.valor),2) as 'media preço com format',
avg (p.valor) as 'media preço sem format'
from produto p;


select * from produto;
select count(*) from produto;

select v.codigo_venda , v.id_vendedor , v.id_cliente,v.valor
from venda v
having v.valor > 9000
order by 4 asc ;
    
    select max(valor) as "maior valor de venda", 
min(valor) as "menor valor de venda"
from venda;


select sum(valor) from produto;
select concat("R$ " , format (sum(valor),2)) as 'total valor de produtos' from produto;

select lower(nome) from cliente;
select upper(descricao) from produto;

-- completa ua string a direita com o caractere desejado--
select rpad(descricao,10, '***') from produto;

-- consulta com funcçoes de tempo
-- diferenca entre datas--
select datediff('2015-03-17','2015-03-15');
-- converter de string para data --
select str_to_date('2013', '%y');
-- consulta data e hora--
select now();


-- retorna o dia do mes de uma data
select dayofmonth(data_venda)from venda;

## retorna o valor numerico do dia da semana --
select dayofweek(data_venda) from venda;
    
    
    
    
    
    
    


