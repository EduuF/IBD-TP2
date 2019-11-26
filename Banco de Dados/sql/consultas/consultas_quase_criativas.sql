-- Palavras chave que são utilizadas para descrever bons filmes (Nuvem de Palavras na Apresentação)
SELECT palavra_chave_texto, count(*) AS qntd_aparece, AVG(nota) as mediaNota, nota
FROM palavras_chave NATURAL JOIN avaliacoes
GROUP BY id_palavra_chave
HAVING mediaNota > 4
ORDER BY qntd_aparece DESC, mediaNota DESC



-- As avaliações mais recentes (Usar numa seção Em Alta)
SELECT titulo_filme, count(id_filme) as numAvaliacoes,data_avaliacao
FROM avaliacoes NATURAL JOIN filmes
GROUP BY id_filme, data_avaliacao
ORDER BY data_avaliacao DESC


-- Trend Topics
SELECT palavra_chave_texto, count(*) AS qntd_aparece
FROM palavras_chave
GROUP BY id_palavra_chave
HAVING count(id_palavra_chave) > 5
ORDER BY qntd_aparece DESC
