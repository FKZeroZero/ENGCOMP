Algoritmo "semnome"
// Disciplina  : Algoritmos
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 10/10/2021
Var
altura, peso : real
IMC : real

Inicio
// O algoritmo deve receber a altura do usuario e o peso e calcular o IMC
// O IMC eh calculado dividindo-se o peso pela altura ao quadrado
escreval("Escreva a sua altura em metros(ex: 1.74):")
leia(altura)
escreval("Escreva o seu peso:")
leia(peso)

IMC := (peso / (altura ^ 2))
escreva("O seu IMC eh ", IMC)

Fimalgoritmo