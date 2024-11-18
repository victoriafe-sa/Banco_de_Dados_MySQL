/* Transações e Integridade de Dados - TCL
Iniciando a transação*/
start transaction;
-- Inserindo cliente
insert into `bd_caso_estudo_vendas`.`tb_cli`(cli_cod,cli_nome,cli_cpf,cli_end_rua,cli_end_num,cli_end_bairro,cli_end_cep)
values
(187,'luiza maria', '14789542687', 'Rua Teste', '199', 'Bairro teste', '12345678');

-- Inserindo a compra
insert into `bd_caso_estudo_vendas`.`tb_compra`(compra_cod,compra_cli_cod,compra_func_cod,compra_qtd_cod)
values
('10','10','1','10');

-- 