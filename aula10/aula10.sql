-- Comentario
/*comentario*/

-- listar os bancos de dados
\l

-- cria um banco de dados
CREATE DATABASE aula10_pxi;

-- apaga um banco de dados
DROP DATABASE aula10_pxi;

-- conecta a um banco de dados
\c aula10_pxi;

-- Uma empresa requer armazenar os dados de seus clientes, 
-- esses clientes são proprietarios de bens, cujo o armazenamento das informações tbm sao requeridos. 
-- Dados dos proprietario: nome, email, sexo e endereço. 
-- Dados dos bens: nome, tipo(movel ou imovel) e valor. 
-- Cada proprietario pode nao ter bens ou ter N bens, ja um bem, obrigatoriamente dese ser de um, e somente um proprietario.

-- proprietario			-- Bens
	-- nome					-- nome
	-- email				-- tipo
	-- sexo					-- valor
	-- endereço
	
CREATE TABLE proprietario(
	codigo INT PRIMARY KEY,
	nome VARCHAR(30), 
	email VARCHAR(30),
	sexo CHAR(1),
	endereco VARCHAR(100)
);
