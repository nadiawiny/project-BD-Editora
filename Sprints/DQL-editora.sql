/* 1. Me mostre o nome dos funcionários que trabalham no departamento de marketing.*/

select 
   f.nome "Funcionarios", 
   c.nome "Cargo",
   d.nome "Departamento"
		from trabalham t
			inner join funcionarios f on f.cpf = t.FUNCIONARIOS_cpf
			inner join cargo c on c.cbo = t.CARGO_cbo
            inner join departamento d on d.id = t.DEPARTAMENTO_id
                where d.nome = 'marketing'
				order by f.nome;
                
/*2. liste quais livros foram vendidos no ano de 2020, mostrando o cupom fiscal e quais foram os funcionários que venderam esses livros*/

select 
   ex.nome "produto" ,
   v.data "data da venda",
   v.cumpom_fiscal,
   f.nome "funcionario que vendeu"
       from itens_venda i
       join exemplares ex on ex.Id_exemplares = i.EXEMPLARES_Id_exemplares
       join venda v on v.Id_venda = i.VENDA_Id_venda
       join funcionarios f on f.cpf = v.FUNCIONARIOS_cpf
           where v.data like "%2020%"
           order by ex.nome;
           
/*3. Me mostre quais funcionários tem o salário acima da média.*/

select 
   nome,
   salario
      from funcionarios 
         where salario > (select avg(salario) from funcionarios);


/*4. Mostre o nome da editora, a quantidade de  exemplar em seu estoque, sua área de conhecimento, tipo,
 descrição e  em que ano foi o lançamento desse produto.*/

   select
   e.nome,
   ex.quantidade,
   ex.tipo,
   ex.descricao,
   ex.ano_de_publicacao "ano de publicação",
   a.nome_area "area do conhecimento"
     from exemplares ex
     join editora e on e.cnpj_editora = ex.EDITORA_cnpj_editora
     join exemplares_has_area_conhecimento ehac on ehac.EXEMPLARES_Id_exemplares = ex.Id_exemplares
     join area_conhecimento a on a.codigo = ehac.AREA_CONHECIMENTO_codigo;
       


/*5. Mostre todas as vendas do ano de 2022, qual tipo de venda foi, de qual autor foi esse exemplar/produto
 e de quanto foi o desconto dessa venda.*/
 
 select 
    v.id_venda,
    v.data,
    e.tipo "tipo de venda",
    a.nome "autor",
    v.desconto
    from itens_venda iv
    join venda v on v.Id_venda = iv.VENDA_Id_venda
    join exemplares e on e.Id_exemplares = iv.EXEMPLARES_Id_exemplares
    join autores_has_exemplares ahe on ahe.EXEMPLARES_Id_exemplares = e.Id_exemplares
    join autores a on a.cpf = ahe.AUTORES_cpf
    where v.data like "%2022%";
 
 
 
/*6. Informe o nome, cpf, telefone, endereço, o departamento que os autores tem contato e qual livro cada uma fez*/

select 
   a.nome "autor",
   a.cpf,
   a.telefone,
   d.nome "departamento",
   ea.rua,
   ea.numero,
   ea.comp,
   ea.bairro,
   ea.cidade,
   ea.UF,
   ea.cep,
   ex.nome "nome do livro"
   from autores a
   join departamento d on d.id = a.DEPARTAMENTO_id
   join endereco_autores ea on ea.AUTORES_cpf = a.cpf
   join autores_has_exemplares ahe on ahe.AUTORES_cpf = a.cpf
   join exemplares ex on ex.Id_exemplares = ahe.EXEMPLARES_Id_exemplares;
   


/*7. mostre o cpf, departamento, nome dos funcionários que foram admitidos no ano de 2019, em que cargo ele trabalha e se são gerentes ou não.*/

select 
   d.GERENCIA_FUNCIONARIOS_cpf "cpf",
   d.nome "departamento",
   f.nome,
   f.data_adm,
   c.nome "cargo",
   g.funcaoGrat
   from trabalham t
   join funcionarios f on f.cpf = t.FUNCIONARIOS_cpf
   join cargo c on c.cbo = t.CARGO_cbo
   left join gerencia g on g.FUNCIONARIOS_cpf = f.cpf
   left join departamento d on d.GERENCIA_FUNCIONARIOS_cpf = g.FUNCIONARIOS_cpf
   where f.data_adm like "%2019%";
   
   
   
/*8. Mostre a soma de todas as vendas.*/

select 
   sum(valor_total) "soma de todas as vendas"
   from venda;


/*9. Diga qual livraria tem o exemplar 48 em seu estoque, mostre seu endereço, cnpj e telefone.*/

