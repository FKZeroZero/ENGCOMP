Algoritmo "semnome"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/10/2021
Var
// Seção de Declarações das variáveis 
sexos : vetor [1..50] de caracter
salarios : vetor [1..50] de real
idades : vetor [1..50] de inteiro
estCiv : vetor [1..50] de caracter
qtM, qtF, maiorSal, menorSal, viuvaMaisNova, solteiroMaisVelho, idadeTotalF : inteiro
i, casados, solteiros, viuvos, divorciados, auxInt, ecMax, ecMin: inteiro
salTotalM, salTotalF : real
maiorEC, menorEC : caracter

funcao maior(a, b, c, d : inteiro) : caracter
var
aux : caracter
inicio

se a > b entao
  aux = "casados"
  se c > a entao
      aux := "viuvos"
      se d > c entao
          aux := "divorciados"
      fimse

  senao
      se d > a entao
      aux := "divorciados"
      fimse
  fimse
senao
    se b > c entao
        aux := "solteiros"
    senao
        se c > d entao
            aux := "viuvos"
        senao
            aux := "divorciados"
        fimse
    fimse
fimse
retorne aux
fimfuncao

funcao menor(a, b, c, d : inteiro) : caracter
var
aux : caracter
inicio

se a < b entao
  aux = "casados"
  se c < a entao
      aux := "viuvos"
      se d < c entao
          aux := "divorciados"
      fimse

  senao
      se d < a entao
      aux := "divorciados"
      fimse
  fimse
senao
    se b < c entao
        aux := "solteiros"
    senao
        se c < d entao
            aux := "viuvos"
        senao
            aux := "divorciados"
        fimse
    fimse
fimse

retorne aux
fimfuncao

funcao menorN(a, b, c, d : inteiro) : inteiro
var
aux : inteiro
inicio

se a < b entao
  aux = a
  se c < a entao
      aux := c
      se d < c entao
          aux := d
      fimse

  senao
      se d < a entao
      aux := d
      fimse
  fimse
senao
    se b < c entao
        aux := b
    senao
        se c < d entao
            aux := c
        senao
            aux := d
        fimse
    fimse
fimse

retorne aux
fimfuncao

funcao maiorN(a, b, c, d : inteiro) : inteiro
var
aux : inteiro
inicio

se a > b entao
  aux = a
  se c > a entao
      aux := c
      se d > c entao
          aux := d
      fimse

  senao
      se d > a entao
      aux := d
      fimse
  fimse
senao
    se b > c entao
        aux := b
    senao
        se c > d entao
            aux := c
        senao
            aux := d
        fimse
    fimse
fimse
retorne aux
fimfuncao

Inicio

viuvaMaisNova := -1
solteiroMaisVelho := -1

//Coleta de dados
para i de 1 ate 5 faca
    sexos[i] := "null"
    //validacao sexo
    limpatela
    enquanto (sexos[i] = "null") faca
        escreval("Informe o sexo da pessoa", i, "(M/F):")
        leia(sexos[i])
        se (sexos[i] <> "M") E (sexos[i] <> "F") entao
            sexos[i] := "null
            limpatela
            escreval("Opcao invalida, tente novamente!")
        senao
            se (sexos[i] ="M") entao
                qtM := qtM + 1
            senao
                qtF := qtF + 1
            fimse
        fimse
    fimenquanto
    
    //validacao do salario
    salarios[i] := -1
    enquanto salarios[i] < 0 faca
        escreval("Informe o salario da pessoa", i, ":")
        leia(salarios[i])
        se salarios[i] < 0 entao
            limpatela
            escreval("O salario nao pode ser negativo, tente novamente!")
        senao
            se sexos[i] = "M" entao
                salTotalM := salTotalM + salarios[i]
            senao
                salTotalF := salTotalF + salarios[i]
            fimse
        fimse
    fimenquanto
    
    //validacao idade
    idades[i] := -1
    
    enquanto idades[i] < 0 faca
        escreval("Informe a idade da pessoa", i, ":")
        leia(idades[i])
        se idades[i] < 0 entao
            limpatela
            escreval("A idade nao pode ser um numero negativo! Tente novamente!")
        senao
            se sexos[i] = "F" entao
                idadeTotalF := idadeTotalF + idades[i]
            fimse
        fimse
    fimenquanto
    
    //VALIDACAO ESTADO CIVIL
    
    estCiv[i] := "null"
    
    enquanto (estCiv[i] = "null") faca
        escreval("Informe a opcao correspondente ao estado civil da pessoa", i, ":")
        escreval("1. Casado")
        escreval("2. Solteiro")
        escreval("3. Viuvo")
        escreval("4. Divorciado")
        leia(auxInt)
        
        escolha auxInt
            caso 1
                estCiv[i] := "Casado"
                casados := casados + 1
            caso 2
                estCiv[i] := "Solteiro"
                solteiros := solteiros +1
                se sexos[i] = "M" entao
                    se (solteiroMaisVelho = -1) entao
                        solteiroMaisVelho := i
                    senao
                        se (idades[solteiroMaisVelho] < idades[i]) entao
                            solteiroMaisVelho := i
                        fimse
                    fimse
                fimse
            caso 3
                estCiv[i] := "Viuvo"
                viuvos := viuvos + 1
                se sexos[i] = "F" entao
                    se viuvaMaisNova = -1 entao
                        viuvaMaisNova := i
                    senao
                        se (idades[viuvaMaisNova] > idades[i]) entao
                        viuvaMaisNova := i
                        fimse
                    fimse
                fimse
                
            caso 4
                estCiv[i] := "Divorciado"
                divorciados := divorciados + 1
            outrocaso
                limpatela
                escreval("Opcao invalida, tente novamente!")
        fimescolha
    fimenquanto
fimpara


escreval(" Foram cadastradas:")
escreval(qtM, " pessoas do sexo masculino")
escreval(qtF, " pessoas do sexo feminino")

escreval("A media dos salarios masculinos foi de R$", (salTotalM/qtM):6:2)
escreval("A media dos salarios femininos foi de R$", (salTotalF/qtF):6:2)

escreval("A media da idade das mulheres foi de", (idadeTotalF/qtF):6:2)

se (viuvaMaisNova <> -1) entao
    escreval("A viuva mais nova foi a pessoa numero", viuvaMaisNova, " com a idade de", idades[viuvaMaisNova])
fimse

se (solteiroMaisVelho <> -1) entao
    escreval("O solteiro mais velho foi a pessoa de numero", solteiroMaisVelho, " com a idade de ", idades[solteiroMaisVelho])
fimse

//calculo do maior estado civil
escreval("O estado civil mais frequante foi", maior(casados, solteiros, viuvos, divorciados), " com", maiorN(casados, solteiros, viuvos, divorciados), " induviduos")
escreval("O estado civil menos frequante foi", menor(casados, solteiros, viuvos, divorciados), " com", menorN(casados, solteiros, viuvos, divorciados), " induviduos")

Fimalgoritmo