Algoritmo "semnome"
// Disciplina  : Algoritmos
// Professor   : Pedro Brandao 
// Descrição   : Atividade 3.2
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 04/10/2021
Var
L, L1, L2 : logico


Inicio
escreval("Escreva VERDADEIRO ou FALSO para as variaveis a seguir:")
escreval("Digite o valor de L1:")
leia(L1)
escreval("Digite o valor de L2:")
leia(L2)

se L1 = VERDADEIRO entao
    se L2 = FALSO entao
        L <- VERDADEIRO
    senao
        L <- FALSO
    fimse
senao
    L <- FALSO
fimse

escreva("A variavel L eh ", L)


Fimalgoritmo