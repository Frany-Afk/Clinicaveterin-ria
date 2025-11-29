BEGIN TRANSACTION;


create table cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT(15)
);

----------Tabela 2 pet--------
create table pet(
    id_pet INTEGER PRIMARY KEY AUTOINCREMENT, 
    nome TEXT(30),
    especie TEXT(30),
    idade INTEGER,
    id_cliente INTEGER,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-----------Tabela 3 veterinario--------

create table veterinario(
    id_veterinario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(100) NOT NULL,
    crmv TEXT(20) NOT NULL
);

------------Tabela 4 consulta----------

create table consulta(
    id_consulta INTEGER PRIMARY KEY AUTOINCREMENT,
    data TEXT NOT NULL,
    tipo_servico TEXT(100),
    id_pet INTEGER,
    id_veterinario INTEGER,
    FOREIGN KEY (id_pet) REFERENCES pet(id_pet)
    FOREIGN KEY (id_veterinario) REFERENCES veterinario(id_veterinario)

);

------------Tabela 5 medicamento-------------

create table medicamento(
    id_medicamento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    quantidade INTEGER,
    validade_medicamento TEXT,
    id_consulta INTEGER,
    FOREIGN KEY (id_consulta) REFERENCES consulta(id_consulta)
);

-------------Tabela 6 Medicamento_consulta-------------

create table medicamento_consulta(
    id_consulta INTEGER,
    id_medicamento INTEGER,
    dose_aplicada TEXT,
    FOREIGN KEY(id_consulta) REFERENCES consulta(id_consulta),
    FOREIGN KEY(id_medicamento) REFERENCES medicamento(id_medicamento)
);



