insert into FUNCIONARIOS (cpf, nome, nomesocial, email, sexo, telefone, ctps, data_adm, data_dem, salario)
values ("567.987.568-98", 'fernando souza', 'nando', "fernando30@gmail.com",'M', 986653427, "522.83548.03-8", '2020-06-08', '2022-09-12', 1852.49),
	   ("706.456.927-78", 'vitoria sousa', 'vitorinha', "vit2022@gmail.com", 'F', 985684039, "835.01228.94-6" , '2019-02-10', '2022-08-20', 2544.00),
       ("593.838.098-23", 'maicon santos', 'maicão', "maicao22@gmail.com", 'M', 987438004, "397.47750.82-4", '2020-05-04', '2022-06-10', 3000.00),
       ("098.637.847-46", 'jose martins', 'jose', "jomartins@gmail.com", 'M', 980989294, "726.01165.00-5" ,'2019-09-03', '2022-07-01', 2500.00),
       ("837.466.292-04", 'paulo santana', 'paulinho', "paulinhos@gmail.com", 'M', 989378724, "694.79919.12-4" , '2021-06-04', '2022-12-31', 2540.50),
       ("048.678.356-76", 'maria luiza', 'luiza', "marial20@gmail.com", 'F', 984567390, "541.37683.27-4",'2020-02-04', '2022-05-30', 1500.00),
       ("375.889.739-40", 'carlos oliveira', 'carlinhos', "carlosoli@gmail.com", 'M', 986437589, "225.17497.09-0" ,'2019-05-20', '2022-04-30', 2300.00),
       ("235.748.546-48", 'silvia lima', 'silvinha', "silvinha30@gmail.com", 'F', 985738484, "215.55720.32-8" ,'2018-03-06', '2022-12-03', 3578.00),
       ("408.654.976-30", 'luiza sonza', 'luz', "luz123@gmail.com", 'F', 983549398 , "680.68553.25-6" ,'2021-03-20', '2022-08-30', 2340.30),
       ("509.893.985-30", 'francisco lima', 'francis', "francis30@gmail.com", 'M',  986543093, "345.85518.74-3", '2017-09-06', '2022-07-01', 3098.09);
       

       
insert into ENDERECO_FUNCIONARIO (FUNCIONARIOS_cpf, UF, cidade, bairro, rua, numero, comp, cep) 
values ("567.987.568-98", 'PE', 'Recife', 'Casa Amarela', 'Rua dos amores', 83, 'ap 5', "52748-372"),
       ("706.456.927-78", 'PE', 'Recife', 'Madalena', 'Rua da alegria', 81, 'ap 14', "53826-493"),
	   ("593.838.098-23", 'PE', 'Recife', 'Ibura', 'Rua da paz', 95, 'casa 097', "52836-283"), 
       ("098.637.847-46", 'PE', 'Recife', 'Cordeiro', 'Rua das fadas', 928,'casa 22', "52748-372"), 
       ("837.466.292-04", 'PE', 'Recife', 'Nova descoberta', 'Rua amor e esperança', 826, 'casa 128', "52816-946"), 
       ("048.678.356-76", 'PE', 'Recife', 'Campina do Barreto', 'Rua chão de estrelas', 826, 'casa 40', "52848-363"), 
       ("375.889.739-40", 'PE', 'Recife', 'Cohab', 'Rua paraisópoles', 284, 'casa 54', "52748-372"), 
       ("235.748.546-48", 'PE', 'Recife', 'Córrego do Jenipapo', 'Rua dos côcos', 726, 'casa 1981', "52836-382"), 
       ("408.654.976-30", 'PE', 'Recife', 'Coqueiral', 'Rua Praia molhada', 726, 'bloco 4', "52748-362"), 
       ("509.893.985-30", 'PE', 'Recife', 'Curado', 'Rua dos Hospitais', 100, 'bloco 10', "52736-384");
       
