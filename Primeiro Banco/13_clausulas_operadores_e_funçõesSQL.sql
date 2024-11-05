/* Cláusulas, operadores e funções SQL*/
/* Consultas com resultado ordenados*/
select * from `bd_caso_estudo_vendas`.`tb_cli`
where cli_end_bairro = 'sul'
order by cli_nome asc;

/*Consulta com resultado agrupado*/
select compra_cod from `bd_caso_estudo_vendas`.`tb_prod_comp`
group by compra_cod;

select *
from `bd_caso_estudo_vendas`.`tb_prod`
where prod_vlr between 10 and 25;

select * from `bd_caso_estudo_vendas`.`tb_prod`;

/*Operador soma*/
select sum(prod_vlr) from `bd_caso_estudo_vendas`.`tb_prod`;

/*Media em SQL*/
select avg(prod_vlr) from `bd_caso_estudo_vendas`.`tb_prod`;

/*Contando registro*/
select count(*) from `bd_caso_estudo_vendas`.`tb_prod`;

/*função MIN e MAX*/
select max(prod_vlr) from `bd_caso_estudo_vendas`.`tb_prod`;
select min(prod_vlr) from `bd_caso_estudo_vendas`.`tb_prod`;

