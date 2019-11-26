-- 1 Sem as ordenacoes
SELECT titulo_filme , ano_lancamento FROM filmes 

-- 2 Sem as ordenacoes
SELECT nome_genero FROM generos

-- 3 de JOIN PARA CONSULTAS ANINHADAS
SELECT DISTINCT titulo_filme , ano_lancamento FROM filmes WHERE id_filme IN 
(SELECT id_filme from palavras_chave where palavra_chave_texto like "%comedy%")

-- 4 de JOIN PARA CONSULTAS ANINHADAS
SELECT DISTINCT login from usuarios WHERE id_usuario IN 
(SELECT id_usuario FROM avaliacoes WHERE data_avaliacao > '1999-12-31 23:59:59' )

-- 5 de JOIN PARA CONSULTAS ANINHADAS
SELECT DISTINCT titulo_filme FROM filmes WHERE id_filme IN (SELECT id_filme FROM filme_genero NATURAL JOIN generos WHERE nome_genero = "Fantasia")

-- 6 de JOIN PARA CONSULTAS ANINHADAS
SELECT DISTINCT titulo_filme FROM filmes WHERE id_filme IN
(SELECT id_filme FROM avaliacoes WHERE nota = 5 AND id_filme IN 
(SELECT id_filme FROM filme_genero NATURAL JOIN generos WHERE nome_genero = "Romance"))
ORDER BY titulo_filme


-- Falta : 
-- 7 Para todos os filmes avaliados com nota mínima, selecione o nome do filme,  seu gênero e o valor da nota mínima.

-- 8 DE INNER JOIN PARA NATURAL JOIN SO COM AS COLUNAS QUE DESEJA
SELECT titulo_filme,ano_lancamento,nome_genero,palavra_chave_texto FROM filmes NATURAL JOIN filme_genero NATURAL JOIN generos 
NATURAL JOIN (SELECT id_filme, id_palavra_chave, palavra_chave_texto FROM palavras_chave WHERE palavra_chave_texto LIKE '%oscar%') 
AS palavras_chave  ORDER BY ano_lancamento DESC, titulo_filme ASC,nome_genero ASC;

-- 9 TOTAL DE AVALIACOES DENTRO DE UMA CONSULTA ANINHADA
SELECT titulo_filme, AVG(nota) AS mediaNota FROM filmes NATURAL JOIN avaliacoes 
WHERE id_filme IN (SELECT id_filme FROM avaliacoes GROUP BY id_filme HAVING count(nota) >100)
GROUP BY id_filme ORDER BY mediaNota DESC, titulo_filme ASC; 

-- 10 COUNT PELA PALAVRA CHAVE
SELECT titulo_filme, count(id_palavra_chave) AS qnt_tags from filmes NATURAL JOIN palavras_chave 
GROUP BY id_filme
ORDER BY qnt_tags DESC, titulo_filme ASC;