Insert into LIVRARIA (cnpj, nome_livraria, telefone) 
values ("83.274.247/0001-28", 'Livraria Leitura', 30978264),  
       ('93.374.983/0001-45', 'Livraria Livros', 32857264),  
       ('28.847.271/0001-92', 'Livraria do saber', 32134566),  
       ('28.695.826/0001-18', 'Livraria asas do Céu', 39574625), 
       ('82.826.741/0001-91', 'Livraria asas da imaginação', 30978264), 
       ('93.714.937/0001-81', 'Livraria mar de ondas', 32145678), 
       ('91.827.635/0001-81', 'Livraria Ler é vida', 33223361), 
       ('71.726.726/0001-91', 'Livraria Viaje na imaginação', 32846294),
       ('83.847.733/0001-93', 'Livraria Leia mais', 38274827), 
       ('81.123.456/0001-78', 'Livraria Leia aqui', 32846284);
       
Insert into ENDERECO_LIVRARIA (LIVRARIA_cnpj, uf, cidade, bairro, rua, numero, comp, cep) 
values ("83.274.247/0001-28", 'PE', 'Recife', 'Casa Forte', 'Rua Alfredo Fernandes', 38, 'loja', "52048-284"),  
       ("93.374.983/0001-45", 'PE', 'Recife', 'Jaqueira', 'Rua Bela Vista', 287, 'loja', "52348-473"), 
       ("28.847.271/0001-92", 'PE', 'Recife', 'Boa viagem', 'Rua águas azuis', 284, 'primeiro andar', "52087-362"), 
       ("28.695.826/0001-18", 'PE', 'Recife', 'Boa Vista', 'Rua Belo Horizonte', 72, 'loja', "54728-326"),
       ("82.826.741/0001-91", 'PE', 'Recife', 'Pina', 'Rua Osvaldo Silveira', 827, 'próximo à avenida beira mar', "53727-362"), 
       ("93.714.937/0001-81", 'PE', 'Olinda', 'prainha', 'Rua Umberto da Silva', 273, 'loja no primeiro andar', "52734-857"),
       ("91.827.635/0001-81", 'PE', 'Jaboatão dos Guararapes', 'Conchinhas', 'Rua belas artes', 12, 'loja', "52746-382"),
       ("71.726.726/0001-91", 'PE', 'Camaragibe', 'Por do sol', 'Rua Largo verde', '27', 'bloco C', "52738-463"), 
       ("83.847.733/0001-93", 'PE', 'Recife', 'Dois irmãos', 'Rua zona sul', 62, 'bloco b', "52738-463"), 
       ("81.123.456/0001-78", 'PE', 'Recife', 'Derby', 'Rua dos galhos', 72, 'próximo a praça do derby', "52736-372");
       
insert into GERENCIA (FUNCIONARIOS_cpf, funcaoGrat)
values ("567.987.568-98", 1500.00),
       ("706.456.927-78", 1400.00),
       ("408.654.976-30", 1300.00),
       ("375.889.739-40", 1200.00);
       
set sql_safe_updates = 0;
       
update GERENCIA set funcaoGrat = "2000.00"
	where funcaoGrat = 1500.00;
    
update GERENCIA set funcaoGrat = 2000.00
	where funcaoGrat = 1400.00;
    
    
update GERENCIA set funcaoGrat = 2000.00
	where funcaoGrat = 1300.00;
    
    
update GERENCIA set funcaoGrat = 2000.00
	where funcaoGrat = 1200.00;
    
       

insert into DEPARTAMENTO (id, nome, telefone, email ,local, horario, GERENCIA_FUNCIONARIOS_cpf) 
values (1, 'Gráfica', 38494736, "departgrafica@gmail.com" ,'Sala 1', '08:00 às 17:00', "567.987.568-98"),
       (2, 'RH', 32456789, "departrh@gmail.com" ,'Sala 2', '08:00 às 17:00', "706.456.927-78"),
       (3, 'Marketing', 34576478 , "departmarketing@gmail.com", 'Sala 3', '08:00 às 17:00', "408.654.976-30"),
       (4, 'Gerência', 36846594 , "departgerencia@gmail.com" ,'Sala 4', '08:00 às 17:00', "375.889.739-40");
	
