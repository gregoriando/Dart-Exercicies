Função KMP(texto, padrão):
    prefixo = calcularPrefixo(padrão)
    i = 0 // índice no texto
    j = 0 // índice no padrão

    Enquanto i < tamanho(texto):
        Se texto[i] == padrão[j]:
            i = i + 1
            j = j + 1
            Se j == tamanho(padrão):
                imprimir "Padrão encontrado na posição", i - j
                j = prefixo[j - 1] // continua procurando
        Senão:
            Se j > 0:
                j = prefixo[j - 1]
            Senão:
                i = i + 1

Função calcularPrefixo(padrão):
    prefixo = vetor de tamanho igual ao padrão, inicializado com zeros
    j = 0

    Para i de 1 até tamanho(padrão) - 1:
        Enquanto j > 0 e padrão[i] != padrão[j]:
            j = prefixo[j - 1]
        Se padrão[i] == padrão[j]:
            j = j + 1
        prefixo[i] = j

    Retorna prefixo
