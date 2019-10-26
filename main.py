#NÃO COLOQUEI 'IMPORT *' P DESCREVER O Q CADA FUNÇAO FAZ
from funcoes import getRecomendacao ##Retorna o filme mais recomendado para o usuário
from funcoes import getSimilares ##Retorna, em ordem, os outros usuarios com perfil mais similares
from funcoes import carrega_movielens ##carrega a base de dados

############BASE DE DADOS#############
from recomendacao_filmes import avaliacoes_filmes
from recomendacao_usuarios import avaliacoes_usuario


####################MAIN######################

base = carrega_movielens() ##carrega a base de dados
print(getRecomendacao(base, '100'))
print(getSimilares(base, '1'))