update DEPARTAMENTO set horario = '09:00 às 17:00' 
	where horario = '08:00 às 17:00';
       
insert into AUTORES (cpf, nome, rg, email, sexo, telefone, DEPARTAMENTO_id)
values ("654.325.741-82", 'maria dias', "28.404.431-3","marta@gamil.com", 'F', 983753218, 4),
       ("714.614.365-53", 'carlos jose', "12.165.102-2","josecar@gmail.com", 'M', 993246473, 4),
       ("774.943.842-21", 'duce maria', "11.125.123-0","duce@gmail.com", 'F', 984217438, 4),
       ("791.365.006-01", 'manuel monteiro', "20.708.532-8" ,"manuel.m@gmail.com", 'M', 982314317, 4),
       ("101.842.154-43", 'felipe lucas', "42.263.764-6","flucas@gmail.com", 'M', 983147542, 4),
       ("934.234.943-30", 'leticia almeida', "11.860.189-1","let.almeida@gmail.com", 'F', 994352467, 4),
       ("736.165.742-21", 'sandro silva', "33.008.307-7","sandro.s@gmail.com", 'M', 999437155, 4),
	   ("700.115.364-74", 'andre souza', "26.296.088-6","andre@gmail.com", 'M', 998947204, 4),
	   ("737.942.364-00", 'tais Albuquerque', "36.338.577-0","tais2020@gmail.com", 'F', 983424251, 4),
       ("112.422.341-90", 'leonardo santos', "22.221.040-0","leonardo@gmail.com", 'M', 988427412, 4);
       
       


insert into ENDERECO_AUTORES (AUTORES_cpf, uf, cidade, bairro, rua, numero, comp, cep)
values ("654.325.741-82", "PE", "Recife", "Prado", "rua vai e volta", "65", "casa 30", "52334-772"),
       ("714.614.365-53", "PE", "Recife", "casa forte", "rua agua branca", "12", "casa 11", "52783-322"),
       ("774.943.842-21", "PE", "Recife", "centro", "rua vasco", 33, "apartamento", "53488-874"),
       ("791.365.006-01", "PE", "Recife", "campo grande", "rua sol da luz", "56", "casa 9", "53653-252"),
       ("101.842.154-43", "PE", "Olinda", "santa maria", "rua vida nova", "61", "segunda andar", "58394-786"),
       ("934.234.943-30", "PE", "Olinda", "vila velho", "rua santo jose", 463, "casa 40", "52246-663"),
	   ("736.165.742-21", "PE", "Recife", "boa viagem", "rua passaros", 43, "ap 002", "54786-935"),
       ("700.115.364-74", "PE", "Recife", "boa viagem", "rua souza jose", 335, "ap 542", "52399-738"),
       ("737.942.364-00", "PE", "Recife", "casa amarela", "rua mauricio mendes", 65, "casa A", "52630-946"),
       ("112.422.341-90", "PE", "Olinda", "ouro preto", "rua semaforos", 50, "casa C", "54389-648");
       
update ENDERECO_AUTORES set cidade = "Jaboatão dos guararapes"
     where AUTORES_cpf = "654.325.741-82";
     
update ENDERECO_AUTORES set cidade = "Camaragibe"
     where AUTORES_cpf = "700.115.364-74";
     
update ENDERECO_AUTORES set cidade = "São lourenço"
     where AUTORES_cpf = "791.365.006-01";
     
update ENDERECO_AUTORES set bairro = "aldeia de baixo"
     where AUTORES_cpf = "700.115.364-74";

