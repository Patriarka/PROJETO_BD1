INSERT INTO FORNECEDOR(cnpj, nome_empresa, razao_social, cidade) VALUES 
('77444740000141', 'LIZA', 'Liza Alimentos Ltda', 'São Paulo'), 
('07977050000172', 'Heinz', 'Heinz Alimentos Ltda', 'São Paulo'), 
('49109714000121', 'Coamo', 'COAMO AGROINDUSTRIAL COOPERATIVA', 'Campo Mourão'), 
('01224216000101', 'Bauducco', 'BAUDUCCO & CIA LTDA', 'Belo Horizonte'), 
('76741963000108', 'Difripar', 'Difripar Alimentos LTDA', 'Londrina'), 
('19050077000102', 'Zaeli', 'Zago e Cia LTDA', 'Maringá'), 
('83880324000199', 'Multifrios', 'Multifrios Alimentos LTDA', 'Cianorte'), 
('41097062000140', 'Soya', 'Soya - Distribuidora de Produtos Alimenticios LTDA', 'Curitiba'), 
('95774597000138', 'daFruta', 'Dafruta Industria de Polpas LTDA', 'Belo Horizonte'), 
('65001430000173', 'Dolly', 'DOLLY LOOS COMERCIO E REPRESENTACOES LTDA', 'Belo Horizonte'), 
('12680065000104', 'Elma Chips', 'PEPSICO DO BRASIL LTDA', 'Curitiba');

INSERT INTO CONTATO(telefone, cnpj_empresa, nome, email) VALUES 
('9535014159', '77444740000141', 'Luís Diogo da Silva', 'luisdiogodasilva-92@gimail.com'), 
('3129309642', '07977050000172', 'Oliver Diogo da Silva', 'oliverdiogodasilva..oliverdiogodasilva@cathedranet.com.br'), 
('7936538597', '49109714000121', 'Lorenzo Luís da Mota', 'lorenzoluisdamota_@origamieventos.com.br'), 
('6336618292', '01224216000101', 'Beatriz Larissa Emanuelly de Paula', 'beatrizlarissaemanuellydepaula_@puenteimoveis.com.br'), 
('6136006096', '76741963000108', 'Gabriela Manuela Mariah da Rosa', 'gabrielamanuelamariahdarosa_@itelefonica.com.br'), 
('6227316430', '19050077000102', 'Adriana Isabelle Natália', 'hadassasophiadaluz-99@quimicaindaiatuba.com.br'), 
('6926197958', '83880324000199', 'Enzo Victor Benjamin Dias', 'enzovictorbenjamindias__enzovictorbenjamindias@ozzape.com'), 
('9638045056', '41097062000140', 'Priscila Marli Ana Jesus', 'priscilamarlianajesus-99@imeio.com'), 
('8528698439', '95774597000138', 'Isabella Lívia Silveira', 'isabellaliviasilveira_@likaleal.com.br'), 
('9228068444', '12680065000104', 'Bryan Ricardo Julio Nogueira', 'bryanricardojulionogueira_@saae.sp.gov.br');

INSERT INTO HOSPEDE(cpf, nome, rg) VALUES 
('39737253060', 'Rita Fátima Mendes', '28.440.944-3'),
('57628986285', 'Louise Manuela Agatha Viana', '32.256.025-1'), 
('86279139352', 'Sandra Márcia Rita Araújo', '11.293.967-3'), 
('93137333580', 'Thales Paulo Edson Carvalho', '35.985.773-5'), 
('53356494708', 'Iago Arthur Marcos Vinicius Vieira', '50.480.310-4'), 
('73513220073', 'Emily Bianca Marina Lopes', '50.266.419-8'), 
('34190994014', 'Rita Raimunda Cristiane Pinto', '45.610.375-2'), 
('21007273038', 'Heitor Enzo Márcio da Luz', '28.812.587-3'), 
('82250927162', 'Juliana Adriana de Paula', '13.142.157-8'), 
('92272268692', 'Gustavo Bruno Calebe Barbosa', '42.945.688-8');

