-- 10 CONSULTAS OBRIGATORIAS
-- 2 consultas envolvendo as operações de seleção e projeção
SELECT titulo_filme, ano_lancamento FROM filmes ORDER BY ano_lancamento DESC, titulo_filme ASC;
SELECT nome_genero FROM generos ORDER BY nome_genero ASC;
-- 3 consultas envolvendo a junção de duas relações
SELECT DISTINCT(titulo_filme), ano_lancamento FROM palavras_chave NATURAL JOIN filmes WHERE palavra_chave_texto LIKE '%comedy%' ORDER BY ano_lancamento DESC, titulo_filme ASC;
SELECT DISTINCT(login) FROM avaliacoes NATURAL JOIN usuarios WHERE data_avaliacao > '1999-12-31 23:59:59' ORDER BY login ASC;
SELECT DISTINCT(titulo_filme) FROM filme_genero NATURAL JOIN filmes NATURAL JOIN generos WHERE nome_genero = 'Fantasia' ORDER BY titulo_filme ASC;
-- 3 consultas envolvendo a junção de três ou mais relações
SELECT DISTINCT(titulo_filme) FROM filmes NATURAL JOIN filme_genero NATURAL JOIN generos NATURAL JOIN avaliacoes WHERE nome_genero = 'Romance' AND nota = (SELECT MAX(nota) FROM avaliacoes) ORDER BY titulo_filme;
SELECT titulo_filme AS 'Titulo do Filme',nome_genero AS 'Gênero',nota AS Nota  FROM avaliacoes NATURAL JOIN filmes NATURAL JOIN filme_genero NATURAL JOIN generos WHERE nota = (SELECT MIN(nota) FROM avaliacoes);
SELECT titulo_filme,ano_lancamento,nome_genero,palavras_chave.palavra_chave_texto AS palavra_chave FROM filmes NATURAL JOIN filme_genero NATURAL JOIN generos INNER JOIN (SELECT * FROM palavras_chave WHERE palavra_chave_texto LIKE '%oscar%') AS palavras_chave ON filmes.id_filme = palavras_chave.id_filme ORDER BY ano_lancamento DESC, titulo_filme ASC,nome_genero ASC;
-- 2 consultas envolvendo funções de agregação sobre o resultado da junção de pelo menos duas relações.
SELECT titulo_filme, COUNT(*) AS total_avaliacoes, AVG(nota) AS media_avaliacoes FROM filmes NATURAL JOIN avaliacoes GROUP BY id_filme HAVING total_avaliacoes > 100  ORDER BY media_avaliacoes DESC, total_avaliacoes DESC, titulo_filme ASC; -- alterei para mostrar a quantidade de avaliacoes tambem. E para considerar somente filmes com mais de 100 avaliacoes
SELECT titulo_filme, COUNT(*) AS total_palavras_chave FROM palavras_chave NATURAL JOIN filmes GROUP BY id_filme ORDER BY total_palavras_chave DESC, titulo_filme ASC;

-- QUERIES INTERESSANTES(?)
-- Ranking de usuarios por palavras_chave
SELECT login, count(*) AS total_palavras_chave FROM palavras_chave NATURAL JOIN usuarios GROUP BY id_usuario ORDER BY total_palavras_chave DESC LIMIT 20;
-- Ranking de usuarios por avaliacoes
SELECT login, count(*) AS total_avaliacoes FROM avaliacoes NATURAL JOIN usuarios GROUP BY id_usuario ORDER BY total_avaliacoes DESC LIMIT 100;
-- Ranking de filmes por palavra chave
SELECT titulo_filme, count(*) AS total_palavras_chave FROM palavras_chave NATURAL JOIN filmes GROUP BY id_filme ORDER BY total_palavras_chave DESC LIMIT 20;
-- Ranking de filmes por avaliacoes
SELECT titulo_filme, count(*) AS total_avaliacoes FROM avaliacoes NATURAL JOIN filmes GROUP BY id_filme ORDER BY total_avaliacoes DESC LIMIT 100;
-- Quais gêneros de filme costumam ser melhor/pior avaliados?


-- HARRY POTTER ?
SELECT titulo_filme, ano_lancamento, COUNT(*) AS total_avaliacoes, AVG(nota) AS media_avaliacoes FROM filmes NATURAL JOIN avaliacoes WHERE titulo_filme like '%harry potter%' GROUP BY id_filme  ORDER BY total_avaliacoes DESC,media_avaliacoes DESC, titulo_filme ASC;

-- Filmes bons são atemporais? Provar que avaliação positiva não envolve necessariamente só produções MILIONÁRIAS 
SELECT titulo_filme, ano_lancamento, AVG(nota) AS media_avaliacoes, COUNT(*) AS total_avaliacoes FROM filmes NATURAL JOIN avaliacoes GROUP BY id_filme HAVING total_avaliacoes > 50 ORDER BY media_avaliacoes DESC, titulo_filme ASC, total_avaliacoes DESC;


