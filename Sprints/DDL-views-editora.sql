-- view 01 --           
create view Trabfuncionario as 
	select f.nome "Funcionario", f.data_adm "Data admissão", d.nome "Departamento", 
    d.local "Local Departamento", c.nome "ocupação", f.salario "Salário"
	from trabalham t
			join funcionarios f on  f.cpf = t.funcionarios_cpf
			join departamento d on t.Departamento_id = d.id
			join cargo c on t.cargo_cbo = c.cbo;

-- view 02 --
create view EnderecoAut as 
	select a.nome "Autores", ed.cidade "cidade"
		from autores a
		inner join endereco_autores ed on ed.autores_cpf = a.cpf
		order by a.nome;
                
-- view 03 --
create view ExemplarVend as
	select ex.nome "Nome exemplar", ex.codigo_barra "Codigo de Barra", ex.tipo "Tipo do exemplar", 
    v.valor_total "Valor da venda", v.cumpom_fiscal "Cupom fiscal"
		from itens_venda iv
			inner join exemplares ex on ex.id_exemplares = iv.exemplares_id_exemplares
			inner join venda v on v.id_venda = iv.venda_id_venda;
            
-- view 04 -- 
create view EnderecoLivraria as 
	select l.nome_livraria "Livrarias", l.telefone "Telefone", ed.uf "Estado", ed.cidade "Cidade"
		from livraria l
		inner join endereco_livraria ed on ed.livraria_cnpj = l.cnpj
		order by l.nome_livraria;
        
-- view 05 -- 
create view EditoraDep as 
	select d.nome "Editora", dp.local "Local Departamento", dp.nome "Nome Departamento"
		from editora d
		inner join departamento dp on dp.id = d.departamento_id  
		order by d.nome;

-- view 06 --
create view editoraArea as
    select ex.nome "Exemplares", ex.descricao "Descriação", ar.nome_area "Area"
		from exemplares_has_area_conhecimento ea
		inner join exemplares ex on ex.id_exemplares = ea.exemplares_id_exemplares  
        inner join area_conhecimento ar on ar.codigo = ea.area_conhecimento_codigo  
		order by ar.nome_area;
        
-- view 07 -- 
create view ContatosFuncionario as 
	select f.nome "nome", f.cpf "CPF", f.email "E-mail", g.funcaograt "Gerentes"
		from gerencia g
        inner join funcionarios f on f.cpf = g.funcionarios_cpf
        order by f.cpf;
        
-- view 08 --
create view ContatoAutores as 
select a.nome "Autores", a.cpf "CPF", a.telefone "Telefone", d.nome "Departamento", ea.rua "Rua",
   ea.numero "Nº", ea.comp "Complemento", ea.bairro "Bairro", ea.cidade "Cidade", ea.UF "Estado",
   ea.cep "CEP", ex.nome "nome do livro"
   from autores a
   inner join departamento d on d.id = a.departamento_id
   inner join endereco_autores ea on ea.autores_cpf = a.cpf
   inner join autores_has_exemplares ahe on ahe.autores_cpf = a.cpf
   inner join exemplares ex on ex.Id_exemplares = ahe.exemplares_Id_exemplares;
   
-- view 09 --
create view livros as 
	select ex.codigo_barra "codigo de barra", ex.nome "Nome do livro", ex.ano_de_publicacao "ano de publicação", 
    a.nome "Autores"
		from autores_has_exemplares ae
        inner join exemplares ex on ex.id_exemplares = ae.exemplares_id_exemplares
		inner join autores a on a.cpf = ae.autores_cpf
        order by ex.ano_de_publicacao;

-- view 10 --
create view EstoqueQuantidade as 
	select ed.nome "Editora", ex.tipo "Tipo", ex.quantidade "quantidade"
		from exemplares ex
        inner join editora ed on ed.cnpj_editora = ex.editora_cnpj_editora
        order by ex.quantidade;
        