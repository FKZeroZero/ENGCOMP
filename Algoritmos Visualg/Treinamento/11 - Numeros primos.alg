Algoritmo "semnome"
// Disciplina  : Algoritmos
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 24/10/2021
// O algoritmo deve imprimir os numeros primos contidos no intervalo
// que o usuario informar

Var
n, m : inteiro

funcao primo(num : inteiro) : logico
var
n : inteiro
i : inteiro
p : logico
inicio
n := Int(RaizQ(num))
i := 2
p := VERDADEIRO
se (num <> 2) entao
enquanto (i <= n) faca
se (num % i = 0) entao
    p := FALSO
    i := n
fimse
i := i + 1
fimenquanto
fimse
retorne p
fimfuncao
Inicio
escreval("Informe o primeiro numero do intervalo:")
leia(m)
escreval("Informe o ultimo numero do intervalo:")
leia(n)

enquanto (m < n) faca
se m < 2 entao
senao
    se (primo(m)) entao
    escreva(m, " ,")
    fimse
fimse
m := m + 1
fimenquanto
Fimalgoritmo