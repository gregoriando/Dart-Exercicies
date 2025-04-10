função mergeSort(lista)
    se tamanho(lista) ≤ 1
        retorne lista

    meio ← tamanho(lista) / 2
    esquerda ← mergeSort(lista[0 até meio - 1])
    direita ← mergeSort(lista[meio até fim])

    retorne merge(esquerda, direita)
fim função

função merge(esquerda, direita)
    resultado ← lista vazia
    i ← 0
    j ← 0

    enquanto i < tamanho(esquerda) e j < tamanho(direita)
        se esquerda[i] ≤ direita[j]
            resultado.adicionar(esquerda[i])
            i ← i + 1
        senão
            resultado.adicionar(direita[j])
            j ← j + 1

    enquanto i < tamanho(esquerda)
        resultado.adicionar(esquerda[i])
        i ← i + 1

    enquanto j < tamanho(direita)
        resultado.adicionar(direita[j])
        j ← j + 1

    retorne resultado
fim função
