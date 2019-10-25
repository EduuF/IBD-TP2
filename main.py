from recomendacao import avaliacoes
from math import sqrt

##############CALCULA DISTANCIA EUCLIDIANA#########################

def euclidiana (usuario1, usuario2):
    si = {}

    for item in avaliacoes[usuario1]:
        if item in avaliacoes[usuario2]:
            si[item] = 1
    if len(si) == 0:
        return 0 

    soma = sum([pow(avaliacoes[usuario1][item] - avaliacoes[usuario2][item], 2) 
                for item in avaliacoes[usuario1] if item in avaliacoes[usuario2] ])

    return 1/(1+sqrt(soma))

def getSimilares(usuario):
    similaridade = [(euclidiana(usuario, outro), outro) for outro in avaliacoes if outro != usuario]
    similaridade.sort() ##Ordena em ordem crescente
    similaridade.reverse() ##Inverte para os maiores virem primeiro
    return similaridade

def getRecomendacao(usuario):
    totais ={}
    somaSimilaridade={}
    for outro in avaliacoes:
        if outro == usuario: continue ##Não compara consigo mesmo
        similaridade = euclidiana(usuario, outro)

        if similaridade <= 0: continue ##Se não houver similaridade não conta

        for item in avaliacoes[outro]:
            if item not in avaliacoes[usuario]: ##Pega só os outros usuarios que assistiram
                totais.setdefault(item, 0)
                totais[item] += avaliacoes[outro][item] * similaridade ##multiplica a avaliação com o peso
                somaSimilaridade.setdefault(item,0)
                somaSimilaridade[item] += similaridade ##guarda os pesos

    rankings = [(total/somaSimilaridade[item], item) for item, total in totais.items()]
    rankings.sort()
    rankings.reverse()
    return rankings


#print(getSimilares('Pedro'))
print(getRecomendacao('Leonardo'))