Algoritmo "semnome"
// Disciplina  : Algoritmos
// Professor   : Pedro Brandao 
// Descrição   : Atividade 2
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 04/10/2021
Var
A, B, C, D, F, G, H, I, result1, result2, result3 : logico

Inicio
A := VERDADEIRO
B := FALSO
C := FALSO
D := VERDADEIRO
F := FALSO
G := VERDADEIRO
H := FALSO
I := VERDADEIRO

result1 := A E (B OU C) // b e c sao falsos, entao b ou c eh falso. a eh verdadeiro. a e (b ou c) eh falso
result2 := B E (D OU G) // b ja eh falso, entao b e (d ou g) sera falso tambem
result3 := (B OU F) E G // b ou f eh falso, entao ao juntar com g(verdadeiro) o resultado serah falso

escreval(result1, ", ", result2, ", ", result3) // o algoritmo exibirah "FALSO, FALSO, FALSO"


Fimalgoritmo