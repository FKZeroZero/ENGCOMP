Algoritmo "semnome"
// Disciplina  : Algoritmos
// Professor   : Pedro Brandao Neto
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 19/10/2021
Var
sexos : vetor [1..20] de caracter
salarios : vetor [1..20] de real
homens, mulheres, i : inteiro
sal, medHomens, medMulheres, menorHomens, maiorHomens, menorMulheres, maiorMulheres, totalHomens, totalMulheres : real
houm : caracter



Inicio
// Elabore um algoritmo que registre informacoes de 20 pessoas.
// Cada pessoa deve informar o seu sexo (F ou M), e um vetor de
// tamanho 20, e salario usando outro vetor de tamanho 20. Entao,
// o algoritmo deve calcular e exibir a quantidade de pessoas de
// cada sexo, a media do salario de cada sexo e, por ultimo, o
// menor e maior salario de cada o sexo.

homens := 0
mulheres := 0
maiorHomens := -1
menorHomens := -1
maiorMulheres := -1
menorMulheres := -1


para i de 1 ate 20 faca
    houm := "null"
    
    // Validacao do sexo informado e contabilizacao do total de homens/mulheres
    enquanto (houm = "null") faca
        escreval("Digite o sexo da poessoa", i, " (M/F):")
        leia(houm)
        se (houm <> "M") E (houm <> "F") entao
            houm := "null"
            limpatela
            escreval("Sexo invalido! Tente novamente")
        senao
            se (houm = "M") entao
                homens := homens + 1
            senao
                se (houm = "F") entao
                    mulheres := mulheres + 1
                fimse
            fimse
        fimse
    fimenquanto
    // Fim da validacao do sexo
    // ========================
    
    sexos[i] := houm
    
    limpatela
    sal := -1
    // Validacao do salario
    enquanto (sal < 0) faca
        escreval("Informe o salario da pessoa", i,":")
        leia(sal)
        se (sal < 0) entao
            limpatela
            escreval("O salario nao pode ser menor que zero.")
            escreval("Tente novamente.")
        fimse
    fimenquanto
    // Fim da validacao do salario
    // ===========================
    
    limpatela
    // Se masculino adiciona o salario ao
    // somatorio de todos os salarios masculinos
    // O mesmo para o feminino dentro do senao
    // Se os valores de menor e maior salario do sexo tratado
    // durante a execucao forem -1 (valor atribuido no
    // comeco do algoritmo), significa que o sexo em questao
    // estara recebendo os valores referentes ao primeiro individuo
    // de tal sexo, de modo que nao ha nenhum valor a ser comparado para
    // que se possa estabelecer um valor maior ou menor
    // senao, isso significa que ja se tem algum valor, populando o vetor
    // e atribuido ao sexo em questao, podendo assim ser feita uma
    // comparacao entre os salarios
    // Os salarios serao comparados entao com as variaveis maior
    // e menor do sexo correspondente

    salarios[i] := sal
    se (houm = "M") entao
        totalHomens := totalHomens + sal
        se (menorHomens = -1) E (maiorHomens = -1) entao
            menorHomens := sal
            maiorHomens := sal
        senao
            se (sal < menorHomens) entao
                menorHomens := sal
            senao
                se (sal > maiorHomens) entao
                    maiorHomens := sal
                fimse
            fimse
        fimse
    senao
        totalMulheres := totalMulheres + sal
        se (menorMulheres = -1) E (maiorMulheres = -1) entao
            menorMulheres := sal
            maiorMulheres := sal
        senao
            se (sal < menorMulheres) entao
                menorMulheres := sal
            senao
                se (sal > maiorMulheres) entao
                    maiorMulheres := sal
                fimse
            fimse
        fimse
    fimse

fimpara

// A variavel totalHomens armazena o total dos salarios masculinos
// A variavel homens armazena a quantidade total de homens
// As variaveis similares para mulheres tem a mesma finalidade

medHomens := (totalHomens/homens)
medMulheres := (totalMulheres/mulheres)
escreval("==================================================================")
escreval("| Os dados coletados apresentam um total de:")
escreval("|", homens, " Homens")
escreval("|", mulheres, " Mulheres")
escreval("| A MEDIA dos salarios masculinos foi de R$", medHomens:6:2)
escreval("| A MEDIA dos salarios femininos foi de R$", medMulheres:6:2)
escreval("| O MAIOR salario para o sexo masculino foi de R$", maiorHomens:6:2)
escreval("| O MENOR salario para o sexo masculino foi de R$", menorHomens:6:2)
escreval("| O MAIOR salario para o sexo feminino foi de R$", maiormulheres:6:2)
escreval("| O MENOR salario para o sexo feminino foi de R$", menorMulheres:6:2)

Fimalgoritmo