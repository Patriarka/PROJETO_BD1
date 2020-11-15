/* 1. Selecionar os nomes dos contatos que seu nome comece com a letra 'O' e que seu
fornecedor seja da cidade de 'São Paulo' */

SELECT C.nome 
FROM CONTATO AS C
WHERE C.nome LIKE 'O%' 
AND C.cnpj_empresa IN 
    (SELECT F.cnpj 
      FROM FORNECEDOR AS F
      WHERE F.cidade = 'São Paulo');

/* 2. Selecionar o nome dos fornecedores que fizeram o fornecimento de mais que um alimento */

SELECT F.nome_empresa
FROM FORNECEDOR AS F
WHERE EXISTS 
	(SELECT * FROM ALIMENTO_TEM_FORNECEDOR AS A
	WHERE A.cnpj_forn = F.cnpj
	GROUP BY A.cnpj_forn
	HAVING COUNT(A.cnpj_forn) > 1);

/* 3. Selecionar os manobristas que possuem um nivel de CNH diferente de B */

SELECT * FROM MANOBRISTA AS M
WHERE EXISTS 
(SELECT * FROM CNH AS C
WHERE C.nivel_cnh <> 'B'
	AND M.id_manobrista = C.id_manobrista);

/* 4. Selecionar o nome dos funcionarios que são cozinheiros e que possuem um salario maior do que 1300 */

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

/* 6 Selecionar o nome dos hóspedes que não possuem um carro da cor vermelho */

SELECT H.nome FROM HOSPEDE AS H
WHERE NOT EXISTS 
	(SELECT * FROM CARRO C
	 WHERE C.cor = 'vermelho'
		AND H.cpf = C.cpf_hosp);

/* 7 Selecionar o número dos quartos que são limpos por mais do que uma camareira */

SELECT Q.num_quarto FROM QUARTO Q
WHERE EXISTS
	(SELECT * FROM CAMAREIRA_LIMPA_QUARTO AS CLQ 
		WHERE Q.id = CLQ.id_quarto
		GROUP BY CLQ.id_quarto
		HAVING COUNT(CLQ.id_quarto) = 1);

/* 8. Selecionar o id dos manobristas que possuem uma CNH de nivel B e que manobram mais do que um carro */

SELECT M.id_manobrista
FROM MANOBRISTA AS M
WHERE M.id_manobrista IN 
	( SELECT C.id_manobrista FROM CNH AS C
	 WHERE C.nivel_cnh = 'B'
     AND M.id_manobrista = C.id_manobrista
     AND EXISTS ( SELECT * FROM MANOBRA_CARRO MC
				  WHERE M.id_manobrista = MC.id_manobrista
				  GROUP BY MC.id_manobrista
					HAVING COUNT(MC.id_manobrista) > 1) );

/* 9. Selecionar o nome e o cpf dos hóspedes que fizeram mais do que uma hospedagem com um valor maior do que o valor de 200.00 */

SELECT H.nome, H.cpf FROM HOSPEDE AS H
WHERE EXISTS (SELECT * FROM HOSPEDAGEM AS HOSP
			  WHERE HOSP.valor > 200.00
				AND H.cpf = HOSP.cpf_h
			  GROUP BY HOSP.cpf_h
              HAVING COUNT(HOSP.cpf_h) > 1); 

/* 10. Selecionar o preço do quartos que possuem um nivel_cat de 3 */

SELECT QPC.preco FROM QUARTO_POSSUI_CATEGORIA AS QPC
WHERE EXISTS (SELECT * FROM CATEGORIA AS C
              WHERE C.nivel_cat = 3
				AND C.tipo = QPC.tipo_cat);
