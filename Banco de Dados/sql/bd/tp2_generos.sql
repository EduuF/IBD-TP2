-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tp2
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `id_genero` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` longtext,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Ação','Um filme de ação ou acção é um gênero de filme que geralmente envolve uma história de protagonistas do bem contra antagonistas do mal, que resolvem suas disputas com o uso de força física. Os filmes de ação têm como histórias o crime, os westerns e a guerra entre outros. Geralmente são superproduções, com high concept (conceito alto), abusando de efeitos especiais. A maioria dos filmes de ficção científica e policiais também são filmes de ação.'),(2,'Aventura','O filme de aventura é um gênero cinematográfico que reflete um mundo heróico de combates e aventuras. Foi inventado na Itália, como meio de exaltação de seu passado histórico e, posteriormente, foi usada pela Rússia, para exaltar a Revolução Russa.'),(3,'Animação','Animação refere-se ao processo segundo o qual cada fotograma de um filme é produzido individualmente, podendo ser gerado quer por computação gráfica quer fotografando uma imagem desenhada quer repetidamente fazendo-se pequenas mudanças a um modelo fotografando o resultado. Quando os fotogramas são ligados entre si e o filme resultante é visto a uma velocidade de 16 ou mais imagens por segundo, há uma ilusão de movimento contínuo (por causa da persistência de visão). A construção de um filme torna-se assim um trabalho muito intensivo e por vezes entediante. O desenvolvimento da animação digital aumentou muito a velocidade do processo, eliminando tarefas mecânicas e repetitivas.'),(4,'Comédia','A comédia é o uso de humor nas artes cênicas. Também pode significar um espetáculo que recorre intensivamente ao humor. De forma geral, \'comédia\' é o que é engraçado, que faz rir.'),(5,'Infantil','Filme dedicado ao público infantil.'),(6,'Crime','Os filmes de crime, no sentido mais amplo, são um gênero cinematográfico inspirado e análogo ao gênero literário de ficção criminal. Filmes desse gênero geralmente envolvem vários aspectos do crime e sua detecção. Estilisticamente, o gênero pode se sobrepor e combinar com muitos outros gêneros, como drama ou filme de gangster, mas também inclui comédia e, por sua vez, é dividido em muitos subgêneros, como mistério, suspense ou noir.'),(7,'Documentary','Documentário é um gênero cinematográfico que se caracteriza pelo compromisso com a exploração da realidade. Mas dessa afirmação não se deve deduzir que ele represente a realidade – tal como ela é -. O documentário, assim como o cinema de ficção, é uma representação parcial e subjetiva da realidade.'),(8,'Drama','Tragédia é uma forma de drama, que se caracteriza por sua seriedade e dignidade, freqüentemente envolvendo um conflito entre um personagem e algum poder de instância maior, como a lei, os deuses, o destino ou a sociedade. Já o Drama, tem um tom menos pesado que a tragédia, onde o cômico pode se misturar ao trágico.'),(9,'Fantasia','Fantasia é um gênero de arte que usa a magia e outras formas sobrenaturais como o elemento principal/primário de uma história, Este gênero é geralmente distinguido de Ficção Científica e horror pelo aspecto geral, atmosfera e pelos temas de cada autor individual, embora haja uma grande sobreposição entre os três (conhecidos no seu conjunto por Ficção especulativa). De modo geral, o termo fantasia cobre trabalhos de escritores, artistas e músicos, desde mitos e lendas até obras mais recentes, conhecidas por uma vasta audiência.'),(10,'Film-Noir','Film noir (pronúncia em francês: ​[film nwaʁ]; em português, \'filme negro\') é uma expressão francesa designada a um subgênero de filme policial, o qual teve o seu ápice nos Estados Unidos entre os anos 1939 e 1950.'),(11,'Terror','O gênero ficcional do terror ou horror existe em qualquer meio de comunicação em que se pretenda provocar a sensação de medo. Desde a década de 1960 que quaisquer obras de ficção com um tema mórbido ou repelente são conhecidas do público como um gênero à parte, com grupos de fãs muito específicos que rendem cultos a subgêneros ou a determinados filmes e literatura a eles associada. Este gênero está intimamente ligado à ficção fantástica e à ficção científica. O medo é a fonte dos filmes de terror. Alguns especulam ser um dos sentimentos que mais faz as pessoas se sentirem, vivo e livre.'),(12,'IMAX','Imagem Maximum (IMAX) é um formato de filme criado pela empresa canadense IMAX Corporation que tem a capacidade de mostrar imagens muito maiores em tamanho e resolução do que os sistemas convencionais de exibição de filmes. Uma tela padrão IMAX tem 22 metros (72 pés) de largura e 16,1 metros (52,8 pés) de altura, mas podem ser maiores. Em 2008, IMAX tornou-se o sistema mais largamente usado para formatos-grandes e apresentações especiais de filmes. Em Março de 2007, havia 280 cinemas IMAX em 39 países (60% deles localizados no Canada e Estados Unidos). Metade desses cinemas é comercial e metade é educacional. Em setembro de 2014 o total de salas IMAX nos EUA ultrapassou a marca de 400.'),(13,'Musical','Filme musical é um estilo de filme, no qual a narrativa se apoia sobre uma sequência de músicas coreografadas, utilizando música, canções e coreografia como narrativa predominante ou exclusivamente. O filme musical não é tanto um gênero e sim forma, ou na língua inglesa, gênero de estilo, como documentários, curtas e etc, embora ambos sejam o tempo todo confundidos e aja controvérsia. Um musical significa apenas que os personagens cantam, não tem um gênero específico, pode muito bem ser uma comédia, drama, fantasia, terror e etc.'),(14,'Mistério','Filme de mistério é um gênero cinematográfico que gira em torno da solução de um problema ou de um crime. Ele se concentra nos esforços do detetive, investigador particular ou detetive amador para resolver as misteriosas circunstâncias de um problema por meio de pistas, investigações e dedução inteligente.'),(15,'Romance','Os filmes do gênero romance podem ser definidos como aqueles cujo enredo se desenvolve em torno do envolvimento amoroso entre os protagonistas. Um dos pré-requisitos do gênero é de que o filme tenha um \'final feliz\'; contudo, alguns filmes com final triste também podem ser considerados filmes do gênero romântico. São os chamados \'star-crossed lovers\', os amantes que não conseguem ficar juntos no final do filme, como é o caso de Romeu e Julieta, Titanic e Brokeback Mountain. Alguns dos clichês do gênero são o \'amor verdadeiro\', que se sobrepõe a todos os obstáculos, e o \'par perfeito\' (que é geralmente mais presente nas comédias românticas).'),(16,'Ficção Científica','Ficção científica é uma forma de ficção desenvolvida no século XIX, que lida principalmente com o impacto da ciência, tanto verdadeira como imaginada, sobre a sociedade ou os indivíduos. O termo é usado, de forma mais geral, para definir qualquer fantasia literária que inclua o fator ciência como componente essencial, e num sentido ainda mais geral, para referenciar qualquer tipo de fantasia literária.'),(17,'Suspense','Suspense é como é chamado um momento no qual predomina um sentimento de apreensão. Também é o recurso de narrativa (em ficção, não-ficção ou outro texto qualquer) que busca provocar esse sentimento no leitor ou espectador. Por extensão, em Literatura e Cinema, o termo suspense passou a designar um gênero de livros e filmes que têm como característica o uso sistemático deste recurso para a criação de cenas que têm por objetivo pregar sustos ou medo no espectador.'),(18,'Guerra','Como o próprio nome já diz, este gênero relata Guerras, dependendo do filme, a história é relatada totalmente sem cortes, ou seja, mostra todas as cenas violentas e fortes, que são normais em uma guerra e já outros visam contar somente a história e não foca a guerra em si.'),(19,'Faroeste','O chamado cinema western, também popularizado sob os termos \'filmes de cowboys\' ou \'filmes de faroeste\', compõe um género clássico do cinema norte-americano (ainda que outros países tenham produzido westerns, como aconteceu em Itália, com os seus western spaghetti). O termo inglês western significa \'ocidental\' e refere-se à fronteira do Oeste norte-americano durante a colonização. Esta região era também chamada de far west – e é daqui que provém o termo usado no Brasil, faroeste (também se usou o termo juvenil bang-bang, na promoção das antigas matinês e de quadrinhos). Os westerns podem ser quaisquer formas de arte que representem, de forma romanceada, acontecimentos desta época e região.');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-19  1:01:40
