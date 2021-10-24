Algoritmo "semnome"
// Disciplina  : Algoritmos
// Professor   : Pedro Brandao Neto
// =================================
//
// ATENCAO
// POR PADRAO O ALGORITMO ESTA TRABALHANDO COM VALORES ALEATORIOS
// A PARTE QUE O USUARIO ATRIBUI VALORES ESTA COMENTADA
//
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 23/10/2021

// 11) Elabore um algoritmo que registre informacoes de 50 pessoas.
//     Cada pessoa deve informar o seu sexo (F ou M), salario, idade
//     e estado civil (Casado, Solteiro, Viuvo, ou Divorciado).
//     Entao, o algoritmo devera:
//
// a) Cadastrar as 50 Pessoas
// b) Calcular e exibir a quantidade de pessoas de cada sexo, a
//      media do salario de cada sexo e, por ultimo, a pessoa
//      que tem o menor e maior salario.
// c) A media de idade das mulheres;
// d) A viuva mais nova e o solteiro mais velho;
// e) O estado civil de maior e menor ocorrência.

Var
sexos : vetor [1..50] de caracter
salarios : vetor [1..50] de real
idades : vetor [1..50] de inteiro
estCiv : vetor [1..50] de caracter
i, max, auxIntM, auxIntF, auxIntX, auxIntY : inteiro
auxRealM, auxRealF : real
auxCar : caracter

Inicio
max := 50 // numero de usuarios a serem cadastrados (atencao ao tamanho dos vetores)

// COLETA DE DADOS
// =============================================================================
para i de 1 ate max faca
    sexos[i] := "null"
    // VALIDACAO E ATRIBUICAO DO SEXO
    // ==============================
    limpatela
    enquanto (sexos[i] = "null") faca
        escreval("Informe o sexo da pessoa", i, "(M/F):")
        //leia(sexos[i])
              auxIntM := randI(2)       //
              se auxIntM = 1 entao      //
              sexos[i] := "M"           // Gera sexos aleatoriamente
              senao                     //
              sexos[i] := "F"           //
              fimse                     //
        se (sexos[i] <> "M") E (sexos[i] <> "F") entao
            sexos[i] := "null"
            limpatela
            escreval("Opcao invalida, tente novamente!")
        fimse
    fimenquanto
    
    // VALIDACAO E ATRIBUICAO DO SALARIO
    // =================================
    salarios[i] := -1
    limpatela
    enquanto salarios[i] < 0 faca
        escreval("Informe o salario da pessoa", i, ":")
        //leia(salarios[i])
        salarios[i] := randI(10000)/1    // Gera valores aleatorios de 0 a 9999
        se salarios[i] < 0 entao
            limpatela
            escreval("O salario nao pode ser negativo, tente novamente!")
        fimse
    fimenquanto
    
    // VALIDACAO E ATRIBUICAO DA IDADE
    // ===============================
    idades[i] := -1
    limpatela
    enquanto idades[i] < 0 faca
        escreval("Informe a idade da pessoa", i, ":")
        //leia(idades[i])
        idades[i] := randI(101) // Gera idades aleatorias de 0 a 100(<101)
        se idades[i] < 0 entao
            limpatela
            escreval("A idade nao pode ser um numero negativo! Tente novamente!")
        fimse
    fimenquanto
    
    //VALIDACAO E ATRIBUICAO DO ESTADO CIVIL
    // =====================================
    
    estCiv[i] := "null"
    limpatela
    enquanto (estCiv[i] = "null") faca
        escreval("Informe a opcao correspondente ao estado civil da pessoa", i, ":")
        escreval("1. Casado")
        escreval("2. Solteiro")
        escreval("3. Viuvo")
        escreval("4. Divorciado")
        //leia(auxIntM)
        auxIntM := randI(5)     // Gera valores aleatorios de 0 a 4(<5)
        escolha auxIntM
            caso 1
                estCiv[i] := "Casado"
            caso 2
                estCiv[i] := "Solteiro"
            caso 3
                estCiv[i] := "Viuvo"
            caso 4
                estCiv[i] := "Divorciado"
            outrocaso
                limpatela
                escreval("Opcao invalida, tente novamente!")
        fimescolha
    fimenquanto
fimpara

// ECALCULO E EXIBICAO DE RESULTADOS:
// =============================================================================
limpatela
// ===========================================================================|
// Calcular e exibir a para cada sexo o numero de individuos e o salario medio|
// ===========================================================================|
auxIntM := 0
auxIntF := 0
escreval("| =============================================================")
escreval("| Foram cadastradas:")
para i de 1 ate max faca
    se (sexos[i] = "M") entao
        auxIntM := auxIntM + 1
        auxRealM := auxrealM + salarios[i]
    senao
        auxIntF := auxIntF + 1
        auxRealF := auxrealF + salarios[i]
    fimse
fimpara
escreval("|", auxIntM, " pessoas do sexo masculino;")
escreval("|", auxIntF, " pessoas do sexo feminino;")
escreval("| ")
se (auxIntM <> 0) entao
escreval("| O salario medio do sexo masculino foi de R$", (auxRealM/auxIntM):6:2,";")
fimse
se (auxIntF <> 0) entao
escreval("| O salario medio do sexo feminino foi de R$", (auxRealF/auxIntF):6:2, ".")
fimse
escreval("| ")

