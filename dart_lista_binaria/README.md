INICIO

  // Lista e número a ser buscado
  lista <- [1, 3, 5, 7, 9, 11]
  numero <- 7

  // Chamada da função de busca binária
  resultado <- BuscaBinaria(lista, numero)

  ESCREVA "O índice do número procurado é: ", resultado

FIM

FUNÇÃO BuscaBinaria(lista, numero)
  inicio <- 0
  fim <- tamanho(lista) - 1

  ENQUANTO inicio <= fim FAÇA
    meio <- (inicio + fim) DIV 2

    SE lista[meio] = numero ENTÃO
      RETORNE meio
    SENÃO SE lista[meio] < numero ENTÃO
      inicio <- meio + 1
    SENÃO
      fim <- meio - 1
    FIM SE
  FIM ENQUANTO

  RETORNE -1
FIM FUNÇÃO
