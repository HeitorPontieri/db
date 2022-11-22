use  db_video_locadora;

show tables;

select * from tbl_filme;
select * from tbl_genero;
select * from tbl_filme_genero;

update tbl_filme set qntde = 20 where id = 30;
# Relacionamento pelo Where
# USAR SEMPRE O AND
select tbl_filme.nome as nome_filme, tbl_filme.sinopse, tbl_filme.data_lancamento,
	tbl_genero.nome as nome_genero,tbl_classificacao.nome as nome_classificacao,tbl_classificacao.classificacao
    from tbl_filme, tbl_genero, tbl_filme_genero,tbl_classificacao
    where tbl_filme.id = tbl_filme_genero.id_filme and tbl_genero.id = tbl_filme_genero.id_genero and tbl_classificacao.id = tbl_filme.id_classificacao
    order by tbl_filme.nome;

# Relacionamento pelo From	
#inner join
s
select tbl_filme.nome as nome_filme, tbl_filme.sinopse, tbl_filme.data_lancamento,
tbl_genero.nome as nome_genero,tbl_classificacao.nome as nome_classificacao,tbl_classificacao.classificacao
from tbl_filme	
	inner join tbl_filme_genero
		on tbl_filme.id = tbl_filme_genero.id_filme
	inner join tbl_genero
		on tbl_genero.id = tbl_filme_genero.id_genero
	inner join tbl_classificacao
		on tbl_classificacao.id = tbl_filme.id_classificacao
        order by tbl_filme.nome;

