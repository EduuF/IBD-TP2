-- 10 CONSULTAS OBRIGATORIAS
-- 2 consultas envolvendo as operações de seleção e projeção
SELECT titulo, ano_lancamento FROM filmes ORDER BY ano_lancamento DESC, titulo ASC;
SELECT nome FROM generos ORDER BY nome ASC;
-- 3 consultas envolvendo a junção de duas relações
SELECT DISTINCT(titulo), ano_lancamento FROM palavras_chave NATURAL JOIN filmes WHERE descricao LIKE '%comedy%' ORDER BY ano_lancamento DESC, titulo ASC; 
SELECT DISTINCT(nome) FROM avaliacoes NATURAL JOIN usuarios WHERE data_avaliacao > '1999-12-31 23:59:59' ORDER BY nome ASC;
SELECT DISTINCT(titulo) FROM filme_genero NATURAL JOIN filmes NATURAL JOIN generos WHERE nome = 'Fantasia' ORDER BY titulo ASC;
-- 3 consultas envolvendo a junção de três ou mais relações
SELECT DISTINCT(titulo),nota FROM filmes NATURAL JOIN filme_genero NATURAL JOIN generos NATURAL JOIN avaliacoes WHERE nome = 'Romance' AND nota = (SELECT MAX(nota) FROM avaliacoes) ORDER BY titulo;
SELECT titulo AS 'Titulo do Filme',nome AS 'Gênero',nota AS Nota  FROM avaliacoes NATURAL JOIN filmes NATURAL JOIN filme_genero NATURAL JOIN generos WHERE nota = (SELECT MIN(nota) FROM avaliacoes);
SELECT titulo,ano_lancamento,nome,palavras_chave.descricao AS palavra_chave FROM filmes NATURAL JOIN filme_genero NATURAL JOIN generos INNER JOIN (SELECT * FROM palavras_chave WHERE descricao LIKE '%oscar%') AS palavras_chave ON filmes.id_filme = palavras_chave.id_filme ORDER BY ano_lancamento DESC, titulo ASC,nome ASC;
-- 2 consultas envolvendo funções de agregação sobre o resultado da junção de pelo menos duas relações.
SELECT titulo, COUNT(*) AS total_avaliacoes, AVG(nota) AS media_avaliacoes FROM filmes NATURAL JOIN avaliacoes GROUP BY id_filme HAVING total_avaliacoes > 100  ORDER BY media_avaliacoes DESC, total_avaliacoes DESC, titulo ASC; -- alterei para mostrar a quantidade de avaliacoes tambem. E para considerar somente filmes com mais de 100 avaliacoes
SELECT titulo, COUNT(*) AS total_palavras_chave FROM palavras_chave NATURAL JOIN filmes GROUP BY id_filme ORDER BY total_palavras_chave DESC, titulo ASC;

-- QUERIES INTERESSANTES(?)
-- Ranking de usuarios por palavras_chave
SELECT nome, count(*) AS total_palavras_chave FROM palavras_chave NATURAL JOIN usuarios GROUP BY id_usuario ORDER BY total_palavras_chave DESC LIMIT 20;
-- Ranking de usuarios por avaliacoes
SELECT nome, count(*) AS total_avaliacoes FROM avaliacoes NATURAL JOIN usuarios GROUP BY id_usuario ORDER BY total_avaliacoes DESC LIMIT 100;
-- Ranking de filmes por palavra chave
SELECT titulo, count(*) AS total_palavras_chave FROM palavras_chave NATURAL JOIN filmes GROUP BY id_filme ORDER BY total_palavras_chave DESC LIMIT 20;
-- Ranking de filmes por avaliacoes
SELECT titulo, count(*) AS total_avaliacoes FROM avaliacoes NATURAL JOIN filmes GROUP BY id_filme ORDER BY total_avaliacoes DESC LIMIT 100;
-- Quais gêneros de filme costumam ser melhor/pior avaliados?
-- Há alguma relação entre a data de lançamento do filme e avaliação?