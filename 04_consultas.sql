-- 1
select nome_departamento, id_departamento from departamentos;

-- 2
select nome_colaborador, cargo_colaborador, email_colaborador from colaboradores;

-- 3
select patrimonio_equipamento, descricao_equipamento, fabricante_equipamento from equipamentos;

-- 4
select descricao_equipamento, status_equipamento from equipamentos;

-- 5
select nome_colaborador, data_admissao from colaboradores
where data_admissao > '2024-06-01';

-- 6
select nome_equipamento from equipamentos
where data_aquisicao > '2025-05-01';

-- 7
select razao_social from fornecedores
where cidade_fornecedor = 'Pomerode';

-- 8
select nome_equipamento from equipamentos as E
join categorias as C on C.id_categoria = E.id_categoria
where C.nome_categoria = 'Mobilidade';

-- 9
select nome_colaborador from colaboradores
where cargo_colaborador = 'operador';

--10
select razao_social, telefone_fornecedor from fornecedores
where telefone_fornecedor is not null;

-- 11
select nome_equipamento, descricao_equipamento from equipamentos
where descricao_equipamento like '%recentemente%';

-- 12
select status_suporte, id_suporte from suporte_tecnico
where status_suporte like '%Fechado%';

-- 13
select id_suporte, numero_chamado from suporte_tecnico
where prioridade_suporte like '%alta%';

-- 14
select nome_equipamento, descricao_equipamento from equipamentos
order by nome_equipamento, descricao_equipamento asc;

--15
select nome_equipamento, data_aquisicao from equipamentos
order by data_aquisicao desc;

-- 16 
select nome_colaborador from colaboradores 
where id_colaborador is not null;

-- 17
select count(nome_equipamento) from equipamentos 
where id_colaborador is not null;

-- 18
select data_admissao from colaboradores
where data_admissao = (select min(data_admissao) from colaboradores);

-- 19
select count(E.nome_equipamento), C.nome_categoria from equipamentos as E
join categorias as C on C.id_categoria = E.id_categoria
group by nome_categoria;

-- 20
select count(E.nome_equipamento), F.razao_social from equipamentos as E
join fornecedores as F on F.id_fornecedor = E.id_fornecedor
group by razao_social;

-- 21
select C.nome_colaborador, D.nome_departamento from colaboradores as C
join departamentos as D on D.id_departamento = C.id_departamento;

-- 22
select E.descricao_equipamento, C.nome_categoria from equipamentos as E
join categorias as C on C.id_categoria = E.id_categoria;

-- 23
select E.descricao_equipamento, F.razao_social, E.status_equipamento from equipamentos as E
join fornecedores as F on E.id_fornecedor = F.id_fornecedor;

-- 24
select nome_equipamento, data_aquisicao from equipamentos 
where data_aquisicao = (select max(data_aquisicao) from equipamentos);

-- 25
select nome_colaborador, data_admissao from colaboradores
where data_admissao > (select avg(data_admissao) from colaboradores);




