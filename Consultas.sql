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
FROM FORNECEDOR AS F, ALIMENTO_TEM_FORNECEDOR AS A
WHERE A.cnpj_forn = F.cnpj
GROUP BY A.cnpj_forn
HAVING COUNT(A.cnpj_forn) > 1;

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

SELECT Q.num_quarto 
FROM QUARTO AS Q, CAMAREIRA_LIMPA_QUARTO AS CLQ 
WHERE Q.id = CLQ.id_quarto
GROUP BY CLQ.id_quarto
HAVING COUNT(CLQ.id_quarto) > 1; 

/* 8. Selecionar o id dos manobristas que possuem uma CNH de nivel B e que manobraram mais do que dois carros */

SELECT C.id_manobrista 
FROM CNH AS C, MANOBRA_CARRO AS MC
WHERE C.nivel_cnh = 'B'
AND C.id_manobrista = MC.id_manobrista
GROUP BY MC.id_manobrista
HAVING COUNT(MC.id_manobrista) > 2;

/* 9. Selecionar o nome e o cpf dos hóspedes que fizeram mais do que uma hospedagem com um valor maior do que o valor de 200.00 */

SELECT H.nome, H.cpf 
FROM HOSPEDE AS H, HOSPEDAGEM AS HOSP
WHERE H.cpf = HOSP.cpf_h
AND HOSP.valor > 200.00
GROUP BY HOSP.cpf_h
HAVING COUNT(HOSP.cpf_h) > 1;

/* 10. Selecionar o preço do quartos que possuem um nivel_cat de 3 */

SELECT QPC.preco FROM QUARTO_POSSUI_CATEGORIA AS QPC
WHERE EXISTS (SELECT * FROM CATEGORIA AS C
              WHERE C.nivel_cat = 3
	      AND C.tipo = QPC.tipo_cat);
	      
/* 11. Selecionar o id da hospededagem que foi atendida pela atendente de nome Luana */

SELECT HOSP.id_hosp 
FROM HOSPEDAGEM AS HOSP
WHERE HOSP.id_atendente IN 
	(SELECT A.id_atendente FROM ATENDENTE AS A, FUNCIONARIO AS F
	 WHERE F.id_func = A.id_atendente
		AND F.nome LIKE 'LUANA%');
		
/* 12. Selecionar os hóspedes que possuam um carro que a sua placa comece pela letra K e que foi manobrado
pelo manobrista de id 4 */

SELECT * FROM HOSPEDE AS H
WHERE H.cpf IN 
(SELECT C.cpf_hosp FROM CARRO AS C, MANOBRA_CARRO AS MC
WHERE MC.placa_carro = C.placa 
	AND C.placa LIKE 'K%'
	AND MC.id_manobrista = 4);
	
/* 13. Selecionar o maior valor de id de todos os auxiliares de cozinha */

SELECT AC.id_aux_cozinha 
FROM AUXILIAR_DE_COZINHA AS AC
WHERE AC.id_aux_cozinha = 
(SELECT MAX(AC2.id_aux_cozinha)
FROM AUXILIAR_DE_COZINHA AS AC2, FUNCIONARIO AS F
WHERE AC2.id_aux_cozinha = F.id_func);
    