INSERT INTO CARRO(placa, modelo, cor, cpf_hosp) VALUES
('NES6152', 'volkswagen gol', 'preto', '39737253060'), 
('MVW2634', 'Volkswagen Golf', 'prata', '57628986285'), 
('NAO1820', 'chevrolet celta', 'vermelho', '86279139352'), 
('KCP0848', 'Chevrolet Vectra', 'preto', '93137333580'), 
('NAQ9993', 'Chevrolet Astra', 'azul', '53356494708'), 
('NES8210', 'Ford EcoSport', 'vermelho', '73513220073'), 
('HXY8977', 'Volkswagen Saveiro', 'amarelo', '34190994014'), 
('KCI6881', 'Ford Fiesta', 'azul', '21007273038'), 
('MWP0291', 'Fiat Palio', 'amarelo', '82250927162'), 
('KCO7641', 'Toyota Corolla', 'vermelho', '92272268692');

INSERT INTO PRODUTOS(descricao, categoria, preco) VALUES 
('refrigerante coca-cola', 'bebidas', 5.99), 
('refrigerante guaraná', 'bebidas', 4.99), 
('barra de chocolate nestlé', 'guloseimas', 5.99),
('chocolate tortuguita 18g', 'guloseimas', 1.49), 
('água mineral crystal 500ml', 'bebidas', 3.99), 
('água de coco sococo 1L', 'bebidas', 11.99), 
('barra de proteína biO2 45g', 'guloseimas', 8.99), 
('suco prat`s laranja 1L', 'bebidas', 9.99), 
('amendoim japonês 1kg', 'guloseimas', 11.99), 
('salgadinho cheetos quiejo 50g', 'guloseimas', 3.99);

INSERT INTO HOSPEDE_CONSOME_PRODUTOS(descricao, cpf_hospede) VALUES 
('refrigerante coca-cola', '39737253060' ),
('refrigerante guaraná', '57628986285' ),
('barra de chocolate nestlé', '86279139352' ),
('chocolate tortuguita 18g', '93137333580' ),
('água mineral crystal 500ml', '53356494708' ),
('água de coco sococo 1L', '73513220073' ),
('barra de proteína biO2 45g', '34190994014' ),
('suco prat`s laranja 1L', '21007273038' ),
('amendoim japonês 1kg', '82250927162' ),
('salgadinho cheetos quiejo 50g', '92272268692' );

