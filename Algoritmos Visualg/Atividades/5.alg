Algoritmo "atividade_5"
// Disciplina   : [Algoritmos]
// Professor   : Pedro Brandao Neto
// Descricao   : Atividade 5
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 02/10/2021
Var
rodar : logico
i1, i2, i3 : inteiro
r1, r2, r3, r4 : real
op : caractere

Inicio
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
rodar := VERDADEIRO //Determina se o programa deve finalizar ou nao
op := "X"
i1 := 0
i2 := 0
i3 := 0
r1 := 0
r2 := 0
r3 := 0
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

enquanto (rodar = VERDADEIRO) faca //loop para evitar que o programa feche
         limpatela
         escreval("Atividade 5")
         escreval("Item A")
         escreval("Item B")
         escreval("Item C")
         escreval("Item D")
         escreval("Item E")

         op := "X" //comecar o loop do menu de principal
         enquanto op = "X" faca
                  escreval("Digite a letra da opcao desejada(MAIUSCULA):")
                  leia(op)
                  
                  escolha op
//===========================RESPOSTA A========================================
                             caso "A"
                             limpatela
//Enunciado
                             escreval("Determinar o maior numero entre 3 fornecidos pelo usuario:")
                             escreval("Digite o primeiro numero")
                             leia(i1)
                             escreval("Digite o segundo numero")
                             leia(i2)
                             escreval("Digite o terceiro numero")
                             leia(i3)

//Logica:
                             se (i1>i2) entao
                                se (i1 > i3) entao
                                   escreval("O maior numero eh ", i1)
         
                                   senao
                                        escreval("O maior numero eh ", i3)
                                   fimse
                             senao
                                  se (i2 > i3) entao
                                  escreval("O maior numero eh ", i2)
                                  senao
                                  escreval("o maior numero eh ", i3)
                                  fimse
                             fimse

//===========================RESPOSTA B========================================
                             caso "B"
                             limpatela
//Enunciado
                             escreval("Ler dois valores numericos, efetuar a adicao e apresentar o")
                             escreval("seu resultado se e somente se o valor somado for maior que 10:")
                             escreval("")
                             escreval("Digite o primeiro valor:")
                             leia(i1)
                             escreval("Digite o segundo valor:")
                             leia(i2)

//Logica
                             se (i1+i2)>10 entao
                                 escreval("O resoltado da some eh ", i1+i2)
                             senao
                                 escreval("O resultado da soma nao eh maior que 10")
                             fimse

//===========================RESPOSTA C========================================
                             caso "C"
//Enunciado
                             limpatela
                             escreval("Ler dois valores numericos e efetuar a adicao. caso o valor somado")
                             escreval("seja maior ou igual a 10, devera ser apresentado ao usario o valor")
                             escreval("da adicao mais 5. Caso o valor somado nao seja maior ou igual a")
                             escreval("10, este devera ser apresentado subtraindo 7")
                             escreval("")
                             escreval("Digite o primeiro valor")
                             leia(i1)
                             escreval("Digite o segundo valor")
                             leia(i2)

//Logica
                             se (i1+i2) >= 10 entao
                                 escreval("Resultado: ", (i1 + i2) + 5)
                             senao
                                 escreval("Resultado: ", (i1 + i2) - 7)
                             fimse

//===========================RESPOSTA D========================================
                             caso "D"
//Enunciado
                             limpatela
                             escreval("Ler duas notas de um aluno. O algoritmo")
                             escreval("deve calcular a media deste aluno. Caso")
                             escreval("a media seja maior do que 6 o algoritmo")
                             escreval("deve imprimir 'aprovado'. Caso a nota ")
                             escreval("esteja entre 4 e 6 o algoritmo deve ")
                             escreval("imprimir 'final'. Caso a media seja menor do que 4")
                             escreval(" o algoritmo deve imprimir 'reprovado'.")
                             escreval("")
                             escreval("Digite a primeira nota:")
                             leia(r1)
                             escreval("Digite a segunda nota:")
                             leia(r2)

//Logica
                             se (r1 + r2) >= 12 entao
                                 escreval("Aprovado.")
                             senao
                                 se (r1 + r2) >= 8 entao
                                     escreval("Final.")
                                 senao
                                     escreval("Reprovado.")
                                 fimse
                             fimse

//===========================RESPOSTA E========================================
                             caso "E"
                             limpatela
//Enunciado
                             escreval("Elabore um algoritmo para liberar emprestimos bancarios.")
                             escreval("Inicialmente o algoritmo solicita o valor do emprestimo,")
                             escreval("numero de parcelas e o salario da pessoa que estah")
                             escreval("solicitando o emprestimo. O emprestimo somente eh aprovado")
                             escreval("se o valor das parcelas representar o maximo de 35% do")
                             escreval("salario do solicitante")
                             escreval("")

                             escreval("Digite o valor do emprestimo:")
                             leia(r1)
                             escreval("Digite o numero de parcelas:")
                             leia(r2)
                             escreval("Digite o salario:")
                             leia(r3)
//Logica
                             r4 := r3*0,35 //valor maximo da parcela
                             escreval("")
                             se (r1 / r2) > r3 entao
                                 escreval("O emprestimo foi negado.")
                             senao
                                 escreval("O emprestimo foi aprovado.")
                             fimse

//====================Caso selecione uma opcao nao disponivel==================
                             outrocaso
                             op := "X"
//op recebe o valor inicial novamente e o menu eh exibido
                             escreval("Opcao invalida, tente novamente")
                  fimescolha

         fimenquanto //fim do menu de opcoes
         op := "X"
    enquanto op = "X" faca   //Definir se o programa deve finalizar ou nao
    escreval("Deseja executar o programa novamente? (S/N)")
    leia(op)
    se op = "S" entao
    rodar := VERDADEIRO
    senao
        se op = "N" entao
        rodar := FALSO
        senao
            escreval("Opcao invalida")
            op := "X"
        fimse
    fimse
    fimenquanto

fimenquanto  //fim do loop principal

Fimalgoritmo