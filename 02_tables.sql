-- Active: 1781128453355@@127.0.0.1@3307@techfactory_db
use techfactory_db;


create table categorias(
    id_categoria int primary key auto_increment,
    nome_categoria varchar(50) not null
);

create table fornecedores(
    id_fornecedor int primary key auto_increment,
    razao_social varchar(50) unique not null,
    cnpj_fornecedor varchar(14) unique not null,
    telefone_fornecedor varchar(15) unique not null,
    cidade_fornecedor varchar(50) not null
);

create table departamentos(
    id_departamento int primary key auto_increment,
    nome_departamento varchar(50) not null,
    localizacao_departamento varchar(50) unique not null
);

create table colaboradores( -- voltar depois e ver foreign keys
    id_colaborador int primary key auto_increment,
    nome_colaborador varchar(100) not null,
    cpf_colaborador varchar(11) unique not null,
    email_colaborador varchar(50) unique not null,
    cargo_colaborador varchar(50) not null,
    salario_colaborador decimal (10, 2) not null,
    data_admissao date not null,
    id_departamento int,
    Foreign Key (id_departamento) REFERENCES departamentos(id_departamento)
);

create table equipamentos( 
    id_equipamento int primary key auto_increment,
    nome_equipamento varchar(40) not null,
    patrimonio_equipamento varchar(50) unique not null,
    descricao_equipamento text not null,
    fabricante_equipamento varchar(50) not null,
    modelo_equipamento varchar(50) not null,
    data_aquisicao date not null,
    status_equipamento varchar(20) not null,
    id_categoria int,
    id_fornecedor int,
    id_colaborador int,
    foreign key (id_categoria) references categorias(id_categoria),
    foreign key (id_fornecedor) references fornecedores(id_fornecedor),
    foreign key (id_colaborador) references colaboradores(id_colaborador)
);

create table suporte_tecnico(
    id_suporte int primary key auto_increment,
    numero_chamado char(10) unique not null,
    data_abertura date not null,
    descricao_suporte text not null,
    prioridade_suporte varchar(40) not null,
    status_suporte varchar(40) not null,
    data_encerramento date not null,
    id_colaborador int,
    id_equipamento int,
    Foreign Key (id_colaborador) REFERENCES colaboradores(id_colaborador),
    Foreign Key (id_equipamento) REFERENCES equipamentos(id_equipamento)
);

create table manutencoes(
    id_manutencao int primary key auto_increment,
    data_manutencao date not null,
    descricao_manutencao text not null,
    tempo_manutencao time not null,
    custo_manutencao decimal (10, 2),
    id_suporte int,
    Foreign Key (id_suporte) REFERENCES suporte_tecnico(id_suporte)
);







