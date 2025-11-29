<h1>Sistema de Gestão Veterinária – Banco de Dados</h1>

Este projeto apresenta o banco de dados desenvolvido para uma clínica veterinária fictícia, com foco no controle de clientes, pets, consultas, veterinários e medicamentos utilizados durante os atendimentos. O objetivo é garantir organização, rastreabilidade das informações e evitar redundâncias, aplicando boas práticas de modelagem e normalização.

Estrutura Geral do Banco

O banco de dados foi modelado seguindo princípios de até 3FN, garantindo que cada tabela represente uma entidade real da clínica e que todas as relações estejam devidamente organizadas.

As principais entidades são:

- Cliente

Armazena os dados dos tutores dos pets, como nome, CPF, telefone e endereço.

- Pet

Registra informações dos animais atendidos, vinculados ao cliente responsável. Contém espécie, idade, sexo e demais dados básicos.

- Veterinário

Tabela com dados dos profissionais da clínica, incluindo CRMV e especialidade.

- Consulta

Registra cada atendimento realizado, relacionando o pet ao veterinário e aos detalhes da consulta (motivo, data, etc.).

- Medicamento

Armazena medicamentos disponíveis na clínica, incluindo validade e quantidade.

- Medicamento_Consulta

Tabela associativa utilizada para controlar quais medicamentos foram aplicados em cada consulta, qual veterinário aplicou e a dose utilizada.

Relacionamentos Principais

- Cliente 1:N Pet -> Um cliente pode ter vários pets.

- Pet 1:N Consulta -> Um pet pode passar por várias consultas.

- Veterinário 1:N Consulta -> Um veterinário pode realizar muitas consultas.

- Consulta 1:N Medicamento_Consulta -> Uma consulta pode ter vários medicamentos administrados.

- Medicamento 1:N Medicamento_Consulta -> Um medicamento pode ser utilizado em várias consultas.

- A tabela Medicamento_Consulta funciona como um relacionamento N:N entre Consulta e Medicamento, adicionando ainda o veterinário responsável e a dose aplicada.

Tecnologias Utilizadas

SQL padrão (MySQL / MariaDB)

Modelagem DER

Práticas de normalização até a 3FN

Objetivo da Estrutura

O objetivo deste banco de dados é permitir que a clínica veterinária:

- Registre clientes e pets de forma organizada

- Controle consultas e profissionais de maneira eficiente

- Monitore medicamentos aplicados e suas doses

- Evite duplicidade e inconsistências através de uma modelagem normalizada.
