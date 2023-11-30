-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Out-2023 às 13:14
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bibliotecaeteavs`
--
CREATE DATABASE IF NOT EXISTS `bibliotecaeteavs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bibliotecaeteavs`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `cdd` int(1) NOT NULL,
  `qtd` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id`, `codigo`, `titulo`, `autor`, `cdd`, `qtd`) VALUES
(2, '9788594311023', 'Mendax - O Ladrão de Histórias', 'Breno Fernandes', 8, 156),
(3, '9788575553244', 'Literatura, pão e poesia', 'Sérgio Vaz', 8, 2),
(4, '9788577990474', 'As melhores crônicas', 'Fernando Sabino', 8, 1),
(5, '8529600452', 'Tubarão com a faca nas costas', 'Cezar Dias', 8, 3),
(6, '9788525435570', 'Histórias que os jornais não contam', 'Moacyr Scliar', 8, 1),
(7, '9788560171767', 'Detetive à deriva', 'Luís Henrique Pellanda', 8, 1),
(8, '9788500027048', 'Pequenas Epifanias', 'Caio Fernando Abreu', 8, 1),
(9, '9788576861669', 'Cala a boca e me beija', 'Alcione Araújo', 8, 1),
(10, '9788526008328', 'Coleção melhores crônicas', 'Manuel Bandeira', 8, 1),
(11, '9788504020588', 'Conversas sobre política', 'Rubem Alves', 8, 1),
(12, '8516047598', 'De Machado de Assis à Lourenço Diaféria', 'Douglas Tufano', 8, 1),
(13, '8508055552', 'Um país chamado infância', 'Moacyr Scliar', 8, 1),
(14, ' 9788584190690', 'As Artimanhas do Napoleão e outras batalhas cotidianas', 'Amanda Cestaro', 8, 1),
(15, '9788575951941', 'Balé do pato', 'Paulo Mendes Campos', 8, 1),
(16, '9788522007769', 'Os Filhos da Candinha', 'Mário de Andrade', 8, 1),
(17, '8528610322', 'As Eternas Coincidências', 'Paul Mendes Campos e José J. Veiga', 8, 2),
(18, '9788576861690', 'Recado de Primavera', 'Rubem Braga', 8, 1),
(19, '9788526023673', 'Dois pinheiros e o mar - e outras crônicas sobre meio ambiente', 'Rubem Braga', 8, 2),
(20, '9788532279965', 'Ninguém me entende nessa casa! - Crônicas e casos', 'Leo Cunha', 8, 5),
(21, '9788563277114', 'Crônicas - Para ler na escola', 'Ignácio de Loyola Brandão', 8, 2),
(22, '9788526022416', 'Escolha o seu sonho', 'Cecília Meireles', 8, 2),
(23, '9788578580889', '100 Crônicas Escolhidas', 'Mauro Mota', 8, 2),
(24, '9788526017085', 'Crônicas para jovens', 'Manuel Bandeira', 0, 2),
(25, '8504006190', 'A descoberta do amor em Prosa', 'Machado de Assis, Elias José, Mario Prata', 0, 1),
(26, '9788565230117', 'A Ostra e o Bode', 'Carlos Herculano Lopes', 8, 1),
(27, '8526009206', 'Coleção Melhores Crônicas', 'Ignácio de Loyola Brandão', 8, 1),
(28, '9788503008921', 'João do Rio', 'Luís Martins', 8, 1),
(29, '9788520008898', 'Um pé de milho', 'Rubem Braga', 8, 1),
(30, '9788576842934', 'O Pescador de Latinas', 'Carlos Herculano Lopes', 8, 1),
(31, '9788500026393', 'Ave, Palavra', 'João Guimarães Rosa', 8, 1),
(32, '9788537304129', 'Nordeste à flor da pele', 'José Nivaldo', 8, 1),
(33, '9788520005408', 'O gol é necessário', 'Paulo Mendes Campos', 8, 1),
(34, '8520911722', 'Crônicas de educação', 'Cecília Meireles', 8, 1),
(35, '8520909949', 'Crônicas de Viagem 2', 'Cecília Meireles', 8, 1),
(36, '8520910254', 'Crônicas de viagem 3', 'Cecília Meireles', 8, 1),
(37, '8575205129', 'A Escrava Isaura', 'Bernardo Guimarães', 8, 1),
(38, '8520912095', 'Grande Sertão: Veredas', 'Guimarães Rosa', 8, 1),
(39, '9786556122236', 'Ave, Palavra', 'Guimarães Rosa', 8, 1),
(40, '9788573841473', 'A hora e vez de Augusto Matraga', 'João Guimarães Rosa', 8, 1),
(41, '9788520924198', 'Sagarana', 'João Guimarães Rosa', 8, 1),
(42, '9788576861652', 'O Filho eterno', 'Cristovão Tezza', 8, 1),
(43, '9788565265034', 'O Dom do Crime', 'Marco Lucchesi', 8, 1),
(44, '9788520933619', 'Macunaíma, - O herói sem nenhum caráter', 'Mário de Andrade', 8, 3),
(45, '8526218476', 'As Vítimas-Algozes - Quadros da Escravidão', 'Joaquim Manuel de Macedo', 8, 27),
(46, '8598558095', 'Quincas Borba', 'Machado de Assis', 8, 2),
(47, '9788532523259', 'Ciranda de Pedra', 'Lygia Fagundes Telles', 8, 1),
(48, '8588193213', 'Os Limites dos Sentidos e os Sentidos dos Limites', 'Sérgio Sá', 8, 2),
(49, '9788525045096', 'O Bem-Amado', 'Dias Gomes', 8, 2),
(50, '8535906495', 'Agosto', 'Rubem Fonseca', 8, 1),
(51, '9788578530273', 'O Ateneu', 'Raul Pompeia', 8, 5),
(52, '9788504010060', 'Dom Casmurro', 'Machado de Assis', 8, 1),
(53, '9788573841619', 'Bar Don Juan', 'Antonio Callado', 8, 1),
(54, '9788563255051', 'Mãos de cavalo', 'Daniel Galera', 8, 1),
(55, '9788520923863', 'O Albatroz Azul', 'João Ubaldo Ribeiro', 8, 1),
(56, '8525002739', 'O Retrato 1 - O Tempo e o Vento', 'Erico Verissimo', 8, 1),
(57, '8525002747', 'O Retrato 2 - O Tempo e o Vento', 'Erico Verissimo', 8, 1),
(58, '850103004X', 'O Mulo', 'Darcy Ribeiro', 8, 1),
(59, '8501009407', 'Mar Morto', 'Jorge Amado', 8, 1),
(60, '9788535900132', 'Dois irmãos', 'Milton Haloum', 8, 1),
(61, '9788501066657', 'S. Bernardo', 'Graciliano Ramos', 8, 1),
(62, '9788503010504', 'Fogo Morto', 'José Lins do Rego', 8, 1),
(63, '028', 'Helena', 'Machado de Assis', 8, 1),
(64, '8508045182', 'A Mão e a Luva', 'Machado de Assis', 8, 1),
(65, '8516039730', 'O Ateneu', 'Raul Pompéia', 8, 2),
(66, '8574097004', 'Extremos do Arco-íris', 'Raimundo Carrero', 8, 2),
(67, '9788503008165', 'Dôra, Doralina', 'Rachel de Queiroz', 8, 1),
(68, '9788561041083', 'O fiel e a pedra', 'Osman Lins', 8, 1),
(69, '9788535909784', 'Jóias de Família', 'Zulmira Ribeiro Tavares', 8, 1),
(70, '8528610330', 'Homens e Caranguejos', 'Josué de Castro', 8, 2),
(71, '9788561041045', 'O Centauro no Jardim', 'Moacyr Scliar', 8, 1),
(72, '9788563277268', 'Infâmia', 'Ana Maria Machado', 8, 1),
(73, '8503008114', 'Memorial de Maria Moura', 'Rachel de Queiroz', 8, 1),
(74, '9788503010108', 'A estrela sobe', 'Marques Rebelo', 8, 1),
(75, '9788503008327', 'Chapadão do Bugre', 'Mário Palmério', 8, 1),
(76, '8571640394', 'Relato de um certo Oriente', 'Milton Hatoum', 8, 1),
(77, '8526223569', 'Quinca Borba - Brás Cubas', 'Machado de Assis', 8, 13),
(78, '035', 'O Mulato', 'Aluísio Azevedo', 8, 1),
(79, '8573026979', 'O vôo da guará vermelha', 'Maria Valéria Rezende', 8, 1),
(80, '8571643741', 'Nove, novena', 'Osman Lins', 8, 1),
(81, '9788576861645', 'O trono da rainha Jinga', 'Alberto Mussa', 8, 1),
(82, '9788565265010', 'Memórias - Minha guerra alheia', 'Marina Colasanti', 8, 1),
(83, '8535906827', 'A Rainha dos Cárceres da Grécia', 'Osman Lins', 8, 1),
(84, '9788564296053', 'Éramos seis', 'Maria José Dupré', 8, 1),
(85, '857409563X', 'A história de Bernarda Soledade - a tigre do sertão', 'Raimundo Carrero', 8, 2),
(86, '0233', 'Três Amores', 'Cronin', 8, 1),
(87, '0232', 'Algemas Partidas', 'Cronin', 8, 1),
(88, '0225', 'As Chaves do Reino', 'Cronin', 8, 1),
(89, '0231', 'Anos de Tormenta', 'Cronin', 8, 1),
(90, '9788565230100', 'O Quinze', 'Rachel de Queiroz', 8, 19),
(91, '9788546501007', 'O grande mentecapto', 'Fernando Sabino', 8, 10),
(92, '9788538006930', 'Lucíola', 'José de Alncar', 8, 1),
(93, '9788561578695', 'Petrolina', 'Carlos Eduardo de Magalhães', 8, 1),
(94, '9788508128662', 'Triste fim de Policarpo Quaresma', 'Lima Barreto', 8, 1),
(95, '9788535905977', 'Ana Terra', 'Erico Verissimo', 8, 1),
(96, '9788535905984', 'Um certo capitão Rodrigo', 'Erico Verissimo', 8, 1),
(97, '8522006466', 'Morangos mofados', 'Caio Fernando Abreu', 8, 1),
(98, '8508040797', 'O guarani', 'José de Alencar', 5, 1),
(99, '9788508063925', 'Canaã', 'Graça Aranha', 8, 2),
(101, '8525002755', 'O Arquipélago 1 ', 'Erico Verissimo', 8, 1),
(102, '8525002763', 'O Arquipélago 2', 'Erico Verissimo', 8, 2),
(103, '8525002704', 'O Arquipélago 3', 'Erico Verissimo', 8, 2),
(104, '8525002747', 'O Retrato 2', 'Erico Verissimo', 8, 1),
(105, '8525002739', 'O Retrato 1', 'Erico Verissimo', 8, 1),
(106, '8528610330', 'Homens e caranguejos ', 'Josué de Castro', 8, 2),
(107, '9878535909784', 'Jóias de família', 'Zulmira Ribeiro Tavares', 8, 1),
(108, '9878561041083', 'O fiel e a pedra ', 'Osman Lins', 8, 1),
(109, '9878525412782', 'Triste fim de Policarpo Quaresma ', 'Lima Barreto', 8, 4),
(110, '987852541286', 'A escrava Isaura', 'Bernardo Guimarães', 8, 1),
(111, '987852541270', 'Garibaldi e Manoela: Uma história de amor', 'Josué Guimarães', 8, 5),
(112, '', 'O sorriso do lagarto', 'João Ubaldo Ribeiro', 8, 1),
(113, '850191200x', 'O encontro marcado', 'Fernando Sabino', 8, 1),
(114, '850300805x', 'O quinze', 'Rachel de Queiroz', 8, 2),
(115, '8533903707', 'O Ateneu ', 'Raul Pompéia', 8, 1),
(116, '8587025015', 'Um casamento no arrabalde', 'Franklin Távora', 8, 2),
(117, '8536801824', 'Recordações do escrivão Isaías Caminha  ', 'Lima Barreto', 8, 1),
(118, '9788503007894', 'Vila dos confins', 'Mário Palmério', 8, 1),
(119, '9788525406873', 'Memórias póstumas de Brás Cubas', 'Machado de Assis', 8, 1),
(120, '9788525409454', 'O guarani', 'José de Alencar', 8, 2),
(121, '9788525406750', 'Senhora', 'José de Alencar', 8, 1),
(122, '9788563248176', 'O gosto do apfelstrudel', 'Gustavo Bernardo ', 8, 1),
(123, '9788589020213', 'Querida', 'Lygia Bonjuga', 8, 1),
(124, '8598559075', 'Iracema', 'José de Alencar', 8, 1),
(125, '', 'Memorias de um sargento de milícias ', 'Manuel Antônio de Almeida ', 8, 1),
(126, '9788575594858', 'Cabo de guerra', 'Ivone Benedetti', 8, 1),
(127, '9786500129632', 'Barulhos do silencio/ Doridas memórias de Luís jardim', 'José Hildeberto Martins', 8, 3),
(128, '8501052736', 'Iracema', 'José de Alencar', 8, 1),
(129, '9788576866916', 'O próximo da fila ', 'Henrique Rodrigues', 8, 1),
(130, '9788522007721', 'AMAR, verbo intransitivo: idílio', 'Mário de Andrade', 8, 2),
(131, '9788565230070', 'O nobre sequestrador', 'Antônio Torres', 8, 1),
(132, '8525042137', 'O amanuense Belmiro', 'cyro dos anjos', 8, 1),
(133, '8532508103', 'Perto do coração selvagem ', 'Clarice Lispector ', 8, 1),
(134, '9788561041601', 'Caminhos cruzados', 'Erico Verissimo', 8, 1),
(135, '9788561041649', 'Tenda dos milagre', 'Jorge Amado', 8, 1),
(136, '9788586166723', 'O baile da despedida', 'Josué Montello', 8, 1),
(137, '8532504248', 'Os rios turvos', 'Luzilá Gonçalves Ferreira', 8, 18),
(138, '8501049115', 'Tieta do agreste', 'Jorge Amado', 8, 1),
(139, '9788561618162', 'Ciranda de pedras ', 'Lygia Fagundes Telles', 8, 1),
(140, '9788576841463', 'O menino grapiúna', 'Jorge Amado', 8, 1),
(141, '9788586755514', 'No presente', 'Márcio El-jaick', 8, 1),
(142, '9788581660004', 'Os pastores da noite', 'Jorge Amado', 8, 1),
(143, '8501005304', 'Capitães de areia', 'Jorge Amado', 8, 1),
(144, '8520902871', 'Os tambores de São Luís ', 'Josué Montello', 8, 1),
(145, '8537300276', 'A lenda dos cem ', 'Gilvan Lemos', 8, 1),
(146, '', 'Mocidade no rio', 'Gilberto Amado', 8, 1),
(147, '8573028076', 'Quase memoria', 'Carlos Heitor Cony', 8, 1),
(148, '9788560281275', 'Sargento Getúlio', 'João Ubaldo Ribeiro', 8, 1),
(149, '9788500027147', 'Agosto', 'Rubem Fonseca', 8, 20),
(150, '9788526023369', 'Vermelho amargo', 'Bartolomeu Campos de Queiros', 8, 2),
(151, '', 'A escrava Isaura', 'Bernardo Guimarães', 8, 1),
(152, '9788593828782', 'Enquanto os dentes', 'Carlos Eduardo Pereira', 8, 12),
(153, '9788598610177', 'Quincas borba', 'Machado de Assis', 8, 1),
(154, '9788508125937', 'O cortiço', 'Aluísio Azevedo', 8, 1),
(155, '853361800x', 'Ubirajara', 'José de Alencar', 0, 1),
(156, '', 'Fernando e Isaura', 'Ariano Suassuna', 8, 1),
(157, '8537300276', 'A lenda dos cem ', 'Gilvan Lemos', 8, 1),
(158, '9788503003414', 'Menino de engenho ', 'José Lins do Rego', 8, 1),
(159, '9788561578534', 'Super-homem, Não-homem, Carol e os invisíveis ', 'Carlos Eduardo de Magalhães', 8, 1),
(160, '9788578600334', 'A filha do escritor ', 'Gustavo Bernardo ', 8, 1),
(161, '9788528600766', 'A casca da serpente ', 'José jacinto veiga ', 8, 1),
(162, '9788520008959', 'Essa terra', 'Antônio torres', 8, 1),
(163, '', 'Senhora', 'José de Alencar', 8, 1),
(164, '', 'O gaúcho', 'José de Alencar', 8, 1),
(165, '', 'Til', 'José de Alencar', 8, 1),
(166, '', 'Sonhos d\'ouro', 'José de Alencar', 8, 1),
(167, '', 'O guarani ', 'José de Alencar', 8, 1),
(168, '', 'Mais forte que o amor', 'Cronin', 8, 1),
(169, '', 'O sertanejo', 'José de Alencar', 8, 1),
(170, '', 'As minas de prata 3', 'José de Alencar', 8, 1),
(171, '', 'As minas de prata 2', 'José de Alencar', 8, 1),
(172, '', 'Caminho de ouro vol 1', 'Renato Sêneca Fleury', 0, 1),
(173, '', 'Caminho de ouro Vol 3', 'Renato Sêneca Fleury', 0, 1),
(174, '9788560171651', 'Minha primeira vez', 'Luiz Ruffato', 0, 33),
(175, '9788522520558', 'Entre silêncios e gestos', 'Marcos arthur', 8, 57),
(176, '9788560171590', 'Sonhos rebobinados', 'Humberto Werneck', 8, 22),
(177, '850001881x', 'Odisseia', 'homero', 8, 5),
(178, '9788533623507', 'Lancelot', 'anônimo ', 8, 1),
(179, '', 'O ultimo dos moicanos ', 'James Fenimore Cooper', 8, 1),
(180, '8516050238', 'Auto da barca do inferno', 'Gil Vicente', 0, 1),
(181, '9788525417565', 'A historia dos treze', 'Balzac', 8, 1),
(182, '', 'Crime e castigo vol 1 ', 'Fiodor Mikháivovitch Dostoievski', 8, 1),
(183, '', 'Crime e castigo vol 2 ', 'Fiodor Mikháivovitch Dostoievski', 8, 1),
(184, '9788574481265', 'Ilusões perdidas', 'Balzac', 8, 1),
(185, '9788525417794', 'Romeu e Julieta', 'William Shakespeare', 8, 3),
(186, '9788573264562', 'O capote', 'Nikolai Gógol', 8, 1),
(187, '9788573263862', 'Tarás Bulba', 'Nikolai Gógol', 8, 1),
(188, '8573261978', 'Tio petros e a conjectura de Goldbach', 'Apostolos Doxiadis', 8, 1),
(189, '8573261447', 'A dama do cachorrinho', 'A. P. Tchekhov', 8, 1),
(190, '9788525429902', 'Elogio da loucura', 'Erasmo', 1, 1),
(191, '', 'Literatura luso-brasileira 1', 'Camilo Castelo e Alexandre Herculano', 8, 1),
(192, '9788565332293', 'No coração das trevas', 'Joseph Conrad', 8, 1),
(193, '9788561096144', 'Memorias do subsolo', 'Fiodor Mikháivovitch Dostoievski', 8, 1),
(194, '9788561096168', 'A velha izerguil', 'Makasim Gorki', 8, 1),
(195, '9788565436533', 'Diários de raqqa', 'Samer', 9, 1),
(196, '9788554194048', 'Micrômeras e outros contos', 'Voltaire', 8, 1),
(197, '9788553109050', 'A autobiografia do poeta-escravo', 'Juan Francisco Manzano ', 9, 57),
(198, '9788526283299', 'Romeu e julieta', 'William Shakespeare', 0, 1),
(199, '8508063865', 'Amor de salvação ', 'Camilo Castelo Branco', 8, 1),
(200, '9788574480367', 'O pai Goriot', 'Balzac', 8, 1),
(201, '', 'Biblioteca de seleções ', 'Daniel Weiss', 8, 1),
(202, '', 'Maria Moisés ', 'Camilo Castelo Branco', 8, 1),
(203, '', 'Bel-Ami', 'Guy de Maupassant', 8, 1),
(204, '8501154083', 'Memorias de Adriano', 'Marguerite Yourcenar', 8, 1),
(205, '9788553109067', 'Narrativa da vida de Frederick Douglass ', 'Frederick Douglas', 9, 1),
(206, '9788566423440', 'Édipo rei', 'Sófocles', 8, 1),
(207, '9788551100639', 'Frankenstein', 'Mary Shelley', 8, 1),
(208, '', 'As aventuras do Sr. Pickwick', 'Charles Dickens', 8, 1),
(209, '9788525409225', 'Romeu e julieta', 'William Shakespeare', 8, 1),
(210, '9788577990009', 'O diário de Anne Frank', 'Anne Frank', 9, 1),
(211, '8572325387', 'Sermões escolhidos', 'Padre Antônio Vieira', 0, 1),
(212, '9788554194062', 'Frankenstein', 'Mary Shelley', 8, 1),
(213, '', 'Felicidade não se compra', 'Irwin Shaw', 8, 1),
(214, '', 'Critica IV série ', 'Humberto de Campos', 9, 1),
(215, '', 'Perfis I série ', 'Humberto de Campos', 0, 0),
(216, '', 'Critica III série', 'Humberto de Campos', 9, 1),
(217, '', 'Da seara de booz', 'Humberto de Campos', 9, 1),
(218, '', 'Os pátrias', 'Humberto de Campos', 9, 1),
(219, '', 'Lagartas e libélulas', 'Humberto de Campos', 9, 1),
(220, '', 'Antologia da academia brasileira de letras', 'Humberto de Campos', 9, 1),
(221, '', 'A bacia de pilatos', 'Humberto de Campos', 9, 1),
(222, '', 'Grão de mostarda', 'Humberto de Campos', 9, 1),
(223, '853250812x', 'A hora da estrela', 'Clarice Lispector ', 8, 1),
(224, '9788566676358', 'Consciência, consequência', 'Beatriz Prats', 8, 4),
(225, '9788520506929', 'O beijo na parede', 'Jeferson Tenório', 8, 1),
(226, '9788535628159', 'O uraguai', 'Basílio da Gama', 8, 1),
(227, '', 'O despertar do nordeste', 'Carlindo E. Silva', 8, 1),
(228, '9788561249533', 'Ruína y leveza', 'Julia Dantas', 8, 1),
(229, '9788534705455', 'Becos da memória', 'Conceição Evaristo', 8, 1),
(230, '9788553086122', 'O surgimento dos pássaros', 'Anne Ballester Soares', 8, 1),
(231, '9788520942963', 'Elas por elas', 'Rosa Amanda Srausz', 8, 1),
(232, '9788564474628', 'A estação das pequenas coisas', 'João Anzanello Carrascoza', 8, 1),
(233, '9788561249564', 'Amora', 'Natalia Borges Polesso', 8, 1),
(234, '9788560636327', 'No meio-fio', 'Neir Ilelis', 8, 1),
(235, '9788577153336', 'Pescaria, jangadas e poesia', 'Zé Melancia', 3, 1),
(236, '9788577153305', 'Poeta-astrólogo', 'Manoel Caboclo e Silva', 3, 1),
(237, '9788599733080', 'Mare nostrum', 'Fabio Atui', 0, 1),
(238, '9788568076132', 'Longe das aldeias ', 'Robertson Frizero', 8, 1),
(239, '9788565631174', 'Entre os apitos da casa de Força', 'Isaias Ehrich', 8, 1),
(240, '9788560636266', 'Os caminhos de Carla', 'Neir Ilelis', 8, 1),
(241, '8586512265', 'Estatutos do homem', 'Thiago de Mello', 8, 2),
(242, '9788500027536', 'No Urubuquaquá no Pinhém', 'João Guimarães Rosa', 8, 1),
(243, '9788520911778', 'Manuelzão e Miguilim', 'João Guimarães Rosa', 8, 1),
(244, '9788587478528', 'A legião negra', 'Oswaldo Faustino', 8, 1),
(245, '9786550511524', 'Uma pátria chamada infância', 'Luiz Ruffato', 8, 1),
(246, '9788525416124', 'O cortiço', 'Aluísio Azevedo', 8, 1),
(247, '850300769x', 'Menino de engenho', 'José Lins do Rego', 8, 2),
(248, '8574795585', 'Memórias inventadas: A infância', 'Manoel de Barros', 8, 1),
(249, '9788569867050', 'Lampião, o cangaço', 'Junior almeida', 8, 1),
(250, '9788586166709', 'Noites do sertão', 'João Guimarães Rosa', 8, 1),
(251, '8573022965', 'Terra Papagalli', 'José Roberto e Marcus aurelius', 8, 1),
(252, '', 'A cidade encantada de jericoacoara', 'Maurício Melo Júnior', 8, 1),
(253, '8573027207', 'Capão pecado', 'Ferréz', 8, 1),
(254, '9788560171002', 'A vida que ninguém vê', 'Eliane Brum', 8, 1),
(255, '8574091618', 'Jutaí menino', 'Gilvan Lemos', 8, 2),
(256, '9788555081156', 'Cãomalehomem', 'Adelmo Camilo', 8, 1),
(257, '8574097063', 'Política de Pé de muro', 'Jessier quirino', 8, 1),
(258, '', 'Cartas', 'Padre Antônio Vieira', 8, 1),
(259, '9788538212386', 'Os trabalhos da mão', 'Alfredo Bosi', 8, 1),
(260, '8520908969', 'Seleta de prosa', 'Manuel Bandeira', 8, 1),
(261, '9788578580490', 'Escritores pernambucanos do século XIX tomo I', 'Luzilá Gonçalves Ferreira', 8, 2),
(262, '9788578580506', 'Escritores pernambucanos do século XIX tomo II', 'Luzilá Gonçalves Ferreira', 8, 2),
(263, '8500018674', 'As caravelas dos insensatos', 'Paulo Novaes', 9, 1),
(264, '8574096008', 'Largo da alegria', 'Gilvan Lemos', 8, 2),
(265, '8574091618', 'Jutaí menino', 'Gilvan Lemos', 8, 2),
(266, '', 'O castelo do homem sem alma', 'Cronin', 8, 1),
(267, '9788592590192', '80 degraus', 'luís dill', 8, 1),
(268, '8535907653', 'Lavoura arcaica', 'Raduan Nassar', 8, 3),
(269, '85890920118', 'Paisagem', 'Lygia Bonjuga', 0, 1),
(270, '858902185', 'Sapato de salto', 'Lygia Bonjuga', 0, 1),
(271, '8575566458', 'Encarnação', 'José de Alencar', 8, 1),
(272, '9788581090504', 'Fábulas entortadas', 'Israel Jelin', 8, 1),
(273, '9788561249168', 'Pó de parede', 'Carol Bensimon', 8, 1),
(274, '', 'Volta à serra misteriosa', 'Francisco Marins', 8, 1),
(275, '9788563255037', 'O que é isso, companheiro?', 'Fernando Gabeira', 3, 1),
(276, '9788525416797', 'Literatura brasileira: modos de usar', 'Luís Augusto Fischer', 8, 4),
(277, '8571602522', 'Bebo chá enquanto os patos grasnam', 'Leida Lusmar', 8, 2),
(278, '', 'Neblinas e serenos', 'Gilvan Lemos', 8, 1),
(279, '8526218468', 'A correspondência de uma estação de cura', 'João do rio', 8, 6),
(280, '8574921106', 'Contos de escola', 'Adriana Falcão', 0, 1),
(281, '', 'Primícias', 'Roberval Medeiros Pena', 8, 1),
(282, '9788525416131', 'O alienista', 'Machado de Assis', 8, 1),
(283, '', 'Um repórter na cidade das flores', 'Roberto Almeida', 8, 1),
(284, '9788550408026', 'Quando me descobri negra', 'Bianca santana', 8, 1),
(285, '', 'Doramundo', 'Geraldo Ferraz', 8, 3),
(286, '9788525416117', 'O guarani', 'José de Alencar', 8, 1),
(287, '9788552994022', 'A sucessora', 'Carolina Nabuco', 8, 1),
(288, '9788599733073', 'Refugiados de Idomeni', 'Gabriel Bonis', 3, 44),
(289, '', 'O fabuloso patrocínio filho', 'Vários ', 8, 1),
(290, '', 'Martins Pena e sua época', 'R. Magalhães Júnior', 8, 1),
(291, '', 'A vida turbulenta de José do patrocínio', 'R. Magalhães Júnior', 8, 1),
(292, '9788537304334', 'Os caminhos da bossa nova', 'George Pereira e Carolinny Fernanda Torres', 7, 1),
(293, '9788571109896', 'Ariano Suassuna: Um perfil biografico', 'Adriana Victor e Juliana Lins', 9, 1),
(294, '9788561041021', 'Perfis Brasileiros: Castro Alves', 'Alberto da Costa e Silva', 9, 1),
(295, '9788563277817', 'Na minha pele', 'Lázaro Ramos', 7, 1),
(296, '9788527311250', 'Ente Mundos', 'Maria Luiza Tucci Carneiro', 9, 1),
(297, '9788530808792', 'Queria brincar de mudar meu destino', 'Gilvã Mendes', 9, 18),
(298, '8525406198', 'Cartas a Théo', 'Vincent Van Gogh', 9, 2),
(299, '8529600487', 'Léo, o pardo', 'Rinaldo Santos Teixeira', 9, 2),
(300, '9788575032589', 'Infância', 'Górki', 8, 1),
(301, '9788565230087', 'Memórias do cárcere', 'Graciliano Ramos', 9, 1),
(302, '9788580576092', 'Queria ver você feliz', 'Adriana Falcão', 9, 1),
(303, '', 'Itinerário de Castro Alves no Recife ', 'Lamartine Morais', 9, 1),
(304, '9788578190576', 'O dono da música', 'Nelson Ferreira', 9, 1),
(305, '8575590391', 'Portinari', 'Marilia Balbi', 9, 1),
(306, '9788562978067', 'Esmeralda: Por que não dancei', 'Esmeralda do Carmo Ortiz', 9, 1),
(307, '9788501057808', 'Anarquistas, graças a Deus', 'Zélia Gattai', 9, 1),
(308, '9788573125948', 'Barack Obama: A origem dos meus sonhos', 'Barack Obama', 9, 1),
(309, '8563055002', 'Raimundo Carrero: A fragmentação dos humanos', 'Marcelo Pereira', 9, 1),
(310, '9788566642322', 'Mandela: O africano de todas as cores', 'Alain Serres e Zau', 9, 1),
(311, '8501065064', 'O sonhador que faz ', 'Teodomiro Braga', 9, 1),
(312, '9788571107502', 'Retrato de Portinari', 'Antonio Callado', 9, 1),
(313, '9788576321774', 'Santos-Dumont e o centenário do 14-bis', 'Vários ', 9, 1),
(314, '9788576750383', 'Terra vermelha, rio amarelo', 'Ange Zhang', 9, 1),
(315, '9788449427626', 'Dicionário Universal de biografias', 'Vários ', 9, 1),
(316, '8571644519', 'O povo brasileiro', 'Darcy Ribeiro', 9, 1),
(317, '8573404124', 'EcoKids: Guia de datas comemorativas', 'Marli Mitsunaga', 0, 1),
(318, '8526228420', 'Breve historia da medida do tempo', 'Marcos Chiquetto', 5, 1),
(319, '8571391319', 'O fim das certezas ', 'Ilya Prigogine', 5, 1),
(320, '', 'Antologia em verso e prosa', 'Mauro Mota', 8, 4),
(321, '9788534522069', 'Esperança viva', 'Ivan Saraiva', 2, 2),
(322, '9788500031984', 'O ato e o fato', 'Carlos Heitor Cony', 9, 30),
(323, '8525002852', 'Os donos do poder 1', 'Raymundo Faoro', 3, 1),
(324, '8525002860', 'Os donos do poder 2', 'Raymundo Faoro', 3, 2),
(325, '9788508114542', 'Capitalismo para principiantes', 'Carlos Eduardo Novaes', 3, 1),
(326, '857326070x', 'Os parceiros do rio bonito', 'Antonio Candido', 3, 1),
(327, '85713891149', 'Para além da esquerda e da direita', 'Anthony giddens', 3, 1),
(328, '8571390223', 'As consequências da modernidade', 'Anthony giddens', 3, 1),
(329, '9788541505062', 'Educação integral no estado de pernambuco', 'Paulo dutra', 2, 1),
(330, '8588141051', 'Crítica da razão tupiniquim', 'Roberto gomes', 2, 1),
(331, '9788578560362', 'Bullying na escola', 'Josevaldo Araújo de Melo', 2, 1),
(332, '9788578560881', 'Cyberbullying: A violência virtual', 'Josevaldo Araújo de Melo', 2, 7),
(333, '9788565381017', 'Micrômegas: Uma historia filosófica', 'Voltaire', 8, 1),
(334, '9788570184580', 'Sistemas Políticos e o modelo brasileiro ', 'Octaciano Nogueira', 3, 1),
(335, '9788570182623', 'Os livros, nossos amigos', 'Eduardo Frieiro', 0, 1),
(336, '8533618972', 'O folclore em questão', 'Florestan Fernandes', 3, 1),
(337, '8537300330', 'GURITÃ: Um cordel para menino', 'Marcus Accioly', 3, 3),
(338, '8526006444', 'Dicionário do folclore brasileiro', 'Luís da Câmara Cascudo', 3, 2),
(339, '8526007912', 'História dos nossos gestos', 'Luís da Câmara Cascudo', 3, 1),
(340, '8526007106', 'Lendas Brasileiras', 'Luís da Câmara Cascudo', 8, 1),
(341, '9788572081849', 'Mitos - O folclore do Mestre André', 'Marcelo Xavier', 8, 1),
(342, '9788572083034', 'Crendices e Superstições - O Folclore do Mestre André', 'Marcelo Xavier', 8, 1),
(343, '9788575960776', 'O livro sagrado do povo Saterê-Mawé', 'Yaguarê Yamã', 2, 1),
(344, '9788508082674', 'O saci e o curupira - e outras histórias do folclore', 'Joel Rufino dos Santos', 0, 1),
(345, '8526006169', 'O livro das árvores', 'Ticuna', 0, 1),
(346, '9788561639013', 'Maracatu - baque virado e baque solto', 'Maria Alice Amorim', 7, 1),
(347, '8574091073', 'Aracuco - Esperança da Nação Indígena', 'Railda Ribeiro Martins', 8, 1),
(348, '9788593828805', 'Também os brancos sabem dançar', 'Kalaf Epalanga', 8, 88),
(349, '9788560772490', 'A ilha', 'Flávio Carneiro', 8, 1),
(350, '9788580575415', 'Percy Jackson e os olimpianos: A maldição do titã', 'Rick Riordan', 0, 1),
(351, '9788578277987', 'Lua de larvas', 'Sally Gardner', 0, 2),
(352, '9788577346622', 'Jogador N 1', 'Ernest Cline', 8, 20),
(353, '9788533613393', 'O senhor dos anéis: O retorno do rei', 'J.R.R Tolkien', 8, 1),
(354, '9788561578091', 'Ciranda de nós', 'Maria Carolina Maia', 8, 1),
(355, '9788563560605', 'O jardim secreto', 'Frances Hodgson Burnett', 8, 1),
(356, '9788562518591', 'Haroun e o mar de historias', 'Salman Rushdie', 8, 1),
(357, '9788562518171', 'A majestade do xingu', 'Moacyr Scliar', 8, 1),
(358, '9788578379483', 'O outro apaixonado por Marília de Dirceu', 'Jair Vitória', 0, 11),
(359, '9788579802089', 'Champion', 'Marie Lu', 0, 1),
(360, '9788565765206', 'O histórico infame de Frankie Landau-Banks ', 'E. Lockhart', 0, 1),
(361, '9788579802065', 'Prodigy', 'Marie Lu', 0, 1),
(362, '9788534705462', 'Ponciá Vicêncio', 'Conceição Evaristo', 8, 22),
(363, '9788573264715', 'País sem chapéu', 'Dany Laferrière', 8, 1),
(364, '8588916738', 'Cidade perdida na amazônia', 'Dieter Schiller', 8, 1),
(365, '9788563255471', 'Desmundo', 'Ana Miranda', 8, 1),
(366, '9788562533099', 'O campeonato', 'Flávio Carneiro', 8, 1),
(367, '9788563255518', 'Sombras no asfalto', 'Luís dill', 0, 1),
(368, '8526233785', 'A fugitiva', 'Evelyn Lau', 3, 1),
(369, '9788539000357', 'Sally e a sombra do norte', 'Philip Pullman', 8, 1),
(370, '9788539000012', 'Sally e a maldição do rubi', 'Philip Pullman', 8, 1),
(371, '9788578582524', 'Ascensão e queda', 'Wander Shirukaya', 8, 2),
(372, '9788563219206', 'Diário de uma paixão', 'Nicholas Sparks', 8, 1),
(373, '8535906290', 'Avalovara', 'Osman Lins', 8, 1),
(374, '9788581050164', 'Marina', 'Carlos Ruiz Zafón', 8, 1),
(375, '9788581660011', 'Uma janela em copacabana', 'Luiz Alfredo Garcia-rosa', 8, 1),
(376, '9788577342037', 'Páginas do futuro', 'Braulio Tavares', 8, 1),
(377, '9788576654599', 'O mundo', 'Juan José Millas', 8, 1),
(378, '9788537304631', 'Quando se cobrem de verde as baraúnas', 'Waldenio Porto', 8, 2),
(379, '857409370x', 'O quarto anjo do dia', 'Gilvan Lemos', 8, 1),
(380, '9788539000715', 'Sally e o tigre no poço', 'Philip Pullman', 8, 1),
(381, '8575100769', 'Onze noites em jerusalém', 'Pedro paixão', 8, 1),
(382, '8571641498', 'As cidades invisíveis', 'Italo Calvino', 8, 2),
(383, '9788560281336', 'Era no tempo do rei', 'Ruy Castro', 9, 1),
(384, '9788571649477', 'O teorema do papagaio', 'Denis Guedj', 0, 1),
(385, '9788581052366', 'Um dia de cada vez', 'Courtney C. Stevens', 8, 1),
(386, '9788581630113', 'Garotas de vidro', 'Laurie Halse Anderson ', 8, 1),
(387, '9788577230280', 'Antologia do vampiro literário', 'Bruno Berlendis de Carvalho', 8, 1),
(388, '9788560281497', 'A guerra do fim do mundo', 'Mario Vargas Llosa', 8, 1),
(389, '9788579620416', 'O homem invisível', 'H.G. Wells', 8, 1),
(390, '978857164718', 'O diabo dos numeros', 'Hans Magnus Enzensberger', 0, 1),
(391, '9788575550885', 'Berenice Detetive', 'João Carlos Marinho', 0, 1),
(392, '9788532291448', 'Vinte Mil Léguas Submarinas', 'Júlio Verne', 0, 2),
(393, '9788526019638', 'A Arca Dos Marechais', 'Marcos Rey', 0, 2),
(394, '9788526022034', 'Barão De Munchhausen', 'Rudolf Erich Raspe', 0, 1),
(395, '9788560820764', 'A espada e o novelo', 'Dionisio Jacob', 8, 1),
(396, '9788580413144', 'Mares De Sangue ', 'Scott Lynch', 8, 1),
(397, '9788598558202', 'A Cidade e as Serras', 'Eça de Queirós', 8, 3),
(398, '9788563219329', 'Anna e o Beijo Francês', 'Stephanie Perkins', 8, 1),
(399, '9788580412499', 'As Mentiras de Locke Lamora', 'Scott Lynch', 8, 1),
(400, '9788578581800', 'O livro de corintha', 'Fernando Monteiro', 8, 1),
(401, '9788581633831', 'Arrabal e a Noiva do capitão', 'Marisa Ferrari', 8, 1),
(402, '9788573028430', 'A faca sutil', 'Philip Pullman', 8, 1),
(403, '8574093157', 'O defunto aventureiro', 'Gilvan Lemos', 8, 2),
(404, '9788537303900', 'Espaço terrestre', 'Gilvan Lemos', 8, 2),
(405, '9788524921384', 'Sequestro em urbana', 'Severino Rodrigues', 0, 1),
(406, '9788561618117', 'Água viva', 'Clarice Lispector ', 8, 2),
(407, '9788564474291', 'Sina', 'Roniwalter Jatobá', 8, 2),
(408, '9788589917292', 'Bandoleira', 'José Carlos Magdalena', 8, 1),
(409, '8574095486', 'O senhor dos sonhos', 'Raimundo Carrero', 8, 1),
(410, '', 'Lições de vôo', 'Archidy Picado Filho', 8, 1),
(411, '9788520008836', 'O livro de Aladim', 'Malba Tahan', 8, 1),
(412, '8574090670', 'Cecilia entre os leões', 'Gilvan Lemos', 8, 1),
(413, '8574097047', 'Enquanto o rio dorme', 'Gilvan Lemos', 8, 1),
(414, '853730108', 'Noturno sem musica', 'Gilvan Lemos', 8, 2),
(415, '8574095621', 'Aventura no vale do catimbau', 'Josédio Gusmão', 8, 1),
(416, '8573211385', 'Sombra Severa', 'Raimundo Carrero', 8, 1),
(417, '9788591891603', 'A volta do rei do cangaço', 'Junior Almeida', 8, 1),
(418, '9788500027697', 'Instruções para salvar o mundo', 'Rosa Monteiro', 8, 1),
(419, '9788563255082', 'Estive em Lisboa e lembrei de você', 'Luiz Ruffato', 8, 1),
(420, '9788542807592', 'Homem de ferro: Vírus', 'Alex Irvine', 8, 1),
(421, '9788563255112', 'Céu de origamis', 'Luiz Alfredo Garcia-rosa', 8, 1),
(422, '9788571647053', 'A quarentena', 'J.M.G. Le Clézio', 8, 1),
(423, '9788535921632', 'A confissão de leoa', 'Mia Couto', 8, 1),
(424, '8586387282', 'Novelas para um ano: O velho Deus', 'Luigi Pirandello', 8, 1),
(425, '9788520429594', 'O pêndulo do relógio', 'Charles Kiefer', 8, 1),
(426, '9788500026126', 'O selvagem da ópera', 'Rubem Fonseca', 8, 1),
(427, '9788563295613', 'O centauro guardião', 'Christian David', 0, 1),
(428, '9788588771826', 'Nanook', 'Gustavo Bernardo ', 0, 1),
(429, '9788563171726', 'O peso da luz', 'Ana Miranda', 8, 1),
(430, '8571062587', 'Lord Jim', 'Joseph Conrad', 8, 1),
(431, '9788571644953', 'Ensaio sobre a cegueira', 'José Saramago', 8, 1),
(432, '9788500032035', 'Oiobomé: A epopeia de uma nação', 'Nei Lopes', 8, 1),
(433, '856129311x', 'Uma coisa de cada vez', 'André Resende', 8, 1),
(434, '9788537307502', 'O perigoso caminho das pedras', 'José teles', 8, 1),
(435, '97885616189', 'Invenção e memória', 'Lygia Fagundes Telles', 8, 1),
(436, '8501060496', 'Fernão Capelo gaivota', 'Richard Bach', 8, 1),
(437, '8535903836', 'A metamorfose', 'Franz Kafka', 8, 2),
(438, '9788536405513', 'O trono no morro', 'José jacinto veiga ', 8, 1),
(439, '9788573262711', 'Duas narrativas fantásticas', 'Fiodor Mikháivovitch Dostoievski', 8, 1),
(440, '9788560805242', 'Jogo duplo', 'Silio Boccanera', 8, 1),
(441, '', 'O mundo alucinante', 'Reinaldo Arenas', 8, 1),
(442, '9788527307895', 'Odete inventa o mar', 'Sônia Machado de Azevedo', 8, 1),
(443, '9788566428681', 'Solo Mãe', 'Vinicius Cellurale Novaes', 8, 4),
(444, '9788563560490', 'Razão e sensibilidade', 'Jane Austen', 8, 1),
(445, '9788564767676', 'A conta-gotas', 'Ana Carolina Carvalho', 0, 1),
(446, '9788559090031', 'Canto do Uirapuru', 'Érics Bombardi', 0, 1),
(447, '8576751496', 'Uma armadilha para Ifigênia', 'Évelyne Brisou-Pellen', 0, 1),
(448, '9788533622470', 'Contos e lendas dos herois da mitologia', 'Christian Grenier', 0, 1),
(449, '9788563277848', 'Sombras de reis barbudos', 'José jacinto veiga ', 8, 1),
(450, '9788581430744', 'A outra volta do parafuso', 'Henry James', 8, 1),
(451, '9788572722681', 'O enterro prematuro', 'Edgar Allan Poe', 8, 1),
(452, '8589020010', 'Retratos de Carolina', 'Lygia Bonjuga', 8, 1),
(453, '9788534704595', 'Cachorro velho', 'Teresa Cárdenas', 8, 1),
(454, '9788581660127', 'Incidente em Antares', 'Erico Verissimo', 8, 2),
(455, '9788525412430', 'Um conto de natal', 'Charles Dickens', 8, 2),
(456, '8500417439', 'Morro dos ventos uivantes', 'Emily Bronte', 8, 1),
(457, '8572326693', 'Germinal', 'Émile Zola', 8, 1),
(458, '8572323619', 'A ilustre casa de Ramires', 'Eça de Queirós', 8, 1),
(459, '8586387991', 'Três cavalos', 'Erri de luca', 8, 1),
(460, '9788535908428', 'O outro pé da sereia', 'Mia Couto', 8, 1),
(461, '9788535906028', 'O ultimo voo do flamingo', 'Mia Couto', 8, 1),
(462, '9788580573800', 'A culpa é das estrelas', 'John Green', 8, 1),
(463, '9788532524102', 'A sociedade literária e a torta de casca de batata', 'Mary Ann Shaffer e Annie Barrors', 8, 1),
(464, '9788562518225', 'Carta ao pai', 'Franz Kafka', 8, 1),
(465, '9788535931181', 'Terra sonâmbula', 'Mia Couto', 8, 1),
(466, '9788533613386', 'O senhor dos anéis: As duas torres', 'J.R.R Tolkien', 8, 1),
(467, '9788525426765', 'Infância, adolescência, juventude', 'Lev Tolstói', 8, 5),
(468, '9788503009492', 'O sol é para todos', 'Harper Lee', 8, 10),
(469, '97835915358', 'O barão nas arvores', 'Italo Calvino', 8, 1),
(470, '9788535906790', 'O cavaleiro inexistente', 'Italo Calvino', 8, 1),
(471, '9788575207697', 'Amor de perdição', 'Camilo Castelo Branco', 8, 1),
(472, '9786555651188', 'Bridgerton: Um beijo inesquecível', 'Julia Quinn', 8, 1),
(473, '9788508127030', 'Amor de perdição', 'Camilo Castelo Branco', 8, 2),
(474, '9788539711086', 'O herói invisivel', 'Luca Cognolato e Silvia DelFrancia', 2, 1),
(475, '9788532524720', 'A solidão dos números primos', 'Paolo Giordano', 8, 1),
(476, '9788561635138', 'Entre os muros da escola', 'François Bégaudeau', 8, 1),
(477, '9788574482798', 'A fórmula preferida do professor', 'Yoko Ogawa', 8, 1),
(478, '9788577346646', 'Se o passado não tivesse asas', 'Pepetela', 8, 1),
(479, '9788565332286', 'Oliver Twist', 'Charles Dickens', 8, 1),
(480, '9788574481289', 'A bela senhora Seidenman', 'Andrzej Szczpiorski', 8, 1),
(481, '9788508043439', 'O primo Basílio', 'Eça de Queirós', 8, 1),
(482, '9788592795191', 'Kindred: Laços de sangue', 'Octavia E. Butler', 8, 1),
(483, '8586387800', 'Pai patrão e recanto', 'Gavino Ledda', 8, 1),
(484, '8571644098', 'Palomar', 'Italo Calvino', 8, 1),
(485, '9788528615050', 'Branca como leite, vermelha como o sangue', 'Alessandro D\'avenia', 8, 1),
(486, '9788585469559', 'Nação Crioula', 'José Eduardo Agualusa', 8, 1),
(487, '9788501082640', 'Uma ilha no oceano', 'Annika Thor', 8, 1),
(488, '8573261854', 'Memórias do subsolo', 'Fiodor Mikháivovitch Dostoievski', 8, 1),
(489, '9788562936098', 'O planalto e a estepe', 'Pepetela', 8, 1),
(490, '8531907438', 'O engenhoso fidalgo: Dom Quixote de la mancha', 'Miguel de Cervantes', 8, 1),
(491, '9788574166247', 'Os repórteres Clandestinos', 'Kathy Kacer', 9, 1),
(492, '9788580570090', 'Crescendo', 'Becca Fitzpatrick', 0, 1),
(493, '9788598078786', 'Sussurro', 'Becca Fitzpatrick', 0, 1),
(494, '9788580720181', 'Onde as árvores cantam', 'Laura Gallego García', 0, 1),
(495, '9788516078898', 'Viagem ao centro da terra', 'Júlio Verne', 0, 1),
(496, '9788580571318', 'Silêncio', 'Becca Fitzpatrick', 8, 1),
(497, '9788575753729', 'O primo Basílio', 'Eça de Queirós', 8, 1),
(498, '9788560281312', 'Tia julia e o escrevinhador', 'Mario Vargas Llosa', 8, 1),
(499, '9788520916360', 'Equador', 'Miguel Sousa Tavares', 8, 1),
(500, '9788560281053', 'Os cus de Judas', 'António Lobo Antunes', 8, 1),
(501, '9788574481388', 'Eu sou um gato', 'Natsume Soseki', 8, 1),
(502, '9788560281725', 'Primavera num espelho partido', 'Mario Benedetti', 8, 1),
(503, '9788592795122', 'Tudo que deixamos para trás', 'Maja lunde', 8, 20),
(504, '9788579273209', 'Melodia mortal', 'Pedro Bandeira e Guido Carlos Levi', 8, 20),
(505, '8511010491', 'O que são direitos da pessoa', 'Dalmo de Abreu Dallari', 3, 2),
(506, '8511011811', 'O que é empresa', 'Raimar Richers', 6, 2),
(507, '8511012869', 'O que é história da ciência', 'Ana Maria Alfonso-Goldfarb', 5, 2),
(508, '8511011358', 'O que é conto', 'Luzia de Maria', 8, 2),
(509, '9788511010718', 'O que é Capital internacional', 'Rabah Benakouche', 3, 2),
(510, '9788511011517', 'O que é mito', 'Everardo Rocha', 3, 1),
(511, '8511010645', 'O que é capital', ' Ladislau Dowbor', 3, 2),
(512, '9788511001112', 'O que é cooperativismo', 'Gilvando Sá Leitão Rios', 3, 2),
(513, '9788511012194', 'O que é democracia', 'Denis L. Rosenfield', 3, 2),
(514, '8511012672', 'O que é Poluição química', 'Joel Arnaldo Pontin', 3, 2),
(515, '8511010149', 'O que é subdesenvolvimento', 'Horácio González', 3, 2),
(516, '9788511001488', 'O que é educacionismo', 'Cristovam Buarque', 3, 2),
(517, '8511010351', 'O que é imperialismo', 'Afrânio Mendes Catani', 3, 2),
(518, '8511011161', 'O que é ecologia', 'José Augusto Pádua', 3, 1),
(519, '8511012818', 'O que é meio ambiente', 'Kurt Kloetzel', 3, 5),
(520, '9788511010374', 'O que é filosofia', 'Caio Prado Jr.', 1, 4),
(521, '9788511010619', 'O que é existencialismo', 'João da penha', 1, 1),
(522, '9788511000665', 'O que é estatística', 'Sonia Vieira e Ronaldo Wada', 5, 2),
(523, '9788511001501', 'O que é educação física', 'Vitor Marinho', 6, 2),
(524, '9788511012774', 'O que é', 'Maria José de Lima', 6, 2),
(525, '9788511011777', 'O que é ética', 'Álvaro L. M. Valls', 1, 2),
(526, '8511011676', 'O que é beleza', 'João-Francisco Duarte Jr.', 1, 2),
(527, '9788511001211', 'O que é filosofia contemporânea', 'Paulo Ghiraldelli Jr.', 1, 2),
(528, '9788511000740', 'O que é bioética', 'Debora Diniz e Dirce Guilhem', 1, 2),
(529, '8511000941', 'O que é educação popular', 'Carlos Rodrigues Brandão', 3, 2),
(530, '9788511010206', 'O que é educação', 'Carlos Rodrigues Brandão', 3, 2),
(531, '9788511156249', 'O que é educação inclusiva', 'Emílio Figueira', 3, 2),
(532, '9788511001228', 'O que é educação ambiental', 'Marcos Reigota', 3, 2),
(533, '9788511001327', 'O que é escolha profissional', 'Dulce Helena Penna Soares', 3, 2),
(534, '9788511000931', 'O que é célula-tronco', 'Marília Bernardes Marques', 5, 1),
(535, '9788511000238', 'O que é cristianismo', 'Ivone Gebara', 2, 1),
(536, '9788511010237', 'O que é dialética', 'Leandro Konder', 1, 1),
(537, '8585755085', 'O spray chamado respeito', 'Luiz Antonio Ryzewski', 0, 1),
(538, '8516043843', 'Assembléia escolar: Um caminho para a resolução de conflitos', 'Ulisses F. Araújo', 3, 1),
(539, '8516043851', 'A sociedade da insegurança e a violência na escola', 'Flávia Schilling', 3, 1),
(540, '9788511011937', 'O que é pedagogia', 'Paulo Ghiraldeli Jr.', 3, 1),
(541, '8511012974', 'O que é comunicação empresarial', 'Paulo Nassar', 6, 2),
(542, '978851100306', 'O que é tecnologia', 'José Adelino Medeiros', 6, 2),
(543, '9788511001259', 'O que é linguística', 'Eni Puccinelli Orlandi', 4, 2),
(544, '8511010742', 'O que é leitura', 'Maria Helena Martins', 4, 2),
(545, '851101036x', 'O que é cultura popular', 'Antonio Augusto Arantes', 3, 2),
(546, '9788511012163', 'O que é ação cultural', 'Teixeira Coelho', 3, 2),
(547, '851100081x', 'O que é literatura de cordel', 'Joseph M. Luyten', 3, 2),
(548, '851101067x', 'O que é comunicação', 'Juan E. Díaz Bordenave', 3, 2),
(549, '8511012117', 'O que é design', 'Wilton Azevedo', 7, 2),
(550, '8511010165', 'O que é arquitetura', 'Carlos A. C. Lemos', 7, 2),
(551, '8511010467', 'O que é arte', 'Jorge Coli', 7, 2),
(552, '9788511010091', 'O que é cinema', 'Jean-Claude Bernadet', 7, 2),
(553, '8511000631', 'O que é violência contra a mulher', 'Maria Amélia de Almeida Teles', 3, 2),
(554, '9788511001518', 'O que é geografia', 'Ruy Moreira', 9, 5),
(555, '8511010173', 'O que é historia', 'Vavy Pacheco Borges', 9, 2),
(556, '9788511010138', 'O que é ideologia', 'Marilena Chauí', 3, 3),
(557, '9788511000672', 'O que é capitalismo', 'Afrânio Mendes Catani', 3, 2),
(558, '9788511010244', 'O que é poder', 'Gérard Lebrun', 3, 2),
(559, '851101005x', 'O que é anarquismo', 'Caio Túlio Costa', 3, 1),
(560, '8511010548', 'o que é politica', 'Wolfgang Leo Maar', 3, 1),
(561, '8511010858', 'O que é violência', 'Nilo Odalia', 3, 2),
(562, '9788511011685', 'O que é política social', 'Vicente de Paula Faleiros', 3, 2),
(563, '9788511010503', 'O que é Família', 'Danda Prado', 3, 2),
(564, '9788511000467', 'O que é Patrimônio histórico', 'Carlos A. C. Lemos', 3, 2),
(565, '8511011196', 'O que é nordeste brasileiro', 'Carlos Garcia', 3, 2),
(566, '9788511001075', 'O que é deficiência', 'Debora Diniz', 3, 2),
(567, '8511012036', 'O que é cidade', 'Raquel Rolnik', 3, 2),
(568, '9788511000351', 'O que é cidadania', 'Maria Lourdes Cerquier-Manzini', 3, 2),
(569, '9788511010626', 'O que é direito', 'Roberto Lyra Filho', 3, 2),
(570, '851101229x', 'O que é direitos humanos', 'João Ricardo W. Dornelles', 3, 2),
(571, '9788525426598', 'Evolução', 'Brian e Deborah Charlesworth', 5, 3),
(572, '9788525428301', 'Filosofia pré-socrática', 'Catherine Osborne', 1, 4),
(573, '9788571105669', 'Turing e o computador', 'Paul Strathern', 0, 1),
(574, '9788570195326', 'Índice geral de nomes e assuntos', 'Vários ', 3, 2),
(575, '9788570195043', 'Valnir Chagas', 'Aloylson Gregório de Toledo Pinto', 3, 2),
(576, '9788570194763', 'Cecília Meireles', 'Yolanda Lôbo', 3, 2),
(577, '9788570195094', 'Rui Barbosa', 'Maria Cristina Gomes Machado', 3, 2),
(578, '9788570195234', 'Gilberto Freyre', 'Mário Hélio Gomes de Lima', 3, 2),
(579, '9788570195050', 'Sampaio Dória', 'Marta Maria Chagas de Carvalho', 3, 2),
(580, '9788570195128', 'Paschoal Lemme', 'Zaia Brandão', 3, 2),
(581, '9788570195111', 'Paulo Freire', 'Celso de Rui Beisiegel', 3, 1),
(582, '9788570195235', 'Nísia Floresta', 'Constância Lima Duarte', 3, 2),
(583, '9788570195173', 'Lourenço Filho', 'Carlos Monarcha', 3, 2),
(584, '9788570195104', 'Edgard Roquette-Pinto', 'Jorge Antonio Rangel (Fidel)', 3, 2),
(585, '9788570195081', 'Durmeval Trigueiro', 'Osmar Fávero e  Maria L. A. Fáveiro', 3, 2),
(586, '9788570195074', 'Azeredo Coutinho', 'Gilberto Luiz Alves', 3, 2),
(587, '9788570195289', 'Celso Suckow da Fonseca', 'Maria Ciavatta e Zuleide S. da Silveira', 3, 2),
(588, '9788570195319', 'Anísio Teixeira', 'Clarice Nunes', 3, 1),
(589, '9788570195067', 'Armanda Álvaro Alberto', 'Ana Chrystina Venacio Mignot', 3, 2),
(590, '9788570195180', 'José Mário Pires Azanha', 'José Sérgio Fonseca Carvalho', 3, 2),
(591, '9788570195142', 'Julio de Mesquita Filho', 'José Alfredo Vidigal Pontes', 3, 2),
(592, '9788570195203', 'Helena Antipoff', 'Regina H.F. Campos', 3, 2),
(593, '9788570195197', 'Humberto Mauro', 'Jorge Antonio Rangel (Fidel)', 3, 2),
(594, '9788570195241', 'Gustavo Capanema', 'José Silvério Baia Horta', 3, 2),
(595, '9788570195210', 'Heitor Villa-Lobos', 'Marco Antonio Carvalho Santos', 3, 2),
(596, '9788570195036', 'Manoel Bomfim', 'Rebeca Gontijo', 3, 2),
(597, '9788570195159', 'Manuel da Nóbrega', 'João Adolfo Hansen', 3, 2),
(598, '9788570195258', 'Florestan Fernandes ', 'Marcos Marques de Oliveira', 3, 2),
(599, '9788570195227', 'Frota Pessoa', 'Sofia Lerche Vieira', 3, 2),
(600, '9788570195272', 'Darcy Ribeiro', 'Candido Alberto Gomes', 3, 2),
(601, '9788570195265', 'Fernando de Azevedo', 'Maria Luiza Penna', 3, 2),
(602, '9788570195302', 'Aparecida Joly Gouveia', 'Menga Ludke', 3, 2),
(603, '9788570195296', 'Bertha Lutz', 'Yolanda Lôbo', 3, 2),
(604, '9788570195029', 'Almeida Júnior', 'Raquel Gandini', 3, 2),
(605, '9788570195012', 'Alceu Amoroso Lima ', 'Carlos Roberto Jamil Cury', 3, 2),
(606, '9788570195524', 'Ivan Illich', 'Marcela Gajardo', 3, 2),
(607, '9788570195357', 'Maria Montessori', 'Hermann Rohrs', 3, 1),
(608, '9788570195609', 'Roger Cousinet', 'Louis Raillon', 3, 2),
(609, '9788570195449', 'Jean-Jacques Rousseau', 'Michael Soetard', 3, 2),
(610, '9788570193616', 'Édouard Claparède', 'Daniel Hameline', 3, 1),
(611, '9788570195425', 'Lev Semionovich Vygotsky', 'Ivan Ivic', 3, 1),
(612, '9788570195517', 'Johann Herbart', 'Norbert Hilgenheger', 3, 1),
(613, '9788570195500', 'Georg Kerschensteiner', 'Hermann Rohrs', 3, 2),
(614, '9788570195371', 'Jean-Ovide Decroly', 'Francine Dubreucq', 3, 2),
(615, '9788570195555', 'Sigmund Freud', 'Bernard Joilibert', 3, 1),
(616, '9788570195456', 'Carl Rogers', 'Fred Zimring', 3, 1),
(617, '9788570195364', 'Frederic Skinner', 'Louis M. Smith', 3, 1),
(618, '9788570195562', 'Célestin Freinet', 'Louis Legrand', 3, 2),
(619, '9788570195579', 'Émile Durkheim', 'Jean-Claude Filloux', 3, 1),
(620, '9788570195418', 'Henri Wallon', 'Hélène Gratiot-Alfandéry', 3, 1),
(621, '9788570195593', 'Jan Amos Comênio', 'Jean Piaget', 3, 2),
(622, '9788570195623', 'Friedrich Frobel', 'Helmut Heiland', 3, 2),
(623, '9788570195333', 'Alfred Binet', 'René Zazzo', 3, 3),
(624, '9788570195548', 'Antonio Gramsci', 'Attilio Monasta', 3, 2),
(625, '9788570195494', 'Anton Makarenko', 'G. N. Filonov', 3, 1),
(626, '9788570195470', 'Ortega y Gasset', 'Juan Escámez Sánchez', 3, 2),
(627, '9788570195401', 'Domingo Sarmiento', 'Héctor Félix Bravo', 3, 2),
(628, '9788570195432', 'Bogdan Suchodolski', 'Irena Wojnar', 3, 1),
(629, '9788570195340', 'Andrés Bello', 'Gregorio Weinberg', 3, 2),
(630, '9788570195395', 'Johann Pestalozzi', 'Michel Soetard', 3, 2),
(631, '9788570195487', 'José Martí', 'Ricardo Nassif', 3, 2),
(632, '9788555340574', 'Eu sou Malala', 'Malala Yousafzai', 3, 20),
(633, '9788562525803', 'Pintura aventura', 'Katia Canton', 8, 1),
(634, '9788559090000', 'Eros e Psiquê, Píramo e Tisbe e outros amores da mitologia grega', 'Maria Clara Cavalcanti', 0, 22),
(635, '9788546815654', 'Depois daquela viagem', 'Valéria Piassa Polizzi', 0, 1),
(636, '9788560772438', 'Território de sonhos', 'Roseana Murray', 0, 1),
(637, '9788575101063', 'Quem me dera ser onda', 'Manuel Rui', 8, 1),
(638, '9788573264036', 'Cinco balas contra a america', 'Jorge Araújo', 8, 1),
(639, '9788561293123', 'Birdboy', 'André Resende', 8, 2),
(640, '9788525411334', 'A arte de amar', 'Ovídio', 3, 1),
(641, '9788576754602', 'Víctor Jara: Não à ditadura', 'Bruno Doucey', 0, 1),
(642, '9788565230131', 'Alexandre e outros heróis', 'Graciliano Ramos', 0, 1),
(643, '9788579800863', 'A esperança', 'Suzanne Collins', 0, 1),
(644, '9788579801556', 'Insurgente', 'Veronica Roth', 0, 1),
(645, '9788579801860', 'Convergente', 'Veronica Roth', 0, 1),
(646, '8516001326', 'O filho das estrelas', 'Wilson Rocha', 0, 1),
(647, '9788599520703', 'As namoradas do meu pai', 'Silvana Tavano', 0, 1),
(648, '9788525429896', 'A arte da guerra', 'Sun Tzu', 3, 1),
(649, '9788516079666', 'A ladeira da saudade', 'Ganymédes José', 0, 2),
(650, '9788560772384', 'A ilha misteriosa', 'Júlio Verne', 0, 1),
(651, '9788579801211', 'Fala sério, amiga!', 'Thalita Rebouças', 0, 1),
(652, '9788579801648', 'Fala sério,', 'Thalita Rebouças', 0, 1),
(653, '9788579801020', 'Fala sério, filha!', 'Thalita Rebouças', 0, 1),
(654, '9788579801037', 'Fala sério, professor!', 'Thalita Rebouças', 0, 1),
(655, '9788579801174', 'Fala sério, amor!', 'Thalita Rebouças', 0, 1),
(656, '9788524911262', 'Os cavaleiros da toca', 'Marconi Leal', 0, 1),
(657, '9788501079930', 'Mundo de sombras', 'Ivanir Calado', 0, 1),
(658, '9788532523051', 'Harry Potter e a pedra filosofal', 'J. K. Rowling', 0, 1),
(659, '9788589239806', 'Fazendo meu filme 2 Fani na terra da rainha', 'Paula pimenta', 0, 2),
(660, '9788589239394', 'Fazendo meu filme 3 O roteiro inesperado de Fani', 'Paula pimenta', 0, 2),
(661, '9788565383202', 'Fazendo meu filme 4 Fani em busca do final feliz', 'Paula Pimenta', 0, 1),
(662, '9788532287458', 'A volta ao mundo em 80 dias', 'Júlio Verne', 0, 1),
(663, '9788516085353', 'Luna Clara e Apolo onze', 'Adriana Falcão', 0, 1),
(664, '9788561521455', 'Longas cartas para ninguém', 'Júlio Emílio Braz', 0, 1),
(665, '9788594318145', 'A volta ao mundo em 80 dias', 'Júlio Verne', 0, 1),
(666, '9788532292490', 'Entre rios', 'Vários ', 0, 1),
(667, '9788579303104', 'Chica, Sinhá', 'Carlos Alberto de Carvalho', 8, 1),
(668, '9788535915761', 'Sangue de tinta', 'Cornelia Funke', 8, 2),
(669, '9788564767188', 'Gargântua', 'François Rabelais', 0, 1),
(670, '9788581551005', 'Nino, o menino de saturno', 'Ziraldo', 0, 1),
(671, '9788582771037', 'O príncipe e o mendigo', 'Mark Twain', 0, 1),
(672, '9788550407852', 'A flauta mágica e o livro da sabedoria', 'Del Candeias', 0, 2),
(673, '9788535917062', 'Morte de tinta', 'Cornelia Funke', 0, 2),
(674, '9788560820771', 'Tantã', 'Marie-Aude Murail', 0, 1),
(675, '9788560820696', 'O arminho dorme', 'Xosé A. Neira Cruz', 0, 1),
(676, '9788535914023', 'O cavaleiro do dragão', 'Cornelia Funke', 0, 1),
(677, '9788535907728', 'Coração de tinta', 'Cornelia Funke', 0, 1),
(678, '9788516085339', 'pequeno dicionário de Palavras ao vento', 'Adriana Falcão', 0, 1),
(679, '9788526281226', 'O médico e o monstro', 'Robert Louis Stevenson', 0, 2),
(680, '8506010098', 'O menino marrom', 'Ziraldo', 0, 1),
(681, '9788572086387', 'O colecionador de manhãs', 'Walther Moreira-Santos', 0, 4),
(682, '9788508164790', 'Coragem não tem cor', 'Marcia Kupstas', 0, 1),
(683, '9788575039939', 'Amargo vermelho', 'Bartolomeu Campos de Queiros', 0, 1),
(684, '9788566423457', 'A metamorfose', 'Franz Kafka', 8, 1),
(685, '9788506043967', 'Mais coisas que todo garoto deve saber', 'Antonio Carlos Vilela', 0, 1),
(686, '9788522520589', 'Lisboa:um sonho, um pesadelo', 'Regina Drummond', 8, 1),
(687, '70401007', 'Soprinho', 'Fernanda Lopes de Almeida', 0, 1),
(688, '9788532523006', 'Peixe grande', 'Daniel Wallace', 8, 1),
(689, '', 'O garoto sardento e os comanches', 'Mabel E. Canson', 8, 1),
(690, '9786588406052', 'A marca de uma lagrima', 'Pedro Bandeira', 0, 1),
(691, '8526224859', 'Nós, as garotas: o mundo das garotas', 'Nathalie Roques', 8, 1),
(692, '841036', 'Deus me livre!', 'Luiz Puntel', 0, 1),
(693, '8516035468', 'Estrelas tortas', 'Walcyr Carrasco', 0, 2),
(694, '9788582350577', 'Confissão', 'Paula pimenta', 0, 1),
(695, '9788571647688', 'Minha vida de menina', 'Helena Morley', 9, 1),
(696, '9788576844495', 'Quem matou o livro policial?', 'Luiz Antonio Aguiar', 0, 1),
(697, '8516034844', 'Dois amigos e um chato', 'Stanislaw Ponte Preta', 0, 1),
(698, '8516006786', 'Pássaro contra a vidraça', 'Giselda Laporta Nicolelis', 0, 1),
(699, '9788526242050', 'Os três mosqueteiros', 'Alexandre Dumas', 0, 1),
(700, '9788503001373', 'O menino do dedo verde', 'Maurice Druon', 0, 1),
(701, '8574061395', 'Conta que eu conto', 'Vários ', 0, 1),
(702, '8570565453', 'O rei da rua', 'Jorge Fernando dos Santos', 3, 1),
(703, '8506033535', 'Já começou pra você?', 'Ruth Thomson', 8, 1),
(704, '', 'Vaqueiro misterioso', 'Maurício Melo Júnior', 8, 1),
(705, '9788508189984', 'Ana Z., aonde vai você?', 'Marina Colasanti', 0, 1),
(706, '', 'Cada macaco no seu galho', 'Gilberto Melo', 8, 1),
(707, '8585763345', 'O fascínio da caixa preta', 'Paulo Caldas', 0, 1),
(708, '9788502079618', 'Melhores dias virão', 'Giselda Laporta Nicolelis', 0, 1),
(709, '850202647x', 'Segredo de estado', 'Antonieta Dias de Moraes', 0, 1),
(710, '8516011070', 'Anjo da morte', 'Pedro Bandeira', 0, 1),
(711, '8536005637', '100 magias para guardar segredos', 'As bruxinhas witch', 8, 1),
(712, '8506041066', 'Sonho de uma noite de verão', 'William Shakespeare', 0, 1);
INSERT INTO `livro` (`id`, `codigo`, `titulo`, `autor`, `cdd`, `qtd`) VALUES
(713, '8574090735', 'Bumba na farra do boi', 'Gilberto Braga de Melo', 8, 6),
(714, '8585763280', 'A farra dos bonecos', 'Antonio Carlos do Espirito Santo', 8, 3),
(715, '8574090972', 'Parafuso: o gato telepata', 'José Roberto de Melo', 8, 3),
(716, '8516035417', 'O medo e a ternura', 'Pedro Bandeira', 0, 1),
(717, '', 'Historias para boi dormir', 'Antonio Carlos do Espirito Santo', 8, 3),
(718, '', 'Aracuco', 'Railda Ribeiro Martins', 8, 1),
(719, '8526225871', 'A cidade submersa', 'Martin Oliver', 0, 1),
(720, '8524911115', 'A cremalheira', 'Petruccio Araujo', 0, 1),
(721, '9788583921035', 'O misterioso baú do vovô', 'Marcia Kupstas', 8, 1),
(722, '8516008975', 'A corrente da vida', 'Walcyr Carrasco', 3, 1),
(723, '8574095842', 'Misteriosa cor', 'Tereza Halliday', 8, 3),
(724, '', 'No reino do papa-figo', 'Elita Ferreira', 0, 1),
(725, '850201501x', 'Dorotéia: Extensão SAC\r\n', 'Ricardo Gouveia', 8, 1),
(726, '8536005645', '100 magias para conquistar milhões de amigos', 'As bruxinhas witch', 8, 1),
(727, '9788571532878', 'Alice de A a Z', 'Adriano Messias', 8, 1),
(728, '', 'Com a boca na botija', 'José Teles', 8, 1),
(729, '850808075/1', 'A árvore que dava dinheiro', 'Domingos Pellegrini', 0, 4),
(730, '9788524921384', 'Sequestro em urbana', 'Severino Rodrigues', 0, 1),
(731, '8502033859', 'Um balão caindo perto de nós', 'Rizzatto Nunes', 0, 1),
(732, '9788502205703', 'O bonequeiro de sucata', 'Eliana Martins', 0, 1),
(733, '8526207156', 'Robin Hood: O salteador virtuoso', 'Joel Rufino dos Santos', 0, 1),
(734, '9788502082090', 'Furo de reportagem', 'Roberto Jenkins de Lemos', 0, 1),
(735, '', 'O ultimo par', 'Jéssica Florentino', 0, 1),
(736, '8532248349', 'Amor não tem cor', 'Giselda Laporta Nicolelis', 0, 1),
(737, '8516011844', 'Assombrassustos', 'Stella Carr', 0, 1),
(738, '', 'Não se esqueçam da rosa', 'Giselda Laporta Nicolelis', 0, 1),
(739, '8508082509', 'Do outro mundo', 'Ana Maria Machado', 0, 1),
(740, '8520912680', 'A casa da madrinha', 'Lygia Bonjuga', 0, 1),
(741, '857409659x', 'Tilico no meio da rua', 'Rubem Rocha Filho', 0, 3),
(742, '8516001180', 'Em carne viva', 'Maria da Gloria Cardia de Catro', 0, 1),
(743, '8526220748', 'Arrepiando a pele', 'Stella Carr', 0, 1),
(744, '9788524914973', 'Crisântemo amarelo', 'Sérsi Bardari', 0, 1),
(745, '8516014738', 'O medo e a ternura', 'Pedro Bandeira', 0, 11),
(746, '8526006169', 'O livro dar árvores', 'Ticuna', 0, 4),
(747, '9788560791972', 'Mistérios do mar oceano', 'Ana Maria Machado', 0, 2),
(748, '9788508090105', 'Rei Artur', 'Ana Maria Machado', 0, 1),
(749, '8508076959', 'O que fazer primeiro?', 'Luzia Faraco Ramos', 0, 1),
(750, '9788562403835', 'Foi na primavera', 'Angela Nanetti', 0, 1),
(751, '9788578480837', 'O baú do tio quim', 'Luiz Antonio Aguiar', 0, 1),
(752, '9788516079734', 'Os miseráveis', 'Victor Hugo', 0, 1),
(753, '9788575550885', 'Berenice detetive', 'João Carlos Marinho', 0, 1),
(754, '9788524919695', 'Corações, caras e beijos', 'Sandra Pina', 0, 1),
(755, '9788596002486', 'Fruta no ponto', 'Roseana Murray', 0, 1),
(756, '8526005685', 'O mistério da berinjela', 'Maria Heloisa Penteado', 0, 1),
(757, '9788560820665', 'Dez anos e nove meses', 'Fred Paranuzzi', 0, 1),
(758, '9788578480370', 'A vida sem graça de Charllynho Peruca', 'Gustavo Piqueira', 0, 1),
(759, '9788578480820', 'Eu e o silêncio do meu pai', 'Caio Riter', 0, 1),
(760, '9788516080365', 'A dama das camélias', 'Walcyr Carrasco', 0, 1),
(761, '9788581635040', 'A máquina de contar historias ', 'Maurício Gomyde', 8, 1),
(762, '9788532245984', 'Copo vazio ', 'Menalton Braff', 0, 1),
(763, '9788581840215', 'Se liga!', 'Edson Gabriel Garcia', 0, 2),
(764, '9788575553015', 'Zumbi', 'Joel Rufino dos Santos', 9, 2),
(765, '9788561521899', 'Traços e Tramas', 'Sonia Rosa', 0, 1),
(766, '9788535710243', 'O que é que eu posso fazer?', 'Tânia Alexandre Martinelli', 0, 1),
(767, '850401083x', 'O grito da Selva', 'Jack london', 0, 1),
(768, '9788534224734', 'Jacala, o crocodilo', 'Rudyardy Kipling', 0, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=769;
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bibliotecaeteavs\",\"table\":\"livro\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Extraindo dados da tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'bibliotecaeteavs', 'livro', '{\"sorted_col\":\"`id`  DESC\"}', '2023-02-13 14:37:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-10-30 12:13:21', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices para tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices para tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices para tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices para tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices para tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices para tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices para tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices para tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices para tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices para tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices para tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
