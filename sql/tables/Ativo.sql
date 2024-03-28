create table Ativo (
    id int primary key not null auto_increment,
    nome varchar(100),
    custo_aquisicao int,
    tipo varchar,
    tag varchar,
    grau_importancia int,
    status varchar(50),
    id_responsavel int,
    id_nota_fiscal int,
    descricao varchar(500),
    numero_identificacao varchar(50),
    ultima_atualizacao date,
    foreign key id_responsavel references Usuario(id)
)