Algoritmo "semnome"
// Disciplina  : Algoritmos
// Professor   : Pedro Brandao 
// Descrição   : Atividade 3.4
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 04/10/2021
Var
BISSEXTO : logico
ANO : inteiro

Inicio
escreval("Digite um ano:")
leia(ANO)
BISSEXTO := FALSO

se (ANO % 4) = 0 entao
    se (ANO % 100) = 0 entao
        se (ANO % 400) = 0 entao
            BISSEXTO := VERDADEIRO
        fimse
    senao
        BISSEXTO = VERDADEIRO
    fimse
fimse

se BISSEXTO = VERDADEIRO entao
    escreva("O ano ", ANO, " eh bissexto")
senao
    escreva("O ano ", ANO, " nao eh bissexto")
fimse

Fimalgoritmo