select 
   l.nome_livraria,
   el.rua,
   el.numero, 
   el.comp,
   el.bairro,
   el.cidade,
   el.uf,
   el.cep,
   l.cnpj,
   l.telefone,
   ex.id_exemplares,
   ex.nome "nome do livro"
   from livraria l
   join endereco_livraria el on el.LIVRARIA_cnpj = l.cnpj
   join venda v on v.LIVRARIA_cnpj = l.cnpj
   join itens_venda it on it.VENDA_id_venda = v.id_venda
   join exemplares ex on ex.id_exemplares = it.EXEMPLARES_id_exemplares
   where id_exemplares = 48;


/*10. Mostre quais funcionários trabalham no departamento 2, seu cbo, telefone e email*/

select
   f.nome,
   f.telefone,
   f.email,
   c.cbo,
   d.id "id_departamento",
   d.nome "nome_departamento"
   from trabalham t
      join funcionarios f on f.cpf = t.FUNCIONARIOS_cpf
      join cargo c on c.cbo = t.CARGO_cbo
      join departamento d on d.id = t.DEPARTAMENTO_id
      where d.id = 2;
      
/*11. Informe o nome, cpf, telefone, e-mail e sexo de todos os funcionários que moram na Madalena, Coqueiral e Cohab*/

select 
  f.nome,
  f.cpf,
  f.telefone,
  f.email,
  f.sexo,
  e.bairro
  from funcionarios f
  join endereco_funcionario e on e.FUNCIONARIOS_cpf = f.cpf
  where e.bairro in('madalena','coqueiral','cohab');


/*12. Mostre quantos funcionários recebem abaixo ou igual a média.*/

select 
   nome,
   salario
      from funcionarios 
         where salario <= (select avg(salario) from funcionarios);

/*13. Informe o cpf, e-mail, data de admissão dos funcionários e o endereço concatenado numa única coluna.*/

select
  f.nome "nome do funcionario",
  f.cpf,
  f.email,
  f.data_adm,
  concat(rua, ' Nº ',numero,' ',comp, '.',' Bairro - ',bairro,' / ', cidade, '-',UF) "endereço"
  from funcionarios f
  join endereco_funcionario e on e.FUNCIONARIOS_cpf = f.cpf;

/*14. Liste abaixo quantos funcionários trabalham em cada departamento.*/

select
   count(f.nome) "quantidade de funcionarios",
   d.nome "departamento"
   from trabalham t
   join departamento d on d.id = t.DEPARTAMENTO_id
   join funcionarios f on f.cpf = t.FUNCIONARIOS_cpf
   group by d.nome;


/*15. Informe o cpf, nome, sexo dos autores, adjunto com os seus respectivos endereços.*/

select
   a.nome,
   a.cpf,
   a.sexo,
   concat(rua, ' Nº ',numero,' ',comp, '.',' Bairro - ',bairro,' / ', cidade, '-',UF) "endereço"
   from autores a
   join endereco_autores e on e.AUTORES_cpf = a.cpf;


/*16. Informe a quantidade disponível de exemplares em cada área do conhecimento.*/

select
   e.Id_exemplares,
   e.nome "exemplares",
   e.quantidade,
   a.nome_area "area do conhecimento"
   from exemplares_has_area_conhecimento ehac
   join exemplares e on e.Id_exemplares = ehac.EXEMPLARES_Id_exemplares
   join area_conhecimento a on a.codigo = ehac.AREA_CONHECIMENTO_codigo;
   


/*17. Informe quantos funcionários trabalham em cada cargo específico.*/

select
   count(f.nome) "quantidade de funcionarios",
   c.nome "cargo"
   from trabalham t
   join cargo c on c.cbo = t.CARGO_cbo
   join funcionarios f on f.cpf = t.FUNCIONARIOS_cpf
   group by c.nome;


/*18. Mostre o nome, cnpj e telefone da editora, adjunto com a quantidade de livros produzidas pela mesma.*/

select
   e.nome,
   e.cnpj_editora "cnpj",
   e.telefone,
   ex.nome "tipo de exemplar/produto",
   ex.quantidade
   from editora e
   join exemplares ex on ex.EDITORA_cnpj_editora = e.cnpj_editora;
   
   

/*19. Mostre a quantidade de vendas realizadas por cada livraria.*/

select
   l.nome_livraria "nome",
   id_venda,
   iv.quantidade "quantidade de venda"
   from venda v
   join livraria l on l.cnpj = v.LIVRARIA_cnpj
   join itens_venda iv on iv.VENDA_id_venda = v.id_venda;


/*20. Informe nome, cpf, salario, cargo e o depatamento dos funcionarios*/
      
select f.nome "funcionario", f.cpf,  f.salario, c.nome "cargo",
	d.nome "departamento"
		from trabalham t
			inner join funcionarios f on f.cpf = t.FUNCIONARIOS_cpf
			inner join cargo c on c.cbo = t.CARGO_cbo
            inner join departamento d on d.id = t.DEPARTAMENTO_id
            inner join gerencia g on g.FUNCIONARIOS_cpf = d.GERENCIA_FUNCIONARIOS_cpf
					order by f.nome;

   
   



   
