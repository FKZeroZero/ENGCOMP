Algoritmo "semnome"
// Disciplina  : Algoritmos
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 11/10/2021
Var
vet :vetor [1..10] de inteiro
i, maior, menor : inteiro
Inicio
// O algoritmo deve encontrar o maior e o menor numero entre os 10 inseridos
// pelo usuario
i := 1
enquanto (i < 10) faca
    se (i = 1) entao
        escreval("Digite um numero:")
        leia(vet[i])
        maior := vet[i]
        menor := vet[i]
    senao
        escreval("Digite outro numero:")
        leia(vet[i])
    fimse
    
    se (vet[i] > maior) entao
        maior := vet[i]
    fimse
    se (vet[i] < menor) entao
        menor := vet[i]
    fimse
    i := i + 1
fimenquanto
escreval("O maior numero eh", maior, " e o menor numero eh", menor)
Fimalgoritmo