-- INNER JOIN
select *
from `bd_caso_estudo_vendas`.`tb_func`
	inner join `bd_caso_estudo_vendas`.`tb_depto`
    on depto_cod = func_depto;
    
select compra_cod, cli_nome, func_nome
from `bd_caso_estudo_vendas`.`tb_compra`
		inner join `bd_caso_estudo_vendas`.`tb_func`
	on func_cod = compra_func_cod
		inner join `bd_caso_estudo_vendas`.`tb_cli`
	on cli_cod = compra_cli_cod;


	select * from `bd_caso_estudo_vendas`.`tb_cli`
	where cli_end_bairro = 'jardim'
	order by cli_nome asc;

select * from tb_cli;
use bd_caso_estudo_vendas;