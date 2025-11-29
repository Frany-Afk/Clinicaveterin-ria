------Insert---
INSERT INTO cliente(nome,telefone)
VALUES
('ANA DE LIMA', '1199999-99'),
('jose teste', '1198888-77'),
('MARIA DO CARMO', '11955555-44');


INSERT INTO pet(nome,especie,idade,id_cliente)
VALUES
('Rex','Cachorro',5,3),
('Cleyton','Gato',4,1),
('Thor','Cachorro',6,2);



Insert INTO veterinario(nome, crmv)
VALUES
('DRA. Marisa TEST', 'SP1234'),
('DR.Bruno Carvalho', 'SP1020'),
('DR.Test', 'GO1234');


Insert INTO consulta(data, tipo_servico, id_pet, id_veterinario)
VALUES
('2025-05-30','vacina',1, 1),
('2025-06-02','castracao',2, 2),
('2025-11-05','retorno',1, 1);


INSERT INTO medicamento(nome,quantidade, validade_medicamento, id_consulta)
VALUES
('Vermit', 2, '2030-11-30',1),
('vermit 02', 3, '2030-12-30',2),
('vermit 03', 1, '2031-01-30',3);




INSERT INTO medicamento_consulta(id_consulta, id_medicamento, dose_aplicada)
VALUES
(1, 1, '1 doses unica'),
(1, 2, 'Aplicar 2 gotas no ouvido'),
(3, 2, '1 comprimido');



-------Update-----

UPDATE medicamento
set nome = 'dipirona'
where id_medicamento = 2;


select 
    co.id_consulta,
    co.data,
    v.nome AS veterinario,
    v.crmv
From consulta co
JOIN veterinario v ON v.id_veterinario = co.id_veterinario;