Algoritmo "semnome"
// Disciplina  : Algoritmos
// Professor   : Pedro Brandao Neto
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 28/10/2021
Var
consumo : vetor [2000..2020, 1..12] de inteiro
totalGeral, i, j : inteiro
maiorConsumoA, maiorConsumoM, menorConsumoA, menorConsumoM, menorMaior : inteiro

Inicio
totalGeral := 0
para i de 2000 ate 2020 faca
    //totalGeral := 0
    para j de 1 ate 12 faca
        enquanto (consumo[i, j] < 200) faca
        consumo[i, j] :=  randi(750)
        fimenquanto
        totalGeral := totalGeral + consumo[i, j]
        se (i = 2000) E (j = 1) entao
            maiorConsumoA := i
            maiorConsumoM := j
            menorConsumoA := i
            menorConsumoM := j
        senao
            se (consumo[i, j] > consumo[maiorConsumoA, maiorConsumoM]) entao
                maiorConsumoA := i
                maiorConsumoM := j
            senao
                se (consumo[i, j] < consumo[menorConsumoA, menorConsumoM]) entao
                    menorConsumoA := i
                    menorConsumoM := j
                fimse
            fimse
        fimse
    fimpara
    //escreval("O consumo medio do ano", i, " foi de ", (totalGeral/12):6:2, " m3/mes.")
fimpara

escreval("O consumo medio de agua na empresa nos ultimos 20 anos")
escreval("foi de ", (totalGeral/20):6:2, " metros cubicos por ano.")

escreval("O menor consumo foi de", consumo[menorConsumoA, menorConsumoM], " metros cubicos, no mes", menorConsumoM, " do ano", menorConsumoA)
escreval("O maior consumo foi de", consumo[maiorConsumoA, maiorConsumoM], " metros cubicos, no mes", maiorConsumoM, " do ano", maiorConsumoA)

menorMaior := maiorConsumoA

para i de 2000 ate 2020 faca
    se (consumo[i, maiorConsumoM] < consumo[menorMaior, maiorConsumoM]) entao
        menormaior := i
    fimse
fimpara

escreval("Entre os meses", maiorConsumoM, " dos outros anos, o menor consumo registrado")
escreval("foi no ano",  menorMaior, " que registrou um consumo de", consumo[menorMaior, maiorConsumoM], " m3")
Fimalgoritmo