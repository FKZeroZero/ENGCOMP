Algoritmo "semnome"
// Disciplina  : Algoritmos
// Descrição   : Calcular a idade do usuario e exibir na tela
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 10/10/2021
Var
// Variaveis:
nome : caracter
idade, anoNascimento, anoAtual : inteiro


Inicio
// O algoritmo pergunta o nome do usuario, o cumprimenta e pergunta
// o seu ano de nascimento a fim de descobrir a sua idade
//
// O algoritmo considera que o usuario ja tenha comemorado aniversario
// no ano atual
// Logica:

escreval("Ola, como voce se chama?")
leia(nome)
escreval("Legal, ", nome, " eh um belo nome.")
escreval("Em que ano voce nasceu, ", nome, "?")
leia(anoNascimento)

anoAtual := 2021
idade := anoAtual - anoNascimento

escreval("Nossa, que legal. Isso quer dizer que voce tem", idade, " anos.")
escreval("Foi um prazer conhecer voce, ", nome)

Fimalgoritmo