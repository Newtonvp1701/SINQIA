select * from dbo.clientes 
 where codigo_cidade >=:pCodCidIni and codigo_cidade <=:pCodCidFin 
order by codigo_cidade, nome
