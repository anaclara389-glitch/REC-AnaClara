-- Active: 1781128453355@@127.0.0.1@3307@techfactory_db
use techfactory_db;
insert into categorias (nome_categoria) 
values
('Aparelhos eletrônicos'),
('Rede'),
('Impressão'),
('Mobilidade'),
('Servidor');

insert into fornecedores (razao_social, cnpj_fornecedor, telefone_fornecedor, cidade_fornecedor)
values
('elitc.tech', '78653456700981', '(47)40028922', 'Itajaí'),
('Orkestria.SA', '78653456700961', '(47)40028982', 'Jaraguá do Sul'),
('Iroh WS', '78653436700981', '(47)40028932', 'Jaraguá do Sul'),
('Sidel MWA', '78653956700981', '(47)40028912', 'Pomerode'),
('GEW equipamentos elétricos', '78653406700981', '(47)40028022', 'Pomerode');

insert into departamentos (nome_departamento, localizacao_departamento)
values
('Produção', 'Setor norte'),
('Engenharia', 'Setor sul'),
('Qualidade', 'Setor leste'),
('Logística', 'Setor oeste'),
('Tecnologia da informação', 'Setor noroeste');

insert into colaboradores (nome_colaborador, cpf_colaborador, email_colaborador, cargo_colaborador, data_admissao, salario_colaborador, id_departamento)
values
('Paulo', '67400327134', 'Paulo.emp@gmail.com', 'gerente', '2023-04-01', 4800, 1),
('Silas', '67400997134', 'Silas.emp@gmail.com', 'operador', '2024-05-11', 2700, 2),
('Manuela', '67467327134', 'Manuela.emp@gmail.com', 'operador', '2023-02-01', 2700, 1),
('Geraldo', '34400927134', 'Ger.emp@gmail.com', 'chefe', '2023-11-01', 3400, 5),
('Roberta', '34400320134', 'Roberta.emp@gmail.com', 'gerente', '2025-04-01', 4400, 3),
('Rafael', '34400327134', 'Rafa.emp@gmail.com', 'operador', '2025-06-01', 2400, 2),
('Ronaldo', '34400311134', 'Ronaldo.emp@gmail.com', 'operador', '2024-08-01', 2400, 4),
('Katarina', '22400327134', 'Kat.emp@gmail.com', 'chefe', '2023-06-01', 3400, 4),
('José', '67400327199', 'José.emp@gmail.com', 'operador', '2025-07-01', 2800, 5);

insert into equipamentos (nome_equipamento, patrimonio_equipamento, descricao_equipamento, fabricante_equipamento, modelo_equipamento, data_aquisicao, status_equipamento, id_categoria, id_fornecedor, id_colaborador)
values 
('computador', '3417839283', 'Computador comprado recentemente', 'Samsung', 'LUX 20', '2026-04-03', 'funcionando', 1, 1, 1),
('notebook', '3492335283', 'Notebook com teclas faltando', 'LG', 'GGL Prime', '2025-03-09', 'não está funcionando', 4, 2, 2),
('servidor', '3403835283', 'Servidor potente', 'Herfad', 'Suprime 020', '2025-04-02', 'funcionando', 5, 3, 3),
('computador', '3464835283', 'Computador de alta resolução', 'Apple', 'LMac 330', '2025-10-03', 'funcionando', 1, 4, 2),
('impressora', '3467055283', 'Impressora de ultima geração', 'LG', 'Supl 22', '2026-09-03', 'funcionando', 3, 5, 6),
('impressora', '3467635543', 'Impressora com defeito de coloração', 'Herfad', 'Supli 55', '2025-04-03', 'não está funcionando', 3, 3, 8),
('switche', '3467827283', 'switche comprado recentemente', 'Samsung', 'LUX 50', '2026-12-08', 'funcionando', 2, 2, 4),
('tablet industrial', '3468835283', 'tablet de 20 polegadas', 'Apple', 'Ipad 20', '2026-11-03', 'funcionando', 4, 4, 3);

insert into suporte_tecnico (numero_chamado, data_abertura, descricao_suporte, prioridade_suporte, status_suporte, data_encerramento, id_colaborador, id_equipamento)
values
('3758301779', '2025-06-08', 'Manutenção preventiva', 'média', 'operante', '2025-06-12', 1, 1),
('3758352779', '2025-07-10', 'conserto imediato', 'alta', 'inoperante', '2025-07-22', 2, 2),
('3758302279', '2025-08-08', 'Manutenção preditiva', 'alta', 'operante', '2025-08-11', 3, 3),
('3758344779', '2024-01-02', 'Verificação', 'média', 'operante', '2025-06-12', 5, 4),
('3758355779', '2025-02-01', 'Verificação', 'média', 'operante', '2025-06-12', 4, 5),
('3758307679', '2026-03-07', 'conserto imediato', 'alta', 'inoperante', '2025-06-12', 6, 6),
('3758376779', '2026-04-08', 'Verificação', 'média', 'operante', '2025-06-12', 8, 7),
('3758908779', '2025-05-08', 'Manutenção preventiva', 'baixa', 'operante', '2025-06-12', 7, 8);

insert into manutencoes (data_manutencao, descricao_manutencao, tempo_manutencao, custo_manutencao, id_suporte)
values
('2025-08-06', 'Verificação', '01:45:09', 5090, 1),
('2025-03-06', 'Verificação', '01:47:08', 4090, 2),
('2025-06-06', 'Manutenção', '02:35:50', 5090, 3),
('2026-08-06', 'Manutenção', '02:45:09', 5500, 4),
('2026-08-06', 'Verificação', '01:35:12', 5790, 5),
('2026-08-06', 'Conserto', '03:47:07', 3990, 6),
('2025-08-06', 'Manutenção', '02:20:09', 4895, 7),
('2025-08-06', 'Conserto', '03:30:05', 4080, 8);






