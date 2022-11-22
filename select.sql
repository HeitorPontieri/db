# 	Estrutura básica do SELECT
	
# Retorna todas as colunas (*) e todos os registros
select * from tbl_filme;
select tbl_filme.* from tbl_filme;

# Retorna apenas os atributos selecionados de todos os registros
	select nome,duracao,data_lancamento from tbl_filme;

# tipo de select: nome_da_tabela.atributo
	select tbl_filme.nome, tbl_filme.duracao,tbl_filme.data_lancamento from tbl_filme;

# Filtro pelo ID
	select tbl_filme.* from tbl_filme where id = 25;

	select tbl_filme.sinopse from tbl_filme where id = 29;

# Filtro por outros atributos]

	# nome
	select tbl_filme.* from tbl_filme where nome = 'Batman';
    
   
   # Retorna os filmes que TERMINAM com a palavra chave (Batman)
	select tbl_filme.* from tbl_filme where nome like '%Batman';
   
   # Retorna os filmes que COMEÇAM com a palavra chave (Batman)
	select tbl_filme.* from tbl_filme where nome like 'Batman%';
    
     # Retorna os filmes que POSSUEM EM QUALQUER PARTE DA STRING 	 a palavra chave (Batman)
	select tbl_filme.* from tbl_filme where nome like '%Batman%';
    
	# SINOPSE
	select tbl_filme.sinopse from tbl_filme where sinopse like '%sim%';
  
	select tbl_filme.* from tbl_filme where nome like 'a%';
    
# ORDENACAO
	select tbl_filme.*  from tbl_filme order by nome; # Ordenação padrão (Crescente)
	select tbl_filme.*  from tbl_filme order by nome asc; # Ordenação Crescente
	select tbl_filme.* from tbl_filme order by nome desc; # Ordenação Decrescente
    
    # 
    select tbl_filme.* from tbl_filme order by nome,nome_original desc; 
    
    select tbl_filme.* from tbl_filme order by nome asc,nome_original desc;
  
--    = -> Igualdade -> = ''
--   like -> Igualdade -> like ''
--   
--   like'%palavra-chave' -> Retorna todos os itens que terminam com a palavra-chave
--   
--   like 'palavra_chave%' -> Retorna todos os itens que começam com a palavra-chave
--   
--   like '%palavra-chave%' -> Retorna todos os itens que possuem a palavra-chave



--    Operadores de Comparação
--    = -> Igual
--    < - > Menor que
--   > -> Maior que 
--    <= -> Menor ou igual a que
--   >= -> Maior ou igual a que 
--  <> -> Diferente
  
	# Ordenação por data
		select tbl_filme.* from tbl_filme where data_lancamento < '1980-12-31';
		select tbl_filme.* from tbl_filme where data_lancamento <= '2000-12-31';
		select tbl_filme.* from tbl_filme where data_lancamento >= '2015-12-31';
		select tbl_filme.* from tbl_filme where data_lancamento <> '2015-12-31';
		select tbl_filme.* from tbl_filme where data_lancamento = '2000-03-03';
        
		
         
        # Operadores lógicos
        
--         not -> não é
--         and  -> e -> continua até o fim do script, para retornar true todos os itens precisam ser verdadeiros
--         or -> ou -> para o script no primeiro parametro que estiver verdadeiro
--         
--         
        # Ordem de execução dos operadores lógicos
        
--         0 - ()
--         1 - not (!!)
--         2 - and (&&)
--         3 - or (||)

 # AND
select tbl_filme.* from tbl_filme where data_lancamento < '2010-01-01' and  nome like 'a%';

# OR
select tbl_filme.* from tbl_filme where data_lancamento < '2010-01-01' or nome like 'a%';

select tbl_filme.* from tbl_filme where nome like 'p%' or nome like 'a%' or nome like 'v%';

select tbl_filme.* from tbl_filme where (((nome like 'a%' or nome_original like 'a%') or 
                                        (nome like 'p%' or nome_original like 'p%')) 
										and data_lancamento < '2010-01-01');