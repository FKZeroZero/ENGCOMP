Algoritmo "semnome"
// Disciplina  : Algoritmos
// Professor   : Pedro Brandao 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 06/10/2021
Var
hh, mm, ss, input : inteiro
Inicio
escreval("Digite o numero de segundos:")
leia(input)
hh <- input \ 3600
mm <- (input mod 3600) \ 60
ss <- (input mod 3600) mod 60

escreval(input, " segundos correspondem a ", hh," :",mm," :",ss)

Fimalgoritmo