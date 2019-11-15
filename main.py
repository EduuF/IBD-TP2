#NÃO COLOQUEI 'IMPORT *' P DESCREVER O Q CADA FUNÇAO FAZ
from sistema_de_recomendacao.funcoes import getRecomendacao ##Retorna o filme mais recomendado para o usuário
from sistema_de_recomendacao.funcoes import getSimilares ##Retorna, em ordem, os outros usuarios com perfil mais similares
from sistema_de_recomendacao.funcoes import carrega_movielens ##carrega a base de dados


####################MAIN######################

base = carrega_movielens() ##carrega a base de dados
##print(getRecomendacao(base, '100'))
print(getSimilares(base, '1'))

print(base)