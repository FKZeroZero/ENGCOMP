Algoritmo "semnome"
// Disciplina  : Algoritmos
// Professor   : Pedro Brandao 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 06/10/2021
Var
i, hh, mm, ss, input : inteiro
Inicio
//Inicializar variaveis
i := 0
hh := 0
mm := 0
ss := 0
input := 0

//Input de dados
enquanto i = 0 faca
escreval("Digite o numero de segundos:")
leia(input)
se input > 0 entao
i := 1
senao
limpatela
escreval("Dados invalidos, tente novamente.")
fimse
fimenquanto

hh := input \ 3600
mm := (input mod 3600) \ 60
ss := (input mod 3600) mod 60

escreval(input, " segundos correspondem a ", hh," :",mm," :",ss)

Fimalgoritmo