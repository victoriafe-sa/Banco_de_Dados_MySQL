use bd_caso_estudo_vendas;
set foreign_key_checks = 0;

/* Alterando os registro das tabelaas*/
update  `bd_caso_estudo_vendas`.`tb_cli`
set cli_nome = 'Novo Nome Cliente'
where cli_cod = 1;
select * from tb_cli
order by cli_nome desc;

/*Deletando Registros do Banco de Dados*/
delete from `bd_caso_estudo_vendas`.`tb_prod`
where prod_cod = 3;
select * from tb_prod;

/*Consultado Registro e selecionando colunas*/
select prod_cod, prod_forn_cod, prod_desc
from `bd_caso_estudo_vendas`.`tb_prod`;
