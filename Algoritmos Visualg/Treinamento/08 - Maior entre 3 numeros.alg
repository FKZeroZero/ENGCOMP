Algoritmo "semnome"
// Disciplina  : Algoritmos
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 11/10/2021
Var
a, b, c, maior : inteiro

Inicio
// O algoritmo deve receber tres numeros e dizer qual eh o meior entre eles
escreval("")
escreval("Digite o primeiro numero")
leia(a)
escreval("")
escreval("Digite o segundo numero")
leia(b)
escreval("")
escreval("Digite o terceiro numero")
leia(c)

se (a > b) entao
    maior := a
    senao
    maior := b
fimse
se (c > maior) entao
    maior := c
fimse

limpatela
escreval("O maior numero eh", maior)

Fimalgoritmo