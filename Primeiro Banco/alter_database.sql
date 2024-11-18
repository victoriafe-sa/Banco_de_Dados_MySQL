/*
Entendendo indices e implementando relacionamentos
*/
-- Entrando no banco desejado
use bd_caso_estudo_vendas;

-- Criando index, um funcionario pertence a um departamento
alter table `bd_caso_estudo_vendas`.`tb_func`
add index `fk_func_depto_idx`(`func_depto`asc);

-- Adicionando chave estrangeira
alter table `bd_caso_estudo_vendas`.`tb_func`
add constraint `fk_func_depto`
	foreign key (`func_depto`)
    references `bd_caso_estudo_vendas`.`tb_depto`(`depto_cod`)
    on delete no action 
    on update no action;
    
-- Uma compra é registrada por um funcionario
alter table `bd_caso_estudo_vendas`.`tb_compra`
add index `fk_compra_func_idx`(`compra_func_cod`asc);

-- Adicionando chave estrangeira
alter table `bd_caso_estudo_vendas`.`tb_compra`
add constraint `fk_compra_func`
	foreign key (`compra_func_cod`)
    references `bd_caso_estudo_vendas`.`tb_func`(`func_cod`)
    on delete no action 
    on update no action;
    
-- Uma cliente realiza uma compra
alter table `bd_caso_estudo_vendas`.`tb_compra`
add index `fk_compra_cli_idx`(`compra_cli_cod`asc);

-- Adicionando chave estrangeira
alter table `bd_caso_estudo_vendas`.`tb_compra`
add constraint `fk_compra_cli`
	foreign key (`compra_cli_cod`)
    references `bd_caso_estudo_vendas`.`tb_cli`(`cli_cod`)
    on delete no action 
    on update no action;

-- Um produto é fornecido por um fornecedor
alter table `bd_caso_estudo_vendas`.`tb_prod`
add index `fk_prod_forn_idx`(`prod_forn_cod`asc);

-- Adicionando chave estrangeira
alter table `bd_caso_estudo_vendas`.`tb_prod`
add constraint `fk_prod_forn`
	foreign key (`prod_forn_cod`)
    references `bd_caso_estudo_vendas`.`tb_forn`(`forn_cod`)
    on delete no action 
    on update no action;
    
-- Um produto é fornecido por um fornecedor
alter table `bd_caso_estudo_vendas`.`tb_prod`
add index `fk_prod_forn_idx`(`prod_forn_cod`asc);

-- Adicionando chave estrangeira
alter table `bd_caso_estudo_vendas`.`tb_prod`
add constraint `fk_prod_forn`
	foreign key (`prod_forn_cod`)
    references `bd_caso_estudo_vendas`.`tb_forn`(`forn_cod`)
    on delete no action 
    on update no action;

-- o cliente possuiu muitos telefones
alter table `bd_caso_estudo_vendas`.`tb_cli_tel`
add index `fk_cli_tel_idx`(`tel_cli_cod`asc);

-- Adicionando chave estrangeira
alter table `bd_caso_estudo_vendas`.`tb_cli_tel`
add constraint `fk_cli_tel`
	foreign key (`tel_cli_cod`)
    references `bd_caso_estudo_vendas`.`tb_cli`(`cli_cod`)
    on delete no action 
    on update no action;
    
-- definindo que compras possuem muitos produtos
alter table `bd_caso_estudo_vendas`.`tb_prod_comp`
add index `fk_prod_comp_compra_idx`(`compra_cod`asc);

-- Adicionando chave estrangeira
alter table `bd_caso_estudo_vendas`.`tb_prod_comp`
add constraint `fk_prod_comp_compra`
	foreign key (`compra_cod`)
    references `bd_caso_estudo_vendas`.`tb_compra`(`compra_cod`)
    on delete no action 
    on update no action;

