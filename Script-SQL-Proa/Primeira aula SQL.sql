create database Consultorio; /* criando o banco de dados */
use consultorio; /* acessando esse banco criado */

create table pacientes(

	pk_id_paciente int auto_increment primary key, 
	nome_paciente varchar (900) not null, /* Varchar = Numeros ou nomes especificos e tambem é o limite do caracter */ 
    data_nas_paciente date not null,
    cpf_paciente char (11) not null, /*Char sempre vai manter uma quantia de (X), ja o vachar se adapta a quantidade de caracter*/
    genero_paciente enum ('f','m','o') not null, /* enum = é quanto tem um Valor já pre definido como 'F','M','O'*/
    endereco_paciente varchar (100) not null,
    email_paciente varchar  (50) not null,
    telefone_paciente char (13) not null /* NOT NULL = torna obrigatorio ser preenchido essa area*/ 
					
                    /*No final nao colocar mais virgula, para nao pensar que tem mais codigos*/

);



insert into pacientes (

		nome_paciente,
		data_nas_paciente,
		cpf_paciente,
		genero_paciente,
		endereco_paciente,
		email_paciente,
		telefone_paciente) 
        
values ('João da Silva', '2006-09-11', '43006983840', 'm',' Rua nove 102', 'Joaofino@gmail.com', '5511911456278'),
 ('Vitor lima', '2009-09-30', '43888983840', 'm',' Rua nove 102', 'Vitinbomdabala@gmail.com', '5511911456278'),
 ('Maria', '2006-09-11', '43006983840', 'f',' Rua armando gusto', 'Maria.lima09@gmail.com', '5511911456278'),
 ('Julia', '2006-09-11', '43006983840', 'f',' Rua xipazinpa 89', 'jua098gost@gmail.com', '5511911456278'),
 ('Marcelo', '2006-09-11', '43006983840', 'm',' Rua taodistante 99', 'Jmarcelinc@gmail.com', '5511911456278'),
 ('Pedro', '2006-09-11', '43006983840', 'm',' Rua ali vbem 34', 'Joaofino@gmail.com', '5511911456278'),
 ('Leticia', '2006-09-11', '43006983840', 'f',' Rua japxc 864', 'Joaofino@gmail.com', '5511911456278'),
 ('Duda', '2006-09-11', '43006983840', 'f',' Rua pinto albes 56', 'Joaofino@gmail.com', '5511911456278'),
 ('Yasmin', '2006-09-11', '43006983840', 'f',' Rua laoeq 564', 'Joaofino@gmail.com', '5511911456278');
 
describe pacientes; /* Serve para ver a estrutura da tabela*/
select * from pacientes; /* Serve para ver os conteúdos dentro da tabela */

 
 create table medico(

	pk_id_medico int auto_increment primary key, 
	nome_medico varchar (100) not null, /* Varchar = Numeros ou nomes especificos e tambem é o limite do caracter */ 
    data_nas_medico date not null,
    cro_medico char (10) not null,
    cpf_medico char (11) not null, /*Char sempre vai manter uma quantia de (X), ja o vachar se adapta a quantidade de caracter*/
    genero_medico enum ('f','m','o') not null, /* enum = é quanto tem um Valor já pre definido como 'F','M','O'*/
    endereco_medico varchar (100) not null,
    email_medico varchar  (50) not null,
    telefone_medico char (13) not null /* NOT NULL = torna obrigatorio ser preenchido essa area*/ 
					
                    /*No final nao colocar mais virgula, para nao pensar que tem mais codigos*/

);

drop table medico;

insert into medico (
        nome_medico,
        data_nas_medico,
        cro_medico,
        cpf_medico,
        genero_medico,
        endereco_medico,
        email_medico,
        telefone_medico) 
        
values ('alex','2000-09-03', '578114', '84966148762', 'm', 'Rua adamasturbo', 'aledorctor01@gmail.com', '5511945883164' );

describe medico; /* Serve para ver a estrutura da tabela*/
select * from medico; /* Serve para ver os conteúdos dentro da tabela */

create table consulta(

	pk_id_consulta int auto_increment primary key, 
	Local_consulta varchar (100) not null, 
    data_consulta  datetime ,
    descricao_consulta varchar (1000)

);

insert into consulta(
		Local_consulta,
        data_consulta,
        descricao_consulta)
        
values ('Pronto socorro', '2024-10-29 12:30:00','Consulta diaria com doutor alexandre'),
('Pronto socorro', '2024-10-29 12:30:00','Consulta diaria com doutor alexandre'),
('Pronto socorro', '2024-10-29 12:30:00','Consulta diaria com doutor alexandre'),
('Pronto socorro', '2024-10-29 12:30:00','Consulta diaria com doutor alexandre'),
('Pronto socorro', '2024-10-29 12:30:00','Consulta diaria com doutor alexandre'),
('Pronto socorro', '2024-10-29 12:30:00','Consulta diaria com doutor alexandre'),
('Pronto socorro', '2024-10-29 12:30:00','Consulta diaria com doutor alexandre'),
('Pronto socorro', '2024-10-29 12:30:00','Consulta diaria com doutor alexandre'),
('Pronto socorro', '2024-10-29 12:30:00','Consulta diaria com doutor alexandre');
         


describe consulta; /* Serve para ver a estrutura da tabela*/
select * from consulta; /* Serve para ver os conteúdos dentro da tabela */