/*
*******************************************
** Universidade Estadual do Maranhão      *
** Aluno: Gustavo de Sousa Marques        *
** Disciplina: Linguagem de programação   *
** ****************************************
*/

/*
** A empresa XKW concedeu um bônus de 20% do valor do
** salário a todos os funcionários com tempo de trabalho
** na empresa igual ou superior a 5 anos e de 10% aos
** demais. Faça um programa que receba o salário e o
** tempo de serviço de um funcionário, calcule e mostre
** o valor do bônus recebido por ele. Valide estes
** valores da entrada.
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
    float salario = -1;
    int tempo = -1;
    int op = 1;

    while(op == 1)
    {
        op = -1;
        if(salario < 0)
        {
            printf("Informe o salario do funcionario: ");
            scanf("%f", &salario);
            clbuf();
        }

        if(salario < 0)
        {
            system("cls");
            printf("\033[0;31m");
            printf("ERRO: Valor de salario invalido, tente novamente.\n");
            printf("\033[0;0m");
            op = 1;
        }
        else
        {
            printf("\033[0;32m");
            printf("Salario: R$%.2f.\n", salario);
            printf("\033[0;0m");
            printf("Informe o tempo de servico em anos: ");
            scanf("%i", &tempo);
            clbuf();

            if(tempo < 0)
            {
                system("cls");
                printf("\033[0;31m");
                printf("ERRO: Tempo de servico invalido, tente novamente.\n");
                printf("\033[0;0m");
                op = 1;
            }
            else
            {
                system("cls");
                printf("Salario: \033[0;32mR$%.2f\033[0;0m.\n", salario);
                printf("Tempo de servico: %i anos.\n", tempo);
                if(tempo >= 5)
                {
                    printf("O funcionario deve receber um bonus de 20%%, no valor de \033[0;32mR$%.2f\033[0;0m.\n", salario*0.2);
                }
                else
                {
                    printf("O funcionario deve receber um bonus de 10%%, no valor de \033[0;32mR$%.2f\033[0;0m.\n", salario*0.1);
                }
                system("pause");
                system("cls");
            }
        }
        while ((op != 1) && (op != 2))
        {
            printf("O que fazer a seguir?\n");
            printf("1. Calcular bonus novamente.\n2. Sair.\n");
            scanf("%i", &op);
            clbuf();

            if ((op != 1) && (op != 2))
            {
                system("cls");
                printf("\033[0;31m");
                printf("OPCAO INVALIDA!!\n");
                printf("\033[0;0m");
            }
            else if (op == 1)
            {
                salario = -1;
                tempo = -1;
                system("cls");
            }
        }
    }
    return 0;
}