INSERT INTO FUNCIONARIO(nome, cpf, rg, num_carteira_trabalho, salario) VALUES 
('Ryan Diogo Vieira', '71510963308', '14.248.051-4', '59398503729', 1430.00), 
('Carolina Julia Teixeira', '45572622524', '32.795.617-3', '53057058190', 1430.00), 
('Yuri Antonio Enrico Viana', '08358544421', '34.406.662-9', '02446691654', 1430.00), 
('Tomás Miguel Brito', '63313722377', '19.790.259-5', '11648417498', 1430.00), 
('Raul Gabriel Galvão', '77779008894', '37.726.171-3', '47989220768', 1399.00), 
('Victor Hugo Silveira', '44170904834', '34.930.142-6', '57798754870', 1499.00), 
('Cristiane Jennifer Rafaela da Rosa', '34378284103', '43.819.791-4', '81180868205', 1399.00), 
('Kauê Gabriel Martins', '95415071318', '31.060.996-3', '44373464314', 1599.00), 
('Lívia Elza Araújo', '86819555946', '34.949.430-7', '84438258917', 1699.00), 
('Flávia Isadora Costa', '97904294443', '25.900.892-8', '93466800800', 1430.00),
('Elisa Regina Bernardes', '50654801762', '15.183.280-8', '37144748320', 1250.00), 
('Márcia Evelyn Nogueira', '68875765979', '12.658.763-2', '67036714454', 1299.99), 
('Vitória Helena Mirella Oliveira', '35620866793', '27.056.210-2', '05659274672', 1299.00), 
('Anthony Anderson Assis', '60359257585', '36.066.749-1', '09483520105', 1399.99), 
('Camila Bianca Teixeira', '47597530790', '49.400.497-6', '83913746412', 1319.00), 
('Betina Hadassa Alves', '89395168340', '11.151.660-2', '66318117706', 1399.99), 
('Laura Carla da Costa', '54149803900', '35.487.532-2', '98094250716', 1399.99), 
('Joana Vanessa Monteiro', '92050401426', '39.688.482-9', '44373464314', 1299.00), 
('Cristiane Heloisa Assis', '53570971945', '39.514.452-8', '72641663460', 1199.00), 
('Vera Eduarda Farias', '40651933897', '37.595.175-1', '02996298289', 2450.00),
('Maya Malu Ribeiro', '77169829584', '24.735.965-8', '62809768909', 8999.00),
('Luiz Iago Araújo', '58898449976', '47.659.559-9', '86755623646', 1500.00), 
('Breno Tomás Fernando Vieira', '17927216090', '22.263.811-4', '42567702737', 1250.00), 
('Geraldo Iago Ian Oliveira', '35939424538', '18.508.083-2', '44977494499', 1250.00), 
('Márcio Eduardo da Luz', '92538777070', '13.446.369-9', '05838364706', 1299.00), 
('Antonella Cláudia Agatha Melo', '65592086644', '29.396.952-8', '27836269090', 1399.00), 
('Larissa Laís Emily Nascimento', '62016837551', '49.029.700-6', '69478226907', 1219.00), 
('Martin Geraldo Bento da Silva', '51083608517', '21.346.001-4', '66014600792', 1299.00), 
('Jorge Erick Marcelo Araújo', '67391151173', '38.418.843-6', '74669338250', 1499.00), 
('Rafael Kauê Cavalcanti', '56841755383', '24.301.511-2', '44639499424', 1599.00), 
('Thiago Carlos Eduardo Tomás Mendes', '07797804184', '296211564', '55472768279', 1199.00),
('Luana Sabrina Mendes', '82660975426', '34.830.265-4', '94798714148', 1199.00), 
('Maitê Tereza Beatriz Alves', '71620412306', '46.248.622-9', '23869441662', 1129.00), 
('Mateus Diego da Mata', '97716777807', '46.533.004-6', '21467777740', 1099.99), 
('Simone Josefa Fogaça', '47628942571', '48.333.560-5', '59475713060', 1026.00),
('Saoirse Ronan', '00467852995', '10.092.760-9', '45626953464', 1026.00),
('Leonardo Di Caprio', '48486497817', '49.475.506-4', '09958767142', 1099.00),
('Tom Hanks', '60202244571', '17.473.981-3', '77468982815', 1129.00),
('Ryan Gosling', '59356706158', '47.705.275-7', '59403756294', 1119.00),
('Lucas Firmo Portman', '44954603668', '45.775.816-8', '02795701973', 1199.00),
('Neymar Junior dos Santos', '23678787657', '10.802.258-4', '58501303237', 1199.00),
('Claire Foy', '68383932049', '36.265.502-9', '76878954660', 1299.00);

INSERT INTO MANOBRISTA(id_manobrista) VALUES 
(1), 
(2), 
(3), 
(4), 
(5), 
(6), 
(7), 
(8), 
(9), 
(10);

INSERT INTO MANOBRA_CARRO(placa_carro, id_manobrista) VALUES 
('NES6152', 1),
('MVW2634', 2),
('NAO1820', 3),
('KCP0848', 4),
('NAQ9993', 5),
('NES8210', 6),
('HXY8977', 7),
('KCI6881', 8),
('MWP0291', 9),
('KCO7641', 10);

INSERT INTO CNH(cnh, nivel_cnh, tempo_cnh, id_manobrista) VALUES
('84140557207','B', 02/01/2010, 1), 
('39111325350','B', 03/12/2011, 2), 
('04307698900','D', 09/10/2009, 3), 
('34588447813','B', 11/08/2002, 4), 
('67152519991','C', 09/11/2000, 5), 
('63263979867','B', 22/07/1997, 6), 
('42864724639','C', 24/11/2012, 7), 
('92526923800','B', 19/06/2010, 8), 
('92501963216','C', 29/02/2008, 9), 
('12784952105','C', 12/01/2006, 10);

