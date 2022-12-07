select tbl_colaboradores.nome_usuario,tbl_colaboradores.senha from tbl_colaboradores 
                    where nome_usuario = MD5('abc') and senha = MD5('123');
                    
select * from tbl_colaboradores;

insert into tbl_formulario(nome,mensagem) 
	values ('luquinhas','sua pizza é muito boa parabens');
	
select tbl_formulario.nome,tbl_formulario.mensagem from tbl_formulario
	inner join tbl_celular
		on tbl_celular.id = tbl_formulario.id_celular
	inner join tbl_telefone
		on tbl_celular.id = tbl_formulario.id_telefone
	inner join tbl_criticas_sugestoes
		on tbl_criticas_sugestoes.id = tbl_formulario.id_criticas;


INSERT INTO Orders ( userid, timestamp) 
SELECT Orders.userid, Orders.timestamp FROM Users INNER JOIN Orders ON  Orders.id = Users.idp;

 insert into tbl_formulario(nome,mensagem) values ('bara', 'bere');
 
 desc tbl_formulario;
 
 insert into tbl_formulario(nome, mensagem, email, telefone, celular, critica) values ('Luquinhas', 'Pizza com a massa seca e dura, a linguiça tava dificil de engolir, demorou e provavelmente o motoboy veio dando grau', 'luquinhasmafumafu@gmail.com', '11 24296215', '11 991791565', 'sugestao');
 
 desc tbl_formulario;
 
 
 insert into tbl_formulario(nome, mensagem, email, telefone, celular, criticas_sugestoes) 
        
       values ('Luquinhas', 'Pizza com a massa seca e dura, a linguiça tava dificil de engolir, demorou e provavelmente o motoboy veio dando grau','luquinhasmafumafu@gmail.com' , '11 2471-9571', '11 998518-9571', 'critica');
       
       
       select * from tbl_produto;
       
       

        
        desc tbl_horario_de_funcionamento;
        desc tbl_produto;
        
        insert into tbl_produto
        (
            nome,
            imagem,
            status_promocao,
            preco,
            porcentagem_desconto,
            status_favorito
        )
        value(
            'Coca-Cola',
            'https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png',
            'nao',
            '5',
            '0',
            '0'
        );
        
        
        select tbl_colaboradores.nome_usuario,tbl_colaboradores.senha from tbl_colaboradores 
                    where nome_usuario = MD5('abc') and senha = MD5('123');
                    
                    select tbl_colaboradores.nome_usuario,tbl_colaboradores.senha from tbl_colaboradores 
                    where nome_usuario = MD5('nome_usuario=abc') and senha = MD5('senha=123');
                    
                    use db_pizzaria;
                    
                    
						insert into tbl_produto
			(
				nome,
				imagem,
				status_promocao,
				preco,
				porcentagem_desconto,
				status_favorito
			)
			value(
				'Coca-Cola',
				'https://i.pinimg.com/originals/e6/c8/b2/e6c8b237a4afd124b4dd79ed8707b9bb.png',
				'nao',
				'5',
				'0',
				'0'
			);
            
            select * from tbl_pizza;
            select * from tbl_ingredientes_pizza;
            select * from tbl_ingredientes;
            select * from tbl_produto;
			
            
            
            
            desc tbl_servicos;
            desc tbl_horario_de_funcionamento;
            
            insert into tbl_bebida
        (
            teor_alcoolico,
            volume,
            id_Produto
        )
        values(
            0,
            500,
            1
        );
        
        insert into tbl_servico(nome,id_horario_funcionamento)
            values('Delivery',2);
            
            
            use db_pizzaria;
            
            insert into tbl_servicos(nome,id_horario_funcionamento)
            values('Delivery',2);
            
            select * from tbl_horario_de_funcionamento;
            select * from tbl_servicos;
            
            
            
            select tbl_servicos.nome,tbl_horario_de_funcionamento.abertura,tbl_horario_de_funcionamento.fechamento
            from tbl_servicos
				inner join tbl_horario_de_funcionamento
					on tbl_horario_de_funcionamento.id = tbl_servicos.id_horario_funcionamento;
                    
                    
                    select * from vwServicos;
                    
                    select * from tbl_produto;
                    
                    
                    # o parametro vai ser o status promocao
                    
                    # IF tbl_produto.status_promocao = 'sim', vai ser a condicao do if
                    # select * from tbl_produto  where tbl_produto.status_promocao = 'sim'
                    
                    # ELSE IF tbl_produto.status_promocao = 'nao'
                    # select * from tbl_produto  where tbl_produto.status_promocao = 'nao'
                    
                    # ELSE 
                    # select * from tbl_produto
                    
                    DELIMITER $$
                    
                    create procedure procPromocao (IN status_promocao varchar(20))
                    
                    BEGIN
						if status_promocao = 'sim' then
							select * from tbl_produto  where tbl_produto.status_promocao = 'sim';
						
                        elseif status_promocao = 'nao' then
							select * from tbl_produto  where tbl_produto.status_promocao = 'nao';
	
						else 
                        select * from tbl_produto;
                        
						end if;
                    
                    END $$
                    
                    
                    drop procedure procPromocao;
                    
                    call procPromocao('sim');
                    
                 #   call procProduto;
			
                    
                    
                    
		