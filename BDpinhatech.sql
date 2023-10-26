USE BDpinhatech;

CREATE TABLE TBfuncionario
	(
	id_funcionario INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	empregador VARCHAR(250),
	cnpj VARCHAR(250),
	login VARCHAR(250),
	senha VARCHAR(250),
	nome VARCHAR(250),
	idade VARCHAR(250),
	dataNasc VARCHAR(250),
	estadoCivil VARCHAR(250),
	nacionalidade VARCHAR(250),
	sexo VARCHAR(250),
	email VARCHAR(250),
	celular VARCHAR(250),
	endereco VARCHAR(250),
	numero VARCHAR(250),
	complemento VARCHAR(250),
	cep VARCHAR(250),
	bairro VARCHAR(250),
	cidadeEstado VARCHAR(250),

	banco VARCHAR(250),
	agencia VARCHAR(250),
	conta VARCHAR(250),

	tipoDeContrato VARCHAR(250),
	departamento VARCHAR(250),
	cargo VARCHAR(250),
	salario VARCHAR(250),
	dataAdmissao VARCHAR(250),

	valeTransporte VARCHAR(250),
	convenioMed VARCHAR(250),
	convenioOdo VARCHAR(250),
	);

SELECT * FROM TBfuncionario;

INSERT INTO TBfuncionario (
empregador,
cnpj,
login,
senha,
nome,
idade,
dataNasc,
estadoCivil,
nacionalidade,
sexo,
email,
celular,
endereco,
numero,
complemento,
cep,
bairro,
cidadeEstado,

banco,
agencia,
conta,

tipoDeContrato,
departamento,
cargo,
salario,
dataAdmissao,

valeTransporte,
convenioMed,
convenioOdo)

VALUES ('Pinhatech', '01304380001-85', 'C0302', '12345', 'Carlos Roger Fonseca', '23', '25/08/1998',
'Solteiro', 'Brasileiro', 'Masculino', 'carlinhos@gmail.com', '(11)97788-9900', 'Avenida Cruzeiro do Sul', '1000',
'Apt. 19', '04278-000', 'Santana', 'São Paulo, SP',
'Itaú', '0001', '014896',
'Tempo Indeterminado', 'Logistica', 'Supervisor', 'R$ 5.300,00', '14/03/2020',
'R$ 350,00', 'Porto Seguro Ouro', 'Porto Seguro Prata');

INSERT INTO TBfuncionario (
empregador,
cnpj,
login,
senha,
nome,
idade,
dataNasc,
estadoCivil,
nacionalidade,
sexo,
email,
celular,
endereco,
numero,
complemento,
cep,
bairro,
cidadeEstado,

banco,
agencia,
conta,

tipoDeContrato,
departamento,
cargo,
salario,
dataAdmissao,

valeTransporte,
convenioMed,
convenioOdo)

VALUES ('Pinhatech', '01304380001-85', 'P0302', '1234567', 'Pérola Cunha Ribeiro', '30', '25/08/1993',
'Casada', 'Brasileira', 'Feminino', 'perola@gmail.com', '(11)96655-3300', 'Avenida Liberdade', '718',
'Apt. 25', '03388-000', 'Vergueiro', 'São Paulo, SP',
'Itaú', '0001', '098653',
'Tempo Indeterminado', 'Desenvolvimento', 'Product Manager', 'R$ 12.400,00', '02/09/2016',
'R$ 350,00', 'Porto Seguro Ouro', 'Porto Seguro Prata');