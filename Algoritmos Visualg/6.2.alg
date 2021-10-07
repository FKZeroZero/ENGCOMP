Algoritmo "semnome"
// Disciplina  : Algoritmos
// Professor   : Pedro Brandao 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 06/10/2021
Var
n1, n2, n3, n4, n5, n6, n7, n8, maior, menor : inteiro

Inicio
escreval("Digite 8 numeros:")
leia(n1, n2, n3, n4, n5, n6, n7, n8)

se (n1 > n2) entao
   maior <- n1
   menor <- n2
senao
     menor <- n1
     maior <- n2
fimse

se n3 > maior entao
   maior <- n3
senao
     se n3 < menor entao
        menor <- n3
     fimse
fimse

se n4 > maior entao
   maior <- n4
senao
     se n4 < menor entao
        menor <- n4
     fimse
fimse

se n5 > maior entao
   maior <- n5
senao
     se n5 < menor entao
        menor <- n5
     fimse
fimse

se n6 > maior entao
   maior <- n6
senao
     se n6 < menor entao
        menor <- n6
     fimse
fimse

se n7 > maior entao
   maior <- n7
senao
     se n7 < menor entao
        menor <- n7
     fimse
fimse

se n8 > maior entao
   maior <- n8
senao
     se n8 < menor entao
        menor <- n8
     fimse
fimse

escreval("O maior numero eh", maior)
escreval("O menor numero eh", menor)


Fimalgoritmo