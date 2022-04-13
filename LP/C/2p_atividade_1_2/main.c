/*
*******************************************
** Universidade Estadual do Maranhão      *
** Aluno: Gustavo de Sousa Marques        *
** Disciplina: Linguagem de programação   *
** ****************************************
*/

/*
** Atividade 1.2
** Faça um programa que receba três números inteiros e
** mostre o maior deles. Considere que os números
** podem ser iguais.
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
    system("cls");
    int n[3];
    int op = 1;
    int maior;

    while(op == 1)
    {
        maior = 0;
        for(int i = 0; i < 3; i++)
        {
            n[i] = 0;
            printf("\033[0;91m");
            printf("ATENCAO: Valores nao numericos serao considerados 0(zero).\n");
            printf("\033[0;0m");
            printf("Digite o numero para o indice %i: ", i);
            scanf("%i", &n[i]);
            system("cls");
            clbuf();
            if(i == 0)
            {
                maior = n[i];
            }
            else
            {
                if(n[i] > maior)
                {
                    maior = n[i];
                }
            }
        }

        system("cls");
        printf("O maior valor inserido foi: %i\n", maior);
        op = -1;
        while((op != 1) && (op != 2))
        {
            printf("Digite uma opcao:\n1. Inserir novos numeros.\n2. Sair.\n");
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
