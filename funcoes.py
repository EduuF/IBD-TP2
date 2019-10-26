from recomendacao_usuarios import avaliacoes_usuario
from recomendacao_filmes import avaliacoes_filmes
from math import sqrt


def euclidiana(base, usuario1, usuario2):
    si = {}

    for item in base[usuario1]:
        if item in base[usuario2]:
            si[item] = 1 ##TEM PELO MENOS 1 FILME EM COMUM
    if len(si) == 0:
        return 0  ##NÃO TEM NENHUM FILME EM COMUM

    soma = sum([pow(base[usuario1][item] - base[usuario2][item], 2) 
                for item in base[usuario1] if item in base[usuario2] ])

    return 1/(1+sqrt(soma))

def getSimilares(base, usuario):
    similaridade = [(euclidiana(base, usuario, outro), outro) for outro in base if outro != usuario]
    similaridade.sort() ##Ordena em ordem crescente
    similaridade.reverse() ##Inverte para os maiores virem primeiro
    return similaridade[:30]

def getRecomendacao(base, usuario):
    totais ={}
    somaSimilaridade={}
    for outro in base:
        if outro == usuario: continue ##Não compara consigo mesmo
        similaridade = euclidiana(base, usuario, outro)

        if similaridade <= 0: continue ##Se não houver similaridade não conta

        for item in base[outro]:
            if item not in base[usuario]: ##Pega só os outros usuarios que assistiram
                totais.setdefault(item, 0)
                totais[item] += base[outro][item] * similaridade ##multiplica a avaliação com o peso
                somaSimilaridade.setdefault(item,0)
                somaSimilaridade[item] += similaridade ##guarda os pesos

    rankings = [(total/somaSimilaridade[item], item) for item, total in totais.items()]
    rankings.sort()
    rankings.reverse()
    return rankings[0]

def carrega_movielens(path='ml-100k'):
    ####Setando base de dados de filmes####
    filmes={}
    for linha in open(path + '/u.item'):
        (id, titulo) = linha.split('|')[0:2]
        filmes[id] = titulo
    ####Setando base de dados de notas#####
    base={}
    for linha in open(path + '/u.data'):
        (usuario, idfilme, nota) = linha.split('\t')[0:3]
        base.setdefault(usuario, {})
        base[usuario][filmes[idfilme]] = float(nota)
    return base