update ENDERECO_AUTORES set bairro = "areias"
     where AUTORES_cpf = "654.325.741-82";
     
update ENDERECO_AUTORES set bairro = "Bela vista"
     where AUTORES_cpf = "791.365.006-01";

insert into EDITORA (cnpj_editora, nome, telefone, DEPARTAMENTO_id) 
values ("72.847.117/0001-93", 'Editora Escrita', 30285837, 1),
       ("83.372.725/0001-91", 'Editora Faz Livros', 30285638, 2),
       ("61.826.836/0001-10", 'Editora Criar Mais', 32716497, 3), 
       ("82.636.826/0001-83", 'Editora Editar', 30209372, 4);
       
       
insert into CARGO (cbo, nome)
values (375890, "designer gráfico"),
       (823440, "marketer"),
       (589649, "gestor de recursos humanos"),
       (755748, "gerente");
       
/*drop table cargo;*/ 
       
       
insert into EXEMPLARES (ID_exemplares, nome, tipo, codigo_barra, descricao, ano_de_publicacao,`compra/aluguel` ,quantidade, EDITORA_cnpj_editora)
values (78, 'Harry Potter', 'livro', "9.83627.48263", 'Um livro de magia, conta a história de um super bruxo que salvou todos de um terrível fim', 2002, 'compra', 200, "72.847.117/0001-93"),
       (98, 'Programando de uma forma simples', 'livro', "9.83628.37251", 'Esse livro vai te ensinar a programar de uma forma super simples e divertida, venha já programar conosco', 1970, 'compra' ,150, "83.372.725/0001-91"),
       (20, 'Caras: Notícias de setembro', 'Revista', "9.86732.81724", 'Fique por dentro das notícias mais quentes do mês de setembro, uma revista cheia de fofocas quentes que você vai amar !', 2016, 'compra', 40, "61.826.836/0001-10"),
       (50, 'Apostila Exatas: Aprenda matemática de uma vez por todas !', 'apostila', "9.73273.16372", 'Mais de 100 questões para você aprender exatas para o ENEM !', 2005, 'compra' ,55, "82.636.826/0001-83"),
       (48, 'A pequena sereia', 'livro', "9.84654.74697", 'Esse licro conta a história de uma sereia, com seus amigos e passa por várias aventuras', 2021, 'aluguel', 250, "61.826.836/0001-10"),
       (09, 'Romeu e julieta', 'livro', "9.12348.74648", 'livro para você chorar e ficar marcado na memória', 1940, 'aluguel',20, "83.372.725/0001-91"),
       (89, 'A ilha do tesouro', 'livro', "9.64254.34368", 'Embarque nessa ilha para desvendar todos os seus misterios e pegar o tesouro', 2019, 'compra' , 30, "72.847.117/0001-93"),
       (49, 'A casa assombrada', 'livro', "9.94357.74382", 'livro de terror absoluto, para você não dormir', 2019, 'aluguel' ,50, "82.636.826/0001-83"),
       (55, '50 tons de cinza', 'livro', "9.94834.74650", 'Esse conteúdo bastante proíbido para apurar seus desejos', 2022, 'aluguel', 10, "72.847.117/0001-93"),
       (33, 'Jornal do dia', 'jornal', "9.47563.64179", 'Saber as notícias do dia para andar informado', 2022, 'compra' ,200, "61.826.836/0001-10");
       
       
insert into AUTORES_HAS_EXEMPLARES (AUTORES_cpf, EXEMPLARES_Id_exemplares) 
values ("654.325.741-82", 78), 
       ("714.614.365-53", 98), 
       ("774.943.842-21", 20),
       ("791.365.006-01", 50),
	   ("934.234.943-30", 09),
       ("736.165.742-21", 89),
       ("700.115.364-74", 49), 
       ("737.942.364-00", 55),
       ("112.422.341-90", 33);
       