// =========================================================================|
// Calcular a media de idade das mulheres                                   |
// Ja temos a quantidade de mulheres armazenada na variavel auxIntF         |
// basta agora obter o somatorio da idade das mulheres e dividir por auxIntF|
//                                                                          |
// A partir de agora nao precisaremos mais saber a quantidade de homens,    |
// entao podemos utilizar a variavel auxIntM para armazenar outros valores. |
// Utilizaremos ela para armazenar o somatorio das idades femininas         |
// =========================================================================|
auxIntM := 0

se (auxIntF = 0) entao
    escreval("| Nao foram encontradas mulheres cadastradas para calcular")
    escreval("| a media de idade.")
senao
    para i de 1 ate max faca
        se (sexos[i] = "F") entao
            auxIntM := auxIntM + idades[i]
        fimse
    fimpara
    escreval("| A media das idades das mulheres foi de", (auxIntM/auxIntF):6:2, " anos.")
fimse

escreval("| ")
// ==============================================================|
// Descobrir a viuva mais jovem e o solteiro mais velho          |
// Utilizaremos as mesmas variaveis de antes, apenas resetando o |
// valor das mesmas                                              |
// ==============================================================|
auxIntM := -1
auxIntF := -1

para i de 1 ate max faca
    se (sexos[i] = "M") entao
        se (estCiv[i] = "Solteiro") entao
            se (auxIntM = -1) entao
                auxIntM := i
            senao
                se (idades[i] > idades[auxIntM]) entao
                    auxIntM := i
                fimse
            fimse
        fimse
    senao
        se (estCiv[i] = "Viuvo") entao
            se (auxIntF = -1) entao
                auxIntF := i
            senao
                se (idades[i] < idades[auxIntF]) entao
                    auxIntF := i
                fimse
            fimse
        fimse
    fimse
fimpara

// Imprimir qual a viuva mais jovem e solteiro mais velho, caso exista
// ===================================================================
se (auxIntM <> -1) entao
    escreval("| O solteiro mais velho foi a pessoa numero", auxIntM, ", com", idades[auxIntM], " anos;")
senao
    escreval("| Nao foi encontrado nenhum solteiro cadastrado;")
fimse

se (auxIntF <> -1) entao
    escreval("| A viuva mais jovem foi a pessoa numero", auxIntF, ", com ", idades[auxIntF], " anos.")
senao
    escreval("| Nao foi encontrada nenhuma viuva cadastrada.")
fimse

escreval("| ")
// Calculo e exibicao de estados civis mais e menos frequentes
// ===========================================================
auxIntM := 0 // vai armazenar o numero de casados
auxIntF := 0 // vai armazenar o numero de solteiros
auxIntX := 0 // vai armazenar o numero de viuvos
auxIntY := 0 // vai armazenar o numero de divorciados
para i de 1 ate max faca
    escolha estCiv[i]
    caso "Casado"
        auxIntM := auxIntM + 1
    caso "Solteiro
        auxIntF := auxIntF + 1
    caso "Viuvo"
        auxIntX := auxIntX + 1
    caso "Divorciado"
        auxIntY := auxIntY + 1
    fimescolha
fimpara

// ==========================================================================|
// Agora a variavel i nao eh mais necessaria, vamos utiliza-la para armazenar|
// as quantidades maior frequencia e menor frequencia dos estados civis      |
// ==========================================================================|
se (auxIntM > AuxIntF) entao
    auxCar := "casado"
    i := auxIntM
    se (auxIntX > i) entao
        auxCar := "viuvo"
        i := auxIntX
        se (auxIntY > i) entao
            auxCar := "divorciado"
            i := auxIntY
        fimse
    senao
        se (auxIntY > i) entao
            auxCar := "divorciado"
            i := auxIntY
        fimse
    fimse
senao
    auxCar := "solteiro"
    i := auxIntF
    se (auxIntX > i) entao
        auxCar := "viuvo"
        i := auxIntX
        se (auxIntY > i) entao
            auxCar := "divorciado"
            i := auxIntY
        fimse
    senao
        se (auxIntY > i) entao
            auxCar := "divorciado"
            i := auxIntY
        fimse
    fimse
fimse
escreval("| O estado civil mais frequente foi ", auxCar, " com", i, " pessoas;")

se (auxIntM < AuxIntF) entao
    auxCar := "casado"
    i := auxIntM
    se (auxIntX < i) entao
        auxCar := "viuvo"
        i := auxIntX
        se (auxIntY < i) entao
            auxCar := "divorciado"
            i := auxIntY
        fimse
    senao
        se (auxIntY < i) entao
            auxCar := "divorciado"
            i := auxIntY
        fimse
    fimse
senao
    auxCar := "solteiro"
    i := auxIntF
    se (auxIntX < i) entao
        auxCar := "viuvo"
        i := auxIntX
        se (auxIntY < i) entao
            auxCar := "divorciado"
            i := auxIntY
        fimse
    senao
        se (auxIntY < i) entao
            auxCar := "divorciado"
            i := auxIntY
        fimse
    fimse
fimse
escreval("| O estado civil menos frequente foi ", auxCar, " com", i, " pessoas.")
escreval("| =============================================================")

Fimalgoritmo