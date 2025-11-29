--ordenar--

select * from pet
order BY nome;

select * from consulta
order BY data ASC;

select * from consulta;

--Quantas consultas cada veterinario fez-- 

select 
    v.nome AS veterinario,
    COUNT(c.id_consulta) AS total_consultas
FROM consulta c
JOIN veterinario v ON v.id_veterinario = c.id_veterinario
order BY v.nome;

select 
    v.nome AS veterinario,
    COUNT(c.id_consulta) AS total_consultas
FROM consulta c
JOIN veterinario v ON v.id_veterinario = c.id_veterinario
GROUP BY v.nome
HAVING COUNT(C.id_consulta) < 3
ORDER BY v.nome;