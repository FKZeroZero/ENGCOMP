Algoritmo "semnome"
//Disciplina :  [Linguagem e Lógica de Programação]
//Professor  : Antonio Carlos Nicolodi
//Descricao  : Algoritmo que faz uma pesquisa de qualidade sobre o sabor de
//             seus chocolates, devendo apresentar na tela as seguintes opcoes:
//             1. Sabor otimo
//             2. Sabor normal
//             3. Gosto ruim
//             4. 999 - Sair
//
//             Ao ser solicitado pelo algoritmo o usuario vai informando o nu-
//             mero correspondente a resposta (1, 2, 3) ate que ele digite 999
//             para sair. Posteriormente o algoritmo deve imprimir o numero de
//             Respostas dada e a porcentagem de cada uma das escolhas.
//Autor(a)   : Gustavo de Sousa Marques
//Data atual : 07/10/2021
Var
ot, no, ru, to, rodar, voto : inteiro

Inicio
ot := 0
no := 0
ru := 0
to := 0
voto := 0
rodar := 1

enquanto rodar <> 999 faca

    escreval("Indique qual a sua opniao sobre o sabor dos chocolates com")
    escreval("o numero correspondente, ou digitar 999 para finalizar:")
    escreval("")
    escreval("1. Sabor otimo")
    escreval("2. Sabor normal")
    escreval("3. Sabor ruim")
    escreval("4. 999 - Sair")
    escreval("")
    leia(voto)

    escolha voto
        caso 1
            ot := ot + 1
            to := to + 1
            voto := 0
            limpatela
        caso 2
            no := no + 1
            to := to + 1
            voto := 0
            limpatela
        caso 3
            ru := ru + 1
            to := to + 1
            voto := 0
            limpatela
        caso 999
            rodar := voto
            escreval("O total foi de", to, " votos.")
            escreval(ot, " pessoas acharam otimo, totalizando ", ((ot*100) / to):4:2, " por cento dos votos")
            escreval(no, " pessoas acharam normal, totalizando ", ((no*100) / to):4:2, " por cento dos votos")
            escreval(ru, " pessoas acharam ruim, totalizando ", ((ru*100) / to):4:2, " por cento dos votos")
        outrocaso
            limpatela
            escreval("Opcao invalida! Tente novamente!")
            voto := 0
    fimescolha

fimenquanto



Fimalgoritmo