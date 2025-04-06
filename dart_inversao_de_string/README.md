🔁 Inversão de String com Contador + Extension
Este exercício tem como objetivo mostrar diferentes formas de inverter uma String e, ao mesmo tempo, explorar conceitos importantes como lógica de programação e extensions em Dart.

Inicialmente, poderia ter sido usado o método .split().reversed.join(), ou algo semelhante, que é uma forma mais simples e direta de inverter uma string. Porém, optei por fazer uma implementação manual, usando:

Um laço de repetição com contagem regressiva (for de trás pra frente).

Uma variável acumuladora, que recebia letra por letra da string original, em ordem inversa.

Essa abordagem tem o objetivo de reforçar o entendimento do funcionamento dos loops e da manipulação de strings em nível básico.

🧩 Extension de String
Após isso, o exercício foi evoluído com a criação de uma extension da classe String, encapsulando a lógica de inversão dentro de um método personalizado.

Essa etapa foi importante para aprender a:

Criar métodos personalizados para tipos nativos (como String).

Tornar o código mais reutilizável e limpo.

Entender como extensions podem ser aplicadas em cenários reais, como por exemplo:

Criar métodos específicos para manipular cores (Color).

Padronizar estilos de texto (title, size, bold etc).

Evitar repetição de código.
