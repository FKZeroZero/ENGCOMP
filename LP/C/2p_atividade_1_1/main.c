/*
*******************************************
** Universidade Estadual do Maranhão      *
** Aluno: Gustavo de Sousa Marques        *
** Disciplina: Linguagem de programação   *
** ****************************************
*/

/*
** Atividade 1.1
** Faça um programa que receba a idade do usuário e
** verifique se ele tem 18 anos ou mais. Se a resposta
** for positiva, escrever "Maior de idade", senão,
** escrever "Menor de idade".
*/
#include <stdio.h>
#include <stdlib.h>

void clbuf()
{
    int test = getc(stdin);
    while(test != '\n' && test != EOF)
    {
        test = getc(stdin);
    }
}

int main(void)
{
    int idade = -1;
    int op = 1;

    while (op == 1)
    {
        op = -1;
        printf("Digite a idade do usuario: ");
        scanf("%i", &idade);
        clbuf();
        system("cls");
        if(idade >= 18)
        {
            printf("O usuario eh maior de idade.\n");
            idade = -1;
        }
        else if(idade < 0)
        {
            printf("\033[0;91m");
            printf("ERRO: Idade invalida, tente novamente.\n");
            printf("\033[0;0m");
            op = 1;
        }
        else
        {
            printf("O usuario eh menor de idade\n");
            idade = -1;
        }
        while ((op != 1) && (op != 2))
        {
            printf("O que fazer a seguir?\n");
            printf("1. Testar outra idade.\n2. Sair.\n");
            scanf("%i", &op);
            clbuf();

            if ((op != 1) && (op != 2))
            {
                system("cls");
                printf("\033[0;91m");
                printf("OPCAO INVALIDA!!\n");
                printf("\033[0;0m");
            }
            else if (op == 1)
            {
                system("cls");
            }
        }
    }
    return 0;
}