INSERT INTO COZINHEIRO(id_cozinheiro, area_atuacao) VALUES 
(11, 'segurança alimentar'), 
(12, 'Gestor de estabelecimentos culinários'), 
(13, 'segurança alimentar'), 
(14, 'auxiliar'), 
(15, 'auxiliar'), 
(16, 'auxiliar'), 
(17, 'auxiliar'), 
(18, 'auxiliar'), 
(19, 'auxiliar'), 
(32, 'auxiliar'), 
(33, 'auxiliar'), 
(34, 'auxiliar'), 
(35, 'auxiliar'), 
(20, 'Chef de cozinha');

INSERT INTO CHEFE_DE_COZINHA(id_chefe_cozinha) VALUES 
(20);

INSERT INTO AUXILIAR_DE_COZINHA(id_aux_cozinha, id_chefe) VALUES 
(14,20), 
(15,20), 
(16,20), 
(17,20), 
(18,20), 
(19,20), 
(32,20), 
(33,20), 
(34,20), 
(35,20);

INSERT INTO GERENTE(id_gerente, formacao, cursos, comissao) VALUES
(21, 'turismo e meio ambiente', 'espanhol, inglês, administração, auxiliar financeiro', 200.00);

INSERT INTO ATENDENTE(id_atendente) VALUES
(22), 
(23), 
(24), 
(25), 
(26), 
(27), 
(28), 
(29), 
(30), 
(31), 
(32);

INSERT INTO CAMAREIRA(id_camareira) VALUES  
(33),  
(34), 
(35),  
(36), 
(37), 
(38), 
(39),  
(40),
(41), 
(42);

INSERT INTO CARDAPIO(dia, id_chefe_cozinha) VALUES
( '2020/11/01', 20 ), 
( '2020/11/02', 20 ), 
( '2020/11/03', 20 ), 
( '2020/11/04', 20 ), 
( '2020/11/05', 20 ), 
( '2020/11/06', 20 ), 
( '2020/11/07', 20 ), 
( '2020/11/08', 20 ), 
( '2020/11/09', 20 ), 
( '2020/11/10', 20 ), 
( '2020/11/11', 20 );

INSERT INTO ALIMENTO(nome, cat, qtde, id_comprador) VALUES 
('refrigerante', 'bebidas', 24, 21), 
('leite', 'laticínios', 4, 21),
('Macarrão', 'massas', 12, 21), 
('Arroz', 'cereais', 22, 21), 
('Linguiça','carnes', 4, 21), 
('Carne de Frango', 'carnes', 12, 21), 
('Laranja', 'frutas', 8, 21), 
('Pão francês', 'massas', 12, 21), 
('Mussarela', 'laticínios', 8, 21), 
('Manteiga', 'laticínios', 2, 21), 
('Alface', 'verduras', 5, 21), 
('Pudim', 'sobremesa', 3, 21);

INSERT INTO ALIMENTO_TEM_CARDAPIO(dia_cardap, nome_alim) VALUES 
( '2020/11/01', 'refrigerante' ), 
( '2020/11/02', 'refrigerante' ), 
( '2020/11/02', 'Arroz' ), 
( '2020/11/02', 'Linguiça' ), 
( '2020/11/02', 'Macarrão' ), 
( '2020/11/03', 'Alface' ), 
( '2020/11/03', 'Carne de Frango' ), 
( '2020/11/03', 'Arroz' ), 
( '2020/11/04', 'Arroz' ), 
( '2020/11/04', 'refrigerante' ), 
( '2020/11/04', 'Macarrão' );

