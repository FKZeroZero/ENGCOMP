Algoritmo "semnome"
// Disciplina  : Algoritmos
// Professor   : Pedro Brandao 
// Descrição   : 1.2 - Ler duas notas, informar a media e dizer se foi aprovado
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 04/10/2021
Var
n1, n2 : real


Inicio
escreval("Informe a primeira nota:")
leia(n1)
escreval("Informe a segunda nota:")
leia(n2)

se ((n1 + n2) / 2) < 7 entao
escreval("A media do aluno eh ", ((n1 + n2) / 2), " e o aluno foi REPROVADO.")
senao
escreval("A media do aluno eh ", ((n1 + n2) / 2), " e o aluno foi APROVADO.")
fimse

Fimalgoritmo