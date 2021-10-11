Algoritmo "semnome"
// Disciplina  : Algoritmos
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 10/10/2021
Var
a, b : real
media : real

Inicio
// O algoritmo recebe duas notas, calcula a media e diz se o aluno foi aprovado
// caso a nota seja 7 ou mais, ou reprovado e diz a media
escreval("Escreva a primeira nota:")
leia(a)
escreval("Escreva a segunda nota:")
leia(b)

media := ((a + b) / 2)
escreva("O aluno foi ")

se (media >= 7) entao
    escreval("APROVADO")
fimse

se (media < 7) entao
    escreval("REPROVADO")
fimse

escreva("A media do aluno foi", media)

Fimalgoritmo