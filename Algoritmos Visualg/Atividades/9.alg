Algoritmo "semnome"
// Disciplina  : Algoritmos
// Professor   : Pedro Brandao Neto
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 18/10/2021
Var
hh, mm, ss, dia, mes, ano, velocidade : inteiro
valida : logico

// ===============================================
// Funcao para identificar se um ano eh bissexto
// Ela retorna quantos dias tem o mes de fevereiro
// bissexto (ano)
funcao bissexto(ano : inteiro) : inteiro
var aux : inteiro
inicio
    se (ano % 4) = 0 entao
        se (ano % 100) = 0 entao
            se (ano % 400) = 0 entao
                aux := 29
            senao
                aux := 28
            fimse
        senao
            aux := 29
        fimse
    senao
    aux := 28
    fimse
    // A funcao retornara 29 para bissexto ou 28 para nao bissexto
    retorne aux
fimfuncao

// ====================================================
// Funcao para verificar se o mes tem 30, 31 ou 29 dias
// qntDias (ano, mes)
funcao qntDias(ano, mes : inteiro) : inteiro
var aux : inteiro
inicio
    se (mes = 2) entao
        aux := bissexto(ano)
    senao
        se (mes = 4) OU (mes = 6) OU (mes = 9) OU (mes = 11) entao
            aux := 30
        senao
            aux := 31
        fimse
    fimse
    // A funcao retorna o numero de dias do mes em questao
    retorne aux
fimfuncao

// ====================================================
// Funcao para validar data
funcao valData(ano, mes, dia : Inteiro) : logico
var
auxInt : inteiro
auxLog : logico
inicio
limpatela
auxInt := qntDias(ano, mes)
auxLog := VERDADEIRO
// Condicional para testar o mes
se (mes < 1) OU (mes > 12) entao
    escreval("Mes invalido! O mes deve ser um numero de 1 a 12.")
    auxLog := FALSO
senao
    // Condicional para testar o dia
    se (dia > auxInt) entao
        escreval("Dia invalido para a o mes selecionado.")
        escreval("O mes", mes, " do ano de", ano, " tem apenas", auxInt, " dias.")
        auxLog := FALSO
    senao
        se (dia < 1 ) entao
            escreval("Dia invalido! O dia nao pode ser menor que 1")
            auxLog := FALSO
        fimse
    fimse
fimse

retorne auxLog
fimfuncao

// ========================
// Funcao para validar hora
funcao valTempo(hh, mm, ss : inteiro) : logico
var auxLog : logico
inicio
auxLog := VERDADEIRO
se (hh > 23) OU (hh < 0) entao
    escreval("ERRO!")
    escreval("A hora deve ser um numero de 0 a 23!")
    auxLog := FALSO
senao
    se (mm > 59) OU (mm < 0) entao
        escreval("ERRO!")
        escreval("Os minutos devem ser um numero de 0 a 59!")
        auxLog := FALSO
    senao
        se (ss > 59) OU (ss < 0) entao
            escreval("ERRO!")
            escreval("Os segundos devem ser um numero de 0 a 59!")
            auxLog := FALSO
        fimse
    fimse
fimse
retorne auxLog
fimfuncao

Inicio
// Criar uma aplicavao Tempo e Data que permita:
// Computar data atraves do tempo. Assegurar que segundos, minutos e horas
// sejam consistentes (validos). Tambem, que os dias dos meses sejam
// consistentes, conforme a tabela a seguir:
// |------------------------------------|     A saida deve ter o seguinte
// |  MES      |        Dias            |     formato:
// |-----------|------------------------|
// | Janeiro   | 31                     |     hh:mm:ss ::: dia/mes/ano
// | Fevereiro | 28(29 se ano bissexto) |
// | Marco     | 31                     |
// | Abril     | 30                     |
// | Maio      | 31                     |
// | Junho     | 30                     |
// | Julho     | 31                     |
// | Agosto    | 31                     |
// | Setembro  | 30                     |
// | Outubro   | 31                     |
// | Novembro  | 30                     |
// | Dezembro  | 31                     |
// |------------------------------------|
// ======================================

valida := FALSO
enquanto (valida = FALSO) faca
    escreval("Voce deseja que o programa funcione em tempo real ou rapidamente?")
    escreval("")
    escreval("1. Tempo real")
    escreval("2. Velocidade Rapida")
    escreval("3. Velocidade Maxima")
    leia(velocidade)

    se (velocidade = 1) OU (velocidade = 2) OU (velocidade = 3) entao
        valida := VERDADEIRO
    senao
        limpatela
        escreval("Opcao invalida, tente novamente.")
    fimse
fimenquanto
limpatela
//Resetar o validador
valida := FALSO

//Entrada de dados de data
enquanto (valida = FALSO) faca
    escreval("Digite o ano desejado:")
    leia(ano)
    escreval("Digite o numero do mes:")
    leia(mes)
    escreval("Informe o dia:")
    leia(dia)

    limpatela
    valida := valData(ano, mes, dia)

fimenquanto
// Resetar o validador
valida := FALSO

//Entrada de dados do tempo
enquanto valida = FALSO faca
    valida := VERDADEIRO
    escreval("insira as horas(0 - 23):")
    leia(hh)
    escreval("insira os minutos(0 - 59):")
    leia(mm)
    escreval("Insira os segundos(0 - 59):")
    leia(ss)
    
    limpatela
    valida := valTempo(hh, mm, ss)
fimenquanto
    //Loop do relogio
    enquanto VERDADEIRO faca
        limpatela
        escreval(hh, " :", mm, " :", ss, " :::", dia, " /", mes, " /", ano)
        escreval("")
        escreval("Para finalizar pressione CTRL + F2.")
        ss := ss + 1

        se (ss > 59) entao
            ss := 0
            mm := mm + 1
            se (mm > 59) entao
                mm := 0
                hh := hh + 1
                se (hh > 23) entao
                    hh := 0
                    dia := dia + 1
                    se (dia > qntDias(ano, mes)) entao
                        dia := 1
                        mes := mes + 1
                        se (mes > 12) entao
                            mes := 1
                            ano := ano + 1
                        fimse
                    fimse
                fimse
            fimse
        fimse
        
        // Definir se funciona em tempo real ou mais rapido
        se velocidade = 1 entao
            timer 1000
            timer 0
            senao
            se velocidade = 2 entao
                timer 100
                timer 0
            fimse
        fimse

    fimenquanto

Fimalgoritmo