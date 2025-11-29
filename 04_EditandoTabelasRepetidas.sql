select * from pet;

select DISTINCT nome
from pet;

delete from pet 
where id_pet = 2;

SELECT MIN(id_pet)
FROM Pet
GROUP BY nome, especie, idade, id_cliente;

DELETE FROM Pet
WHERE id_pet NOT IN (
    SELECT MIN(id_pet)
    FROM Pet
    GROUP BY nome, 
    especie, 
    idade, 
    id_cliente);
    
select * from pet;

PRAGMA foreign_keys = OFF;

PRAGMA foreign_keys = ON;

Update cliente
Set nome = 'mauricio de lima'
Where id_cliente = 1;

select * from cliente;