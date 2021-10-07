Algoritmo "semnome"
// Disciplina  : Algoritmos
// Professor   : Pedro Brandao 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 06/10/2021
Var
num, num2, resto, frac, numInt, denominador, numerador : real
precisao : inteiro

Inicio
escreval("O algoritmo esta limitado ao uso de 4 casas decimais")
escreval("Digite um numero real:")
leia(num)
escreval("Digite o numero de casas decimais:")
leia(precisao)

denominador <- (10 ^ precisao)
num2 <- (num * 10000)
resto <- num2 % 10000
frac <- resto / 10000
numInt <- num - frac
numerador <- frac * denominador

escreval("O numero real", num, " pode ser representado na forma:")
escreval("   ", numerador)
escreval(numInt, " -----")
escreval("   ", denominador)

Fimalgoritmo