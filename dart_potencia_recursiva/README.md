Para se calcular potência nós precisamos fazer com que a base seja mutiplicada por ela mesma pelo número do expoente.
Se o expoente for 0 então o resultado é 1
Se o expoente é 1 então retorna a base.

Quando usamos recursividade é dessa forma que acontece:
Nós chamamos a base * função(base, expoente - 1).
Em uma função recursiva nós sempre tentamos chegar no menor para conseguir alcançar o maior

exemplo:

base = 2, expoente = 3;

2 * função(2, 2) 
2 * função(2,1) como a função retornou um expoente 1 e essa seria a condição para retornar a base, então a função para de andar
de trás para frente, para resolver a função ou seja.

2 * 2 = 4
2 * 4 = 8 Esse 4 seria o retorno da função já resolvida.