INSERT INTO ALIMENTO_TEM_FORNECEDOR(cnpj_forn , nome_alim , data_fornec) VALUES 
('65001430000173', 'refrigerante', '2020/11/01'),
('07977050000172', 'leite', '2020/04/09'),
('77444740000141', 'Macarrão', '2020/11/06'),
('49109714000121', 'Arroz', '2020/08/19'),
('76741963000108', 'Linguiça', '2020/09/16'),
('76741963000108', 'Carne de Frango', '2020/08/02'),
('95774597000138', 'Laranja',' 2020/08/01'),
('41097062000140', 'Pão francês', '2020/09/08'),
('76741963000108', 'Mussarela', '2020/10/22'),
('49109714000121', 'Manteiga', '2020/11/02'),
('41097062000140', 'Alface', '2020/09/19'),
('95774597000138', 'Pudim', '2020/10/07');

INSERT INTO QUARTO(id, andar, num_quarto, status, preco, capacidade) VALUES
(1, 1, 1, 0, 49.99, 1), 
(2, 1, 2, 0, 99.99, 1), 
(3, 1, 3, 0, 199.99, 1), 
(4, 1, 4, 0, 229.99, 1), 
(5, 1, 5, 0, 109.99, 2),
(6, 1, 6, 0, 179.99, 2), 
(7, 2, 7, 0, 279.99, 2), 
(8, 2, 8, 0, 299.99, 2), 
(9, 2, 9, 0, 429.99, 4), 
(10, 2, 10, 0, 499.99, 4);

INSERT INTO CATEGORIA(tipo, descricao, nivel_cat) VALUES 
('standard solteiro', 'quarto simples para solteiro com serviços básicos', 1), 
('standard casal', 'quarto simples para casal com serviços básicos', 1),
('master solteiro', 'quarto para solteiro e com serviços intermediários', 2),
('master casal', 'quarto para casal e com serviços intermediários', 2), 
('luxo solteiro', 'quarto luxuoso para solteiro e com serviços de alta qualidade', 3), 
('luxo duplo solteiro', 'quarto luxuoso para dois solteiros e com serviços de alta qualidade', 3), 
('luxo casal', 'quarto luxuoso para casal e com serviços de alta qualidade', 3), 
('Master Luxo casal', 'quarto grande e luxuoso para casal, com serviços da melhor qualidade', 4), 
('Master Luxo duplo casal', 'quarto grande e luxuoso para casal no mesmo quarto, com serviços da melhor qualidade', 4), 
('Master Luxo duplo quarto', 'ambiente com dois quartos luxuosos com camas de casal e com serviços da melhor qualidade', 4);

INSERT INTO HOSPEDAGEM(data, status, valor, id_atendente) VALUES 
('2020/11/06', 0, 99.99, 22), 
('2020/11/06', 0, 49.99, 23), 
('2020/11/06', 0, 49.99, 24), 
('2020/11/07', 0, 279.99, 25), 
('2020/11/09', 0, 199.99, 26), 
('2020/11/07', 1, 149.97, 27), 
('2020/11/09', 0, 499.99, 27), 
('2020/11/07', 0, 279.99, 28), 
('2020/11/08', 1, 109.99, 28), 
('2020/11/09', 1, 199.99, 30), 
('2020/11/09', 0, 49.99, 31), 
('2020/11/09', 1, 99.99, 32);

INSERT INTO QUARTO_POSSUI_CATEGORIA(tipo_cat, id_quarto, id_hospedagem) VALUES
('standard solteiro', 1, 1),
('standard casal', 2, 2),
('master solteiro', 3, 3),
('master casal', 4, 4),
('luxo solteiro', 5, 5),
('luxo duplo solteiro', 6, 6),
('luxo casal', 7, 7),
('Master Luxo casal', 8, 8),
('Master Luxo duplo casal', 9, 9),
('Master Luxo duplo quarto', 10, 10);

INSERT INTO CAMAREIRA_LIMPA_QUARTO(id_camar, id_quarto, tipo_cat) VALUES 
(33, 1, 'standard solteiro'),
(34, 2, 'standard casal'),
(35, 3, 'master solteiro'),
(36, 4, 'master casal'),
(37, 5, 'luxo solteiro'),
(38, 6, 'luxo duplo solteiro'),
(39, 7, 'luxo casal'),
(40, 8, 'Master Luxo casal'),
(41, 9, 'Master Luxo duplo casal'),
(42, 10, 'Master Luxo duplo quarto');