insert into AREA_CONHECIMENTO (codigo, nome_area)
values (035, 'teen'), 
       (040, 'tecnologia'), 
       (045, 'entretenimento'), 
       (050, 'conhecimento'),
       (055, 'infantil'),
       (060, 'romance'),
       (065, 'aventura'),
       (070, 'terror'), 
       (075, 'conteúdo aduto'),
       (080, 'noticias');
       
insert into EXEMPLARES_has_AREA_CONHECIMENTO (EXEMPLARES_Id_exemplares, AREA_CONHECIMENTO_codigo) 
values (78, 035), 
       (98, 040),
       (20, 045),
       (50, 050),
       (48, 055), 
       (09, 060), 
       (89, 065), 
       (49, 070),
       (55, 075),
       (33, 080);


       
	
insert into VENDA (Id_venda, data, cumpom_fiscal, desconto, valor_total, FUNCIONARIOS_cpf, LIVRARIA_cnpj)
values (56, '2021-02-14', "551000008", 0.00, 50.00, "567.987.568-98", "83.274.247/0001-28"),
       (3, '2022-09-10', "551000002", 0.00, 59.00, "706.456.927-78", '93.374.983/0001-45'),
       (17, '2022-03-28', "551000034", 0.00, 60.00, "593.838.098-23", '28.847.271/0001-92'),
       (50, '2021-06-24', "551000009", 5.00, 120.00, "098.637.847-46",'28.695.826/0001-18'),
       (22, '2021-05-17', "551000004", 0.00, 100.00, "837.466.292-04", '82.826.741/0001-91'),
	   (76, '2021-10-25', "551000020", 6.00, 205.00, "048.678.356-76", '93.714.937/0001-81'),
       (69, '2022-02-19', "551000090", 0.00, 80.00, "375.889.739-40", '91.827.635/0001-81'),
	   (10, '2022-07-27', "551000022", 0.00, 55.00, "235.748.546-48", '71.726.726/0001-91'),
       (6, '2020-04-12', "551000074", 0.00, 69.00, "408.654.976-30", '83.847.733/0001-93'),
       (73, '2020-09-14', "551000065", 0.00, 88.00, "509.893.985-30", '81.123.456/0001-78');
       
update VENDA set desconto = 5.00
    where Id_venda = 56;
    
update VENDA set desconto = 20.00
    where Id_venda = 50;
    
update VENDA set desconto = 5.00
    where Id_venda = 73;
    
update VENDA set valor_total = 180.00
    where Id_venda = 76;
    
update VENDA set desconto = 10.00
    where Id_venda = 76;
       
insert into ITENS_VENDA (VENDA_ID_venda, EXEMPLARES_ID_exemplares, quantidade)
values (56, 78, 20),
       (3, 98, 10),
       (17, 20, 40),
       (50, 50, 87),
       (22, 48, 50),
       (76, 09, 200),
	   (69, 89, 30),
       (10, 49,40),
       (6, 55,10),
       (73, 33, 29);
       
update ITENS_VENDA set quantidade = 50
    where VENDA_ID_venda = 69;
    
update ITENS_VENDA set quantidade = 100
    where VENDA_ID_venda = 10;
       
update ITENS_VENDA set quantidade = 20
    where VENDA_ID_venda = 6;
    
update ITENS_VENDA set quantidade = 80
    where VENDA_ID_venda = 17;
       
insert into TRABALHAM (DEPARTAMENTO_id, CARGO_cbo, FUNCIONARIOS_cpf)
values (1, 375890, "567.987.568-98"),
       (2, 589649, "706.456.927-78"),
       (3, 823440, "408.654.976-30"), 
       (4, 755748, "375.889.739-40"),
       (2, 589649, "593.838.098-23"),
       (4, 755748, "098.637.847-46"),
       (1, 375890, "837.466.292-04"),
       (3, 823440, "235.748.546-48"),
       (1, 375890, "509.893.985-30"),
       (2, 589649, "048.678.356-76");
       
       