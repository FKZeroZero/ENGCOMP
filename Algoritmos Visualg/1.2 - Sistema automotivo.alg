Algoritmo "semnome"
// Disciplina  : Algoritmos
// Professor   : Pedro Brandao 
// Descricao   : 1.3 - Sistema de carro que emita um aviso caso o carro esteja
// Descricao   : desligado, com a chave na ignicao e pelo menos uma porta aberta
// Autor(a)    : Gustavo de Sousa Marques
// Data atual  : 04/10/2021
Var
p1, p2, p3, p4, igni, ligado : logico

Inicio
escreval("Escreva VERDADEIRO ou FALSO para as perguntas a seguir:")
escreval("O carro estah ligado?")
leia(ligado)
escreval("A chave estah na ignicao?")
leia(igni)
escreval("A porta 1 estah aberta?")
leia(p1)
escreval("A porta 2 estah aberta?")
leia(p2)
escreval("A porta 3 estah aberta?")
leia(p3)
escreval("A porta 4 estah aberta?")
leia(p4)

se p1 ou p2 ou p3 ou p4 entao
   se igni entao
      se ligado entao
      senao
           escreva("ALERTA!!!!")
      fimse
   fimse
fimse

Fimalgoritmo