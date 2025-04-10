função insertionSort(lista)
    para i de 1 até tamanho(lista) - 1
        atual ← lista[i]
        j ← i - 1

        enquanto j ≥ 0 e lista[j] > atual
            lista[j + 1] ← lista[j]
            j ← j - 1

        lista[j + 1] ← atual
fim função