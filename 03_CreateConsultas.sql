----Consulta + Pet + Veterinario + cliente -----

select
    c.id_consulta,
    c.data AS data_consulta,
    p.nome AS nome_animal,
    p.especie,
    p.idade,
    cli.nome AS nome_cliente,
    cli.telefone AS telefone_cliente,
    v.nome AS nome_veterinario
FROM consulta c         --Tabela principal--
JOIN pet p
    ON p.id_pet = c.id_pet        -- Join: consulta + pet --
JOIN cliente cli
    ON cli.id_cliente = p.id_cliente     --Join pet + Cliente --
JOIN veterinario v
    ON v.id_veterinario = c.id_veterinario;
    
--filtrar especie -- 
select
    p.nome AS nome_animal,
    p.especie,
    c.data AS data_consulta
FROM consulta c
JOIN pet p
    ON P.id_pet = c.id_pet
WHERE p.especie = 'Cachorro';

select * FROM pet; 

select
UPPER(nome) AS nome_animal,
LOWER(especie) AS especie_animal
FROM pet;
