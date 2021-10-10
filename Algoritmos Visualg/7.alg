Algoritmo "semnome"
// Disciplina  : Algoritmos'-
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/10/2021
Var
h, m, s, r, c, teste, dummy: inteiro

// A variavel "dummy" serve apenas para receber valor resultante da espera
// pelo comando ENTER do usuario
// Caso o usuario digite algum valor ele caira nesta variavel
// A variavel teste serve para fazer o loop dos testes de validade dos
// dados inseridos no Relogio.
// A necessidade das demais variaveis esta descrita no inicio dos comandos
// onde as mesmas sao inicializadas
Inicio
//TODO:
//fazer o timer

r := 0 // Faz o loop principal
h := 0 // Guarda as horas
m := 0 // Guarda os minutos
s := 0 // Guarda os segundos
c := 0 // escolha de qual funcao rodar e faz o loop de cada uma
//=====================MENU===============
enquanto r = 0 faca
    limpatela
    escreval("")
    escreval("Digite a opcao desejada:")
    escreval("1. Relogio")
    escreval("2. Cronometro")
    escreval("3. Timer")
    escreval("4. Sair")
    leia(c)
    
    escolha c
        //Relogio
        caso 1
            //Loop para teste da hora informada
            limpatela
            enquanto teste = 0 faca
            teste := 1
            escreval("insira as horas(0 - 23):")
            leia(h)
            escreval("insira os minutos(0 - 59):")
            leia(m)
            escreval("Insira os segundos(0 - 59):")
            leia(s)
            
            //Testar se foi informada uma hora valida
            se (h > 23) OU (m > 59) OU (s > 59) OU (h < 0) OU (m < 0) ou (s < 0) entao
                limpatela
                escreval("ERRO!")
                escreval("Os dados informados nao se encontram dentro de um")
                escreval("intervalo valido!!")
                escreval("Tente novamente.")
                teste := 0
            fimse
            fimenquanto
            
            //Loop do relogio
            enquanto c = 1 faca

                limpatela
                escreval(h, " :", m, " :", s)
                escreval("")
                escreval("Para finalizar pressione CTRL + F2")
                
                s := s + 1
                
                se (s > 59) entao
                    s := 0
                    m := m + 1
                fimse
                se (m > 59) entao
                    m := 0
                    h := h + 1
                fimse
                se (h > 23) entao
                    h := 0
                fimse
                timer 1000
                timer 0

            fimenquanto
            
        caso 2
            //Cronometro
            enquanto (c = 2) faca
                limpatela
                escreval(" 0 : 0 : 0")
                escreval("")
                escreval("Pressione ENTER para iniciar")
                leia(dummy)
                
                enquanto (teste = 0) faca

                    s := s + 1

                    se (s > 59) entao
                        s := 0
                        m := m + 1
                    fimse
                    se (m > 59) entao
                        m := 0
                        h := h + 1
                    fimse
                    se (h > 23) entao
                        teste := 0
                    fimse
                    
                    timer 1000
                    timer 0
                    limpatela
                    
                    escreval(h, " :", m, " :", s)
                    escreval("")
                    escreval("O cronometro funciona ate 24h")
                    escreval("Para finalizar pressione CTRL + F2")
                fimenquanto
            fimenquanto
        caso 3
            enquanto (c = 3) faca
                enquanto teste = 0 faca
                    limpatela
                    teste := 1
                    escreval("")
                    escreval(" 0 : 0 : 0")
                    escreval("")
                    escreval("Digite quantas horas deseja adicionar ao timer:")
                    leia(h)
                    limpatela
                    escreval("")
                    escreval(h, " : 0 : 0")
                    escreval("")
                    escreval("Digite quantos minutos deseja adicionar ao timer:")
                    leia(m)
                    limpatela
                    escreval("")
                    escreval(h, " :", m, " : 0")
                    escreval("")
                    escreval("Digite quantos segundos deseja adicionar ao timer:")
                    leia(s)
                    //Testar se foi informada uma hora valida
                    se (m > 59) OU (s > 59) OU (h < 0) OU (m < 0) ou (s < 0) entao
                        limpatela
                        escreval("ERRO!")
                        escreval("Os dados informados nao se encontram dentro de um")
                        escreval("intervalo valido!!")
                        escreval("Tente novamente.")
                        teste := 0
                        timer 2000
                        timer 0
                    fimse
                fimenquanto
                
                limpatela
                escreval("")
                escreval(h, " :", m, " :", s)
                escreval("")
                escreval("Timer pronto. Pressione ENTER para iniciar...")
                leia(dummy)
                //Agora comeca o loop do timer
                enquanto (s <> -1) E (m <> -1) E (h <> -1) faca

                    s := s - 1
                    se (s < 0) entao
                        s := 59
                        m := m - 1
                    fimse
                    se (m < 0) entao
                        m := 59
                        h := h - 1
                    fimse
                    se (h < 0) entao
                        s := -1
                        m := -1
                        h := -1
                    fimse
                    
                    timer 1000
                    timer 0
                    limpatela
                    escreval("")
                    escreval(h, " :", m, " :", s)
                    escreval("")
                    escreval("Aguarde o timer, ou")
                    escreval("pressione CTRL + F2 para finalizar.")
                    
                fimenquanto
                
                limpatela
                escreval("Fim da contagem")
                leia(dummy)
                escreval
            fimenquanto
        caso 4
            escreval("Obrigado por utilizar o programa!")
            r := 1
            timer 2000
            timer 0
        outrocaso
            escreval("")
            escreval("Opcao invalida!")
            timer 2000
            timer 0
    fimescolha

fimenquanto //FIM MENU
Fimalgoritmo