create database gervenda_1e;
use gervenda_1e;

create table Produtos(
produto_id int auto_increment primary key,
nome varchar(50),
preco decimal(10,2),
estoque int 
);

create table vendas(
venda_id int auto_increment primary key,
produto_id int,
quantidade int,
data_venda date,
foreign key (produto_id) references Produtos (produto_id)
);

insert into produtos (nome, preco,estoque)
values ("Notebook Dell", 7000.00, 35),
		("Computador Positivo", 30.00, 5),
		("Computador Lenovo", 5000.00, 15),
        ("Computador LG", 500.00, 20),
        ("Computador Sorriso", 1200.00, 20);

insert into vendas(produto_id, quantidade, data_venda)
values (1,5,"2024-9-20"),
	(3,6,"2024-10-28"),
	(2,4,"2024-11-5"),
	(4,8,"2024-11-6"),
	(5,2,"2024-12-24");

update Produtos
set preco= 6500.00
where produto_id = 1;

update vendas
set quantidade = 63
where venda_id = 1;

delete from Produtos
where produto_id = 2;

delete from venda
where venda_id=3 ;



select*from produtos; 
select*from vendas; 

select nome, estoque from Produtos;
select quantidade, data_venda from vendas;

select*from vendas
where venda_id = 2;

