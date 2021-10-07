Algoritmo "semnome"
// Disciplina  : Algoritmos
// Professor   : Pedro Brandao 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 06/10/2021
Var
maior, menor, i : inteiro
vet : vetor [1..10] de inteiro

Inicio
//Inicializar variaveis
maior := 0
menor := 0

escreval("Digite 8 numeros:")

//Receber dados e comparar em seguida
para i de 1 ate 8 faca
    leia(vet[i])

    se i = 1 entao
        maior := vet[i]
        menor := vet[i]
    fimse

    se vet[i] > maior entao
        maior := vet[i]
    fimse
        se vet[i] < menor entao
            menor := vet[i]
    fimse
fimpara

escreval("O maior numero eh", maior)
escreval("O menor numero eh", menor)

Fimalgoritmo