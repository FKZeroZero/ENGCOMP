Algoritmo "semnome"
// Disciplina  : Algoritmos
// Professor   : Pedro Brandao 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 06/10/2021
Var
num : inteiro
par, impar, m3, m5, m7 : logico

Inicio
escreval("Insira um numero:")
leia(num)

par <- (num % 2) = 0
impar <- NAO par
m3 <- (num % 3) = 0
m5 <- (num % 5) = 0
m7 <- (num % 7) = 0

escreval("O numero eh:")
escreval("Par:", par)
escreval("Impar:", impar)
escreval("Multiplo de 3:", m3)
escreval("Multiplo de 5:", m5)
escreval("Multiplo de 7:", m7)




Fimalgoritmo