-- USE bd_caso_estudo_vendas;

DELIMITER $$
CREATE PROCEDURE sp_InserirCompra(
	IN cli_cod INT,
    IN func_cod INT,
    IN produtos_cod VARCHAR(255),
    IN produtos_quant VARCHAR(255)
)
BEGIN 
	DECLARE compra_cod INT;
    DECLARE prod_cod INT;
    DECLARE quantidade INT;
    DECLARE Idx INT DEFAULT 1;
    DECLARE prod_cod_vlr VARCHAR(10);
    DECLARE quant_vlr VARCHAR(10);
    
    START transaction;
    INSERT INTO tb_compra (compra_cli_cod, compra_func_cod, compra_qtd_prod)
    VALUES (cli_cod, func_cod,(
    SET 
    )
END$$
DELIMITER ;
