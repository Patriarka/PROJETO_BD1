/* 1 Selecionar os nomes dos contatos que o nome comece com a letra 'O' e que seu
fornecedor seja da cidade de 'São Paulo' */

SELECT C.nome 
FROM CONTATO AS C
WHERE C.nome LIKE 'O%' 
AND C.cnpj_empresa IN 
    (SELECT F.cnpj 
      FROM FORNECEDOR AS F
      WHERE F.cidade = 'São Paulo');

/* 2 Selecionar o nome dos fornecedores que fizeram o fornecimento de mais que um alimento */

SELECT F.nome_empresa
FROM FORNECEDOR AS F
WHERE EXISTS 
	(SELECT * FROM ALIMENTO_TEM_FORNECEDOR AS A
	WHERE A.cnpj_forn = F.cnpj
	GROUP BY A.cnpj_forn
	HAVING COUNT(A.cnpj_forn) > 1);

/* 3 Selecionar os manobristas que possuem um nivel de CNH diferente de B */

SELECT * FROM MANOBRISTA AS M
WHERE EXISTS 
(SELECT * FROM CNH AS C
WHERE C.nivel_cnh <> 'B'
	AND M.id_manobrista = C.id_manobrista);

/* 4 Selecionar o nome dos funcionarios que são cozinheiros e que possuem um salario maior do que 1300 */

SELECT F.nome 
FROM FUNCIONARIO AS F
WHERE F.salario > 1300 
  AND F.id_func IN 
    (SELECT C.id_Cozinheiro 
    FROM COZINHEIRO AS C);

/* 5. Selecionar os hóspedes que tem um cpf que termina com o digito 2 e que 
tenham comprado algum dos produtos disponíveis */

SELECT * FROM HOSPEDE H
WHERE H.cpf LIKE '%2'
AND EXISTS (SELECT * FROM HOSPEDE_CONSOME_PRODUTOS HCP
			WHERE HCP.cpf_hospede = H.cpf);

-- 6 Selecionar os hóspedes que possuem um carro da cor verde

-- 7 Selecionar os quartos que são limpos por mais do que uma camareira

-- 8 Selecionar apenas o carros do tipo 'gol' da cor 'prata'

-- 9 Selecionar as camareiras de nome 'Claire Foy' 

-- 10 Selecionar os alimentos e o seu respectivo fornecedor dos alimentos que fornecidos antes do dia '08/11/2020'
