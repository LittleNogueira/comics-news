-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03-Abr-2017 às 05:13
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comicsnews`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `ID` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `autor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`ID`, `titulo`, `descricao`, `img`, `data`, `autor`) VALUES
(1, 'Destiny 1 ainda vai continuar mesmo com Destiny 2', 'Pensou que o Destiny original iria ser deixado de lado agora que a Bungie anunciou a continuação do game? Não completamente, ao menos. De acordo com a desenvolvedora, mesmo a chegada de Destiny 2 não quer dizer que o título original vai ser fechado e que ao menos “pelo futuro próximo” você poderá continuar se aventurando pelos mapas do jogo.\r\nEm uma conversa com o GamesRadar+ sobre a chegada de Age of Triumph, a última atualização para o primeiro Destiny, o gerente de comunidade da Bungie David Dague avisou que “Destiny 1 ainda é um jogo que vai estar aí para os jogadores” aí para quem quiser revisitar o título ou para jogadores de Destiny 2 que desejarem ver como tudo começou.\r\n“Nós estamos celebrando a conclusão da aventura de Destiny 1”, contou ele sobre Age of Triumph. “Nós planejamos dar suporte a ele pelo futuro próximo, então enquanto nós temos um senso de finalização e fechamento com o tema desse evento, nós não estamos de maneira alguma apagando as luzes de Destiny 1”, continuou ele.\r\nNós não estamos de maneira alguma apagando as luzes de Destiny 1\r\n\r\nDague ainda continua: “Se os jogadores decidirem, ao se moverem para novos mundos, experienciar novas aventuras e ouvirem novas histórias nesses lugares, se eles decidirem que eles querem revisitar as coisas que eles fizeram em Destiny 1, o jogo ainda vai estar lá para eles. E, para alguém que quiser se juntar na aventura em progresso, e eles podem querer voltar para o começo e descobrir como tudo isso começou? Essas histórias de origem vão estar esperando por eles.”\r\nLançado originalmente para PS3, PS4, Xbox 360 e Xbox One, Destiny foi um dos maiores títulos trazidos para o início dos novos consoles ainda em 2014. Já Destiny 2 chega apenas para os dois aparelhos mais nodos da Sony e da Microsoft, com previsão para estar disponível em setembro de 2017.', '20170402014120.jpg', '2017-04-02 05:41:20', 'Paulo Guilherme'),
(2, 'Rocket League terá atualização', 'Estamos cada vez mais próximos do lançamento de “Velozes e Furiosos 8” (que estreia no Brasil em 13 de abril). Logo, era de se esperar que algumas campanhas fossem feitas para promover o game, e uma delas vai acontecer dentro de Rocket League.\r\nDe acordo com as informações divulgadas pela produtora Psyonix, o game vai receber o DLC “The Fate of the Furious” em 4 de abril. Com ele, serão adicionados os carros Dodge Ice Charger, Clean Cut, Crazy Sandwich, Flames, Rakugaki e CCCXL para ampliar a sua garagem.', '20170402014654.jpg', '2017-04-02 05:46:54', 'Douglas Vieira'),
(3, 'Final Fantasy XIV vai virar série', 'Não, ainda não é 1ª de abril (mas falta pouco!): uma série japonesa que vai misturar live action com imagens do jogo vai colocar nas telinhas uma aventura que gira em torno de Final Fantasy XIV. Porém, não se trata de uma adaptação do game, mas sim de um drama no melhor estilo novela que vai ter o jogo quase como protagonista.\r\n“Final Fantasy XIV: Daddy of Light” (um título estranhíssimo que pode ser traduzido para algo como “Papai da Luz”) vai contar a história do relacionamento entre pai e filho. Ao iniciar uma aventura em Final Fantasy XIV, o pai começa a ser ajudado no jogo por seu próprio filho por meio da internet, mas sem descobrir sua identidade. O relacionamento dos dois através do jogo passa a afetar a vida real e tudo isso é registrado pelo filho em seu blog pessoal.\r\nMeio maluco, não é? Pois é, e eu garanto para vocês que não se trata de uma notícia de 1º de abril. “Final Fantasy XIV: Daddy of Light” estreia mês que vem na Netflix do Japão e deve chegar ao resto do mundo no último trimestre de 2017.', '20170402015009.jpg', '2017-04-02 05:50:09', 'Rafael Farinaccio'),
(4, 'Zelda: Breath of the Wild ganha patch para melhorar taxa de frames', 'Não temos dúvidas de que aqueles que tiveram a oportunidade de colocar as mãos em um Switch aproveitaram para embarcar na aventura proposta por The Legend of Zelda: Breath of the Wild. Entretanto, talvez alguns tenham encontrado problemas para curtir o game quando ele está no dock, algo que mudou com o lançamento de uma atualização.\r\nDe acordo com as informações divulgadas, os arquivos em questão visam corrigir a taxa de quadros por segundo do jogo no modo citado acima. Além disso, ela traz algumas melhorias para deixar a experiência ao lado de Link ainda melhor.', '20170402015313.jpg', '2017-04-02 05:53:13', 'Douglas Vieira'),
(5, 'Superman mata o coringa', 'Diferente de outros grandes super-heróis, Batman é um ser humano “normal”, que por conta de ter presenciado o assassinato de seus pais, em uma situação de assalto, faz um juramento, devotando sua vida para que essa cena não se repetisse mais, justamente por isso ele é contra matar qualquer pessoa. em Insjutice Superman mata o Coringa o que causa o rompimento entre ele o Batman.\r\n\r\nNo quadrinho prólogo de Injustice: Gods Among Us, o Coringa se cansa de Gotham e decide brincar em Metropolis por uns tempos. O Palhaço droga o Superman com uma dose particularmente potente do Gás do Medo do Espantalho, fazendo o kryptoniano acreditar que Apocalypse está atacando sua amada Lois Lane e seu filho ainda na barriga dela. Furioso, Superman agarra e voa com o monstro pra longe no espaço.\r\n\r\nPra então descobrir que Apocalypse era, na verdade, Lois, morta por ter sido levada até o espaço pelo Superman. Mas isso não é tudo. O Coringa também havia equipado o coração de Lois com um dispositivo sincronizador ligado a um explosivo, explodindo Metropolis após a morte da donzela, tudo em uma só cajadada. Ainda mais furioso, Superman assassina o Coringa num acesso de raiva, provocando o começo de Injustice.\r\n\r\nEmbora muito morto – o que não o impediu de aparecer como um personagem jogável no game – o Coringa tinha conseguido matar Lois Lane, destruir Metropolis, abalar os fundamentos morais do Superman e por os seres mais poderosos do Universo uns contra os outros. E mais uma vez sua risada ecoa além da sua morte.', '20170402015716.jpg', '2017-04-02 05:57:16', 'Vivian Leone'),
(7, 'Conheça a história do maior velocista da DC Comics', 'The Flash é um dos personagens mais famosos do mundo. Seu nome se tornou até sinônimo de “velocidade” ou “fazer as coisas rapidamente”. Maior velocista da editora DC Comics, que também publica Superman e Batman, o Flash já estrelou várias outras mídias além das HQs, como a TV e os desenhos animados. Embora falte ainda o cinema, o velocista escarlate logo estará de volta às telinhas: Barry Allen já apareceu e, em breve, se transformará no Flash em Arrow, a série de TV que  adapta o herói Arqueiro Verde da DC Comics, exibida pelo canal The CW, pertencente ao conglomerado Warner Bros.\r\n\r\nAproveitando a reintrodução do personagem ao grande público, já que em seguida o herói ganhará sua própria série de TV, em 2014, o HQRock traz a trajetória cronológica e editorial do maior de todos os velocistas dos quadrinhos: The Flash.\r\n\r\nPor isso, se banhe de produtos químicos turbinados por um relâmpago, vista-se de vermelho, vibre na Força de Aceleração e atinja a velocidade da luz para ler este post imediatamente!\r\n\r\nDuas Versões. Ou Mais…\r\n\r\nVários Flashes...\r\nVários Flashes…\r\n\r\nEm primeiro lugar, é preciso dizer – para o público não iniciado nos quadrinhos – que o Flash, assim como vários outros heróis da DC Comics (Lanterna Verde é outro), já teve várias versões diferentes, com nomes, uniformes e histórias distintas. Mas unidos por um legado comum.\r\n\r\nA versão mais famosa do Flash é Barry Allen, um policial forense que vive em Central City, tal qual o personagem introduzido em Arrow. Porém, existem vários outros a usar esse nome: o primeiro foi Jay Garrick (criado em 1940), Allen foi o segundo; veio o terceiro, Wally West (em 1959); Bart Allen (em 1994); a lista prosseguiu indefinitivamente.\r\n\r\nContudo, apesar de cada uma das outras versões do Flash ter feito sucesso de público em algum momento, Barry Allen é o detentor oficial do título e, apesar ter sido dado como morto por mais de duas décadas (entre 1986 e 2009), está de volta e mantém o posto firme.', '20170402020616.jpg', '2017-04-02 06:06:16', 'Irapuan Peixoto'),
(8, 'Asphalt 8: Airborne', 'Asphalt 8: Airborne lançado em 22 de agosto de 2013 para dispositivos iOS e Android. A jogabilidade de asphalt 8 é excelente semelhante ao de Asphalt 7: Heat agora com o foco principal do jogo é em ‘saltos’ com todas as faixas com muito mais rampas do que os jogos anteriores, bem como rampas especiais permitindo rolos barril ea capacidade de rotação plana, sendo que ambos ganham impulso.\r\n\r\nBoost é ligeiramente alterada em que os jogadores têm a chance de obter um “impulso Perfeito”, impulsionando, em seguida, aumentar novamente na seção vermelha da barra de boost. Isto concede-lhes o nível de impulso máximo instantaneamente até seu impulso se esgota, eles freio ou acidente. O jogo também apresenta um modelo de danos. Carros que são tomadas para baixo pode ter painéis e portas retirado.\r\n\r\nAsphalt 8 é o primeiro jogo da série a apresentar uma trilha sonora licenciada. No jogo, há três estações, com base em diferentes gêneros musicais. Baixo foca bass-heavy da música eletrônica. Eletrônica se concentra em outros gêneros eletrônicos. e na música rock.\r\n\r\nO jogo teve uma crítica muito positíva Airborne tem uma classificação de 93% no Metacritic.', '20170402021136.jpg', '2017-04-02 06:11:36', 'Pedro Armindo'),
(10, 'Fez', 'FEZ é um jogo eletrônico de quebra-cabeça em plataforma desenvolvido pela desenvolvedora independente Polytron Corporation. O jogo foi anunciado inicialmente pelo seu criador, Phil Fish na TIGSource.com em 17 de julho de 2007. Mais tarde foi anunciado que o jogo estaria disponível através da Xbox Live Arcade no início de 2010 porém, foi adiado. O jogo foi lançado em 13 de abril de 2012 para a Xbox Live Arcade.Outras plataformas estão considerando seu lançamento em 2013.Phil Fish e o estágio final de desenvolvimento de FEZ figuram no filme Indie Game: The Movie. Phill confirmou que o jogo será lançado para a plataforma Windows pelo Steam no dia 1 de Maio de 2013, o jogo também vai ser portado para MacOSX e Linux, as datas ainda não foram citadas. Atualmente, Phill está conversando com a Sony para lançar o jogo para a plataforma PlayStation 3 e PSVita pela PlayStation Network. Segundo ele mesmo, o jogo não será lançado para Nintendo 3DS.\r\nNo jogo, a trama gira em torno de Gomez, um personagem bidimensional que vive em um mundo 2D plano, certo dia, Gomez encontra um misterioso cubo chamado \"Hexahedron\" e logo em seguida Gomez recebe um chapéu Fez no qual lhe permite ver um mundo tridimensional a sua volta. Assim que Gomez começa a explorar sua nova habilidade, o hexaedro de repente divide em 64 pedaços e explode, criando uma falha ao redor de seu mundo (e reinicie como um computador antigo). Depois do jogo reiniciar, Gomez acorda e descobre que ele agora pode explorar o seu mundo em três dimensões. Em seguida, um hipercubo flutuante explica que ele tem de recolher os fragmentos do Hexahedron, que foram espalhados por todo o mundo, antes que o mundo seja dividido.', '20170402022658.jpg', '2017-04-02 06:26:58', 'Wikipédia'),
(11, 'Ruby', 'Para quem envereda pelo caminho da programação é importante responder à pergunta “que linguagens estudar?”. E a compensação financeira correspondente à fluência em cada linguagem é certamente um fator condicionante dessa escolha. Eis então a informação que precisa.\r\n\r\nSe quiser provocar uma discussão entre um grupo de programadores informáticos, peça-lhes para que escolham a linguagem de programação que preferem.\r\n\r\nMas para tornar o debate mais fervoroso escolha um ambiente em que os engenheiros têm decidir qual a linguagem mais lucrativa.\r\n\r\nO assunto inspirou a produção de dezenas de ensaios, nos quais se analisa o mérito das linguagens C, Javascript, Python, e Ruby.\r\n\r\nOlhámos para os dados compilados pela Burning Glass pelo economista Jonathan Rothwell da Brookings Institution publicados em Julho, extraídos de centenas de anúncios de emprego. E ao separar as ofertas de trabalho por linguagem de programação a partir de uma lista mais ampla de capacidades tecnológicas podemos olhar um pouco mais em frente.\r\n\r\nO conjunto de dados não é perfeito, não contempla linguagens novas muito populares como a Erlang e a Haskell, provavelmente porque as ofertas de trabalho não estão sempre a ser atualizadas. A grande maioria dos anúncios publicados não fazia menção ao salário. Mas o gráfico mais abaixo dá uma ideia de quanto os empregadores estão a oferecer para cada tipo de linguagem.\r\nApesar de haver uma linguagem com uma elevada procura, como por exemplo a Ruby, que até possivelmente lhe dará uma compensação mais elevada, não significa que investir nela seja a melhor maneira de construir a sua carreira. Isso porque a linguagem pode entrar em desuso com o passar do tempo. O ideal será manter-se focado em ser bom em tudo o que o rodeia, ter uma compreensão consistente de algoritmos, em princípios de design, e a capacidade de aprender rapidamente novas linguagens. Outros acentuam a importância de começar por exemplo com a C ou CC++, linguagens que à partida não estão muito presentes no seu dia-a-dia, mas que o ajudarão, certamente a compreender outras linguagens mais facilmente, assim como a entender melhor as estruturas que estão por de trás dos sistemas.', '20170402023130.jpg', '2017-04-02 06:31:30', '<a href=\"https://pt.insider.pro\" target=\"_blank\">insider.pro</a>'),
(12, 'Motivos para usar Node.js', 'JavaScript everywhere: Com Node.js você vai trabalhar com JavaScript no server-side utilizando o runtime Google V8. Com isso você reduz e muito a curva de aprendizado, afinal será a mesma linguagem JavaScript do client-side, e nisso você vai manter um projeto fácil de dar manutenção (É claro! Desde que saiba JavaScript de verdade), vai achar profissionais rapidamente para colaborar em seus projetos, e vai gastar menos tempo estudando uma nova linguagem server-side para criar uma aplicação. Outra vantagem disso é que você não vai utilizar mais aqueles frameworks para serialização / deserialização de objetos JSON, afinal o JSON client-side é o mesmo JSON server-side, há também casos de aplicações usando banco de dados orientado a documentos (por exemplo: MongoDB ou CouchDB) e neste caso toda manipulação de dados é realizada através de objetos JSON também.\r\nNon-Blocking IO: O Node.js trabalha com o modelo de IO não-bloqueante, ou seja, nenhuma tarefas pesadas de IO vai travar sua aplicação, pois elas serão executadas em background sem bloquear a aplicação e quando elas finalizarem você trata os resultados através dos callbacks das funções. Em uma aplicação de muita leitura de arquivos, o Node.js vai se destacar melhor nisso, pois vai ler os arquivos de forma assíncrona enquanto os demais processos da aplicação continuam rodando. Alguns exemplos práticos que geralmente travam aplicação são: manipulação de arquivos pesados, envio de emails e leitura de base de dados. Com IO não-bloqueante do Node.js essas tarefas são facilmente executadas em background e o retorno de sucesso ou falha dessas tarefas ocorrem através de uma função de callback.\r\nComunidade Ativa: Esse é um dos pontos mais fortes do Node.js. Existem várias comunidades no mundo inteiro trabalhando muito para popularizar o Node.js, seja divulgando posts e tutoriais, palestrando novidades e principalmente publicando e mantendo +70000 módulos no site NPM (Node Package Manager). Aqui no Brasil temos dois grupos bem ativos: Google Groups NodeBR e Facebook Node.js Brasil.\r\nÓtimos salários: Os desenvolvedores de Node.js, geralmente recebem bons salários, isso ocorre pelo fato de que infelizmente no Brasil ainda existem poucas empresas adotando essa tecnologia. Isso faz com que empresas que necessitem dessa tecnologia paguem salários na média ou acima da média para manterem desenvolvedores que dominem Node.js, principalmente boas práticas JavaScript. Outro caso interessante também são as empresas que contratam estagiários e juniors que tenham ao menos conhecimentos básicos de JavaScript, com o objetivo de treiná-los para trabalhar com Node.js, neste caso não espere um alto salário e sim um amplo conhecimento preenchendo o seu currículo.\r\nReady for real-time: O Node.js ficou popular graças aos seus frameworks que interagem em real-time entre cliente e servidor. SockJS, Socket.IO, Engine.IO são alguns exemplos disso. Eles são compatíveis com o novo protocolo WebSockets e permitem trafegar dados através de uma única conexão bi-direcional, tratando as mensagens via eventos no JavaScript.\r\nBig players usando: LinkedIn, Wallmart, Groupon, Microsoft e Paypal são algumas das empresas usando Node.js atualmente, e tem mais um monte de outras empresas e aplicações neste link.', '20170402025356.jpg', '2017-04-02 06:53:56', 'udgwebdev.com'),
(13, 'Computador quântico: quanto custa e o que você pode fazer com ele?', 'Não é de hoje que falamos sobre o futuro da computação. Quando esse é o tema da pauta, o primeiro ponto que abordamos é a tal da computação quântica.\r\nA história você já conhece bem: computadores que trabalham com bits especiais, os quais podem garantir um nível de desempenho inigualável — vai ser como ter um computador da NASA em casa.\r\nAcontece que o papo já vem sendo abordado faz tempo e até agora nada de sair do papel. Além disso, muito se diz que a computação vai dar um salto gigantesco, mas nada se comenta sobre as reais aplicações dos computadores quânticos.\r\nÉ justamente por essa falta de divulgação dos resultados na área que resolvemos correr atrás do assunto para trazer até você as novidades e os principais detalhes sobre o futuro da computação. Afinal, quanto vai custar uma máquina dessas? Vou poder abrir o Photoshop em apenas 1 segundo? Roda Crysis? Isso e muito mais é o que veremos.\r\nÉ possível que você não faça ideia do que acontece no interior do seu PC quando você aperta o botão de energia. A verdade é que diversos componentes de hardware são responsáveis para fazer a mágica acontecer. Talvez, o mais importante seja o processador. Dentro do cérebro do PC, há uma infinidade de pequenas pecinhas conhecidas como transistores.\r\nEsses dispositivos eletrônicos têm dois estados de funcionamento: ligado (1) ou desligado (0). Para conversar com o hardware, o software utiliza uma linguagem semelhante que chamamos de dígitos binários (os tais dos bits). Tais instruções se comportam de forma parecida, podendo assumir valores “0” ou “1”.\r\nAssim, se pensarmos num dado qualquer de apenas dois dígitos, podemos concluir que esse dado pode assumir quatro valores diferentes: 00, 01, 10 e 11. Combinações desse tipo são válidas para dados de mais dígitos, portanto a lógica é relativamente simples.\r\nNo caso da computação quântica, o grande segredo, na verdade, não é nem esse esquema dos números, mas a forma como um computador quântico trabalha. Há uma série de elementos da Física que podem ser usados como bits quânticos (que recebem o nome de qubits ), como um fóton, o núcleo de um átomo ou até um elétron.\r\nEssas pequenas partículas se comportam de forma semelhante aos bits, mas há diferenças. Os qubits podem assumir três valores distintos: 0 ou 1 ou 0 e 1 simultaneamente. Essa posição de dois valores é chamada de superposição.\r\nAcontece que, para funcionar devidamente, a computação quântica precisa de pares de bits. Basicamente, as configurações de qubits podem ser as seguintes: 00, 11, 01(bit1) + 10(bit2) e 01(bit1) - 10(bit2). Isso é apenas uma ideia básica, pois os elétrons e demais  partículas não têm comportamento tão comum e podem assumir uma infinidade de valores parciais.\r\nAs contas não são tão simples e vão muito além de soma e subtração. O que importa, na verdade, é entender o básico. Os bits quânticos funcionam com coeficiente 2 e o número de bits é o expoente da conta — já explicamos isso anteriormente. Resumindo: um par de qubit é a representação de 4 bits, um trio de qubit equivale a 8 bits comuns e assim por diante.\r\nBom, como você já deve ter pegado a ideia, não precisamos entrar em muitos detalhes. A computação quântica basicamente faz milagre com os bits, o que torna os cálculos muito mais ágeis. A grande diferença, contudo, é que os qubits não se comportam de forma idêntica aos bits. Eles são específicos para cálculos quânticos (óbvio, não?) e tarefas bem difíceis.\r\nConforme o texto do Business Insider, uma máquina de 30 qubits é tão poderosa quanto um computador “comum” com capacidade de processamento de 10 teraflops — são 10 trilhões de cálculos por segundo. Um PC doméstico chega aos 7 gigaflops, o que dá mais ou menos 7 bilhões de cálculos por segundo. Realmente, há uma enorme diferença.\r\nA verdade é que a propaganda que tanto fazem da computação quântica não é tão lógica. Estas máquinas revolucionárias não servirão como substitutas do PC comum. Segundo a afirmação do Prof. Andrea Morello, da Universidade de New South Wales, os processadores quânticos não são sempre mais rápidos.', '20170402030247.jpg', '2017-04-02 07:02:47', 'Fabia Jordão'),
(14, 'Google vence Oracle em julgamento de US$ 9 bilhões envolvendo Android', 'Um tribunal dos Estados Unidos deu ao Google uma importante vitória em uma longa disputa sobre direito autoral travada contra a Oracle em torno do sistema operacional Android.\r\nO tribunal decidiu de maneira unânime que o uso pelo Google da plataforma de desenvolvimento Java, detida pela Oracle, para criar o Android é protegido sob a cláusula de uso justo, prevista pela legislação de direito autoral. A Oracle pedia do Google indenização de US$ 9 bilhões.\r\nA Oracle afirmou que viu muitas brechas na decisão para apelar e que vai fazer isso. \"Acreditamos fortemente que o Google desenvolveu o Android ao ilegalmente copiar a tecnologia central Java para ingressar no mercado de dispositivos móveis\", afirmou o defensor da Oracle, Dorian Daley, em comunicado.\r\nJá o Google afirmou em comunicado que a decisão é \"uma vitória para o ecossistema Android, para a comunidade de programadores Java e para desenvolvedores de software que dependem de linguagens de programação abertas e livres para criarem produtos inovadores\".', '20170402031054.jpg', '2017-04-02 07:10:54', 'G1'),
(16, 'Android Nougat, nova versão do sistema, começa a ser liberada', 'O Android Nougat, nova versão do sistema operacional do Google para smartphones e tablets, começou a ser liberado nesta segunda-feira (28) para dispositivos Nexus – linha de aparelhos desenvolvida em parceria com o próprio Google.\r\nAo longo das próximas semanas, a atualização irá chegar para os modelos Nexus 6, Nexus 5X, Nexus 6P, Nexus 9, Nexus Player, Pixel C e General Mobile 4G (Android One). Aparelhos inscritos no programa de testes \"beta\" do Android também serão contemplados.\r\nTradicionalmente, o Google seleciona uma guloseima para nomear as novas versões do seu sistema. Durante consulta pública aberta receber sugestões, os internautas indicavam que gostariam que Nutella fosse o nome escolhido. Mas o creme de avelã perdeu para o nogado, um confeito feito de açúcar, mel, castanha assada e claras em neve. Às vezes, pode conter frutas cristalizadas.\r\nApresentado em maio, o Android Nougat tem recursos poderosos para games, uma nova plataforma de realidade virtual e ferramentas para exibir conteúdo sem precisar sair dos aplicativos. Veja abaixo todos os detalhes\r\n\r\nRealidade Virtual\r\nO Android N terá um modo próprio para exibir conteúdos em realidade virtual. Para isso, o Google criou a Daydream, uma plataforma para melhorar os aplicativos que exibam vídeos com essa experiência imersiva, de modo que possam rodar em smartphones sem problemas.\r\nO Daydream também funciona como um ecossistema em que os usuários podem encontrar conteúdo de outras empresas, próprios para serem consumidos em realidade virtual. Funciona assim: por meio de um óculos, o indivíduo acessa o “mundo” de Daydream, onde encontra vídeos e outros conteúdos que podem ser vistos como se estivesse dentro da cena.\r\nQuando acessar o Google Street View dentro do Daydream, por exemplo, os usuários poderão olhar para os lados a fim de expandir o campo de visão.\r\nO Google anunciou que já aderiram a essa plataforma “Wall Street Journal”, “New York Times”, “USA Today”, CNN, HBO, Netflix, NBA, Hulu, Electronic Arts e Ubisoft. Do lado dos fabricantes de celulares, já se tornaram parceiros Samsung, HTC, LG, Huawei, ZTE, Asus, Alcatel e Xiaomi.\r\nAndroid Instant Apps\r\nOutra novidade não revelada antes é o Android Instant Apps, que vai abrir conteúdos de serviços conectados dentro dos aplicativos próprios, mesmo não estejam instalados no smartphones.\r\nPor exemplo: alguém usa um app de mensagem para envia o link de um vídeo do “Buzzfeed”; ao clicar na URL, o usuário é direcionado pelo Android para a área do app do “Buzzfeed” na Google Play, que exibe o vídeo ali mesmo.\r\nA mudança é simples, mas, com ela, o Google passa a preferir que os conteúdos sejam exibidos dentro de aplicativos a que sejam mostrados em páginas na internet.\r\n\r\nMultijanelas e multitarefas\r\nA função de multi-janelas permite abrir dois aplicativos simultaneamente em uma única tela de smartphone ou tablet. Além de usar os dois programas ao mesmo tempo, é possível redefinir o tamanho de cada lado. Alguns smartphones da Samsung, que versões modificadas do Android, já apresentam essa função.\r\nNotificações\r\nO Android N traz melhorias na aba de notificações. Ao receber um aviso de mensagem do WhatsApp, por exemplo, os usuários poderão respondê-la diretamente por lá, sem precisar abrir o aplicativo.\r\nO painel de notificações também foi repaginado. Os avisos de um mesmo aplicativo serão agrupados em uma linha e só serão exibidos um a um quando o usuário passar o dedo pela seleção e deslizá-la para baixo.\r\n\r\nBateria e dados\r\nO novo Android ganha ainda melhorias no Doze, o recurso que identifica quando o smartphone não está sendo usado para economizar bateria. Até agora, o Doze funcionava só quando o aparelho estava em repouso, mas começará a funcionar todas as vezes em que a tela apagar. Outra nova função ajudará a poupar o consumo de dados\r\nAtalhos\r\nOutra novidade é a chegada aos smartphones de uma ferramenta comum em computadores de mesa e notebooks. Os usuários poderão criar atalhos na tela inicial que levem a funções específicas de dentro dos aplicativos. Para exemplificar, o Google deu alguns exemplos da novidade na prática: enviar uma mensagem para um contato frequente; acessar o mapa de um determinado local ou; assistir ao próximo episódio de um serviço conectado. Tudo isso sem ter de navegar por todo aplicativo.\r\nNovos emojis\r\nOs emojis terão a parte gráfica alterada. As imagens animadas serão modificadas para se tornar menos genéricas e ter “aparência mais humana”. Além disso, as variações de tons de peles valerão para todos os emojis que representem humanos, como as representações de policial e garçom – antes, valiam apenas para os emojis de carinhas. Também haverá novas inclusão, como ícones de selfie, malabarismo, acrobacia e bacon.\r\nGames\r\nA boa notícia para quem gosta de jogar games no celular é que o Android N terá integração com a plataforma Vulkan API. Esse conjunto de ferramentas para gráficos 3D permite aos desenvolvedores de jogos controlar melhor como o processamento de imagens ocorre em smartphones e tablets. Com isso, o desempenho melhora, e os games engasgam menos. Esse recurso já é usado por alguns celulares que rodam Android, como Galaxy S7 e S7 edge, da Samsung.', '20170402034656.jpg', '2017-04-02 07:46:56', 'G1'),
(17, 'Microsoft: Xamarin será de graça para todo mundo no Visual Studio', 'Windows 10 com suporte ao Bash, Cortana ainda mais esperta, inteligência artificial aprimorando a acessibilidade para cegos, enfim, no primeiro dia da conferência Build 2016 a Microsoft trouxe uma overdose de novidades. Mas também sobrou anúncios importantes para hoje (31), o segundo dia. Um deles interessa diretamente ao público-alvo do evento, os desenvolvedores: a plataforma Xamarin agora é gratuita para todos os usuários do Visual Studio.\r\n\r\nComo empresa, a Xamarin surgiu em 2011 pelas mãos de um grupo de desenvolvedores (com destaque para Miguel de Icaza) envolvidos com o Mono, projeto de código aberto criado para viabilizar um conjunto de ferramentas compatível com a plataforma .NET que pode ser executado em diversos sistemas operacionais, como Linux, OS X, BSD e Windows.\r\n\r\nNo atual estágio, a Xamarin como plataforma oferece vários recursos que facilitam o desenvolvimento de aplicativos para Android, iOS (ainda que a criação de apps para esse sistema exija um Mac) e Windows a partir da linguagem C#, do .NET Framework e por aí vai.\r\n\r\nPor conta da robustez e praticidade da plataforma, a Microsoft vinha flertando com a Xamarin há algum tempo. Na tentativa de simplificar o desenvolvimento de soluções envolvendo seus produtos, a companhia chegou inclusive a integrar a plataforma ao Office 365 e ao Microsoft Azure, por exemplo.\r\n\r\nEssa parceria fez a turma de Satya Nadella anunciar no mês passado a aquisição da Xamarin por um valor não revelado, mas que foi estimado entre US$ 400 milhões e US$ 500 milhões.\r\n\r\nA notícia da aquisição trouxe logo em seguida uma expectativa: a de que a Microsoft colocasse a plataforma Xamarin como uma ferramenta padrão do Visual Studio. Basicamente, é isso o que vai acontecer a partir de agora: a Xamarin estará disponível em todas as edições do Visual Studio, da versão Community até a Enterprise, sem custo adicional.\r\n\r\nTem mais: também está nos planos da Microsoft disponibilizar o código-fonte do Xamarin SDK abertamente (sob licença MIT). Esse trabalho deve levar algum tempo, mas quando a liberação for concluída, bibliotecas, ferramentas de compilação e afins estarão disponíveis no GitHub e, como esperado, na .NET Foundation, iniciativa que a Microsoft montou há dois anos para promover software de código aberto.\r\n\r\nÉ verdade que a administração de Satya Nadella vem dando umas escorregadas bem feias ultimamente, mas não deve ser o caso aqui: a plataforma Xamarin sempre foi apreciada, mas os seus custos de licenciamento afastavam pequenas empresas ou desenvolvedores individuais interessados em criar aplicações profissionais. São bem grandes as chances de que isso mude daqui para frente.', '20170402035121.jpg', '2017-04-02 07:51:21', 'Emerson Alecrim');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `noticia`
--
ALTER TABLE `noticia`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
