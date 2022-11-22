use db_video_locadora;

# Retorna a data atual do servidor (Ano-mês-dia)
select curdate() as data_atual;
select current_date() as data_atual;

# Retorna a hora atual do servidor (Hora-minutos-segundos)
select curtime() as hora_atual;
select current_time() as hora_atual;

#Retorna a data e a hora atual do servidor
select current_timestamp() as data_hora_atual;

# Funções pra formatar a hora

# Retorna somente a hora (de 0 a 24)
select time_format(current_time(),'%H') as hora;

# Retorna somente a hora (de 0 a 24)
select time_format(current_time(),'%T') as hora;

# Retona somente a hora (de 0 a 12)
select time_format(current_time(),'%h') as hora;

# Retona somente a hora (de 0 a 23 porém acrescenta o AM e o PM)
select time_format(current_time(),'%r') as hora;

# Retorna somente os minutos
select time_format(current_time(),'%i') as minutos;

# Retorna somente os segundos
select time_format(current_time(),'%s') as segundos;



select hour(current_time()) as hora;
select minute(current_time()) as minuto;
select second(current_time()) as segundos;


#função para formatar a data (date_format)

# Retorna o dia da semana vigente(em ingles)
select date_format(current_date(), '%W');
# Retorna o dia da semana vigente(em numeral 0= domingo ... 6 = sabado)
select date_format(current_date(), '%w');
# Retorna o dia da semana vigente(abreviado)
select date_format(current_date(), '%a');
# Retorna o mes vigente(em ingles)
select date_format(current_date(), '%M');
# Retorna o mês vigente(em numeral 1= janeiro ... 12 = dezembro)
select date_format(current_date(), '%m');
# Retorna o mês vigente(abreviado)
select date_format(current_date(), '%b');
# Retorna o dia vigente
select date_format(current_date(), '%d');
# Retorna o ano vigente com 2 dígitos
select date_format(current_date(), '%y');
# Retorna o ano vigente com 4 dígitos
select date_format(current_date(), '%Y');
# Retorna a quantidade de semanas no ano
select date_format(current_date(), '%u');


# Padrão brasileiro
select date_format(current_date(),'%d/%m/%Y');


#Funcao para retornar somente o dia,mes,ano
select day(current_date());
select month(current_date());
select year(current_date());

#Funcoes pra calcular diferença de datas e horas

select timediff('13:00:00','10:00:00') as qntHoras;

select ((timediff('13:00:00','10:00:00')*3)+4) as qntHoras;

select datediff('2006-02-15','2022-11-22') as qntDias;

select concat('R$',((datediff('2006-02-15','2022-11-22')*30)*-1))as qntDias;


# Retorna somente a parte da data
select date(current_timestamp());

# Retorna somente a parte da hora
select time(current_timestamp());
