/*
*******************************************
** Universidade Estadual do Maranhão      *
** Aluno: Gustavo de Sousa Marques        *
** Disciplina: Linguagem de programação   *
** ****************************************
*/

/*
** Implemente um programa para aprovar empréstimo bancário.
** O código deve pedir 3 informações: valor do empréstimo,
** quantidade de parcelas e o salário do solicitante. O empréstimo
** deve ser aprovado caso o valor das parcelas represente,
** no máximo, até 30% do salário do solicitante. Valide estes valores na entrada.
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
    int op = 1;
    int nParc = -1;
    float emp = -1;
    float sal = -1;

    while (op == 1)
    {
        while(emp < 0)
        {
            printf("Qual o valor do emprestimo?\n");
            scanf("%f", &emp);
            clbuf();
            if (emp < 0)
            {
                system("cls");
                printf("\033[0;31m");
                printf("ERRO: Valor de emprestimo invalido, tente novamente.\n");
                printf("\033[0;0m");
            }
        }

        while(nParc < 1)
        {
            printf("Qual a quantidade de parcelas?\n");
            scanf("%i", &nParc);
            clbuf();
            if (nParc < 1)
            {
                system("cls");
                printf("\033[0;31m");
                printf("ERRO: Numero de parcelas invalido, tente novamente.\n");
                printf("\033[0;0m");
            }
        }

        while(sal < 0)
        {
            printf("Qual o valor do salario do solicitante?\n");
            scanf("%f", &sal);
            clbuf();
            if (sal < 0)
            {
                system("cls");
                printf("\033[0;31m");
                printf("ERRO: Salario invalido, tente novamente.\n");
                printf("\033[0;0m");
            }
        }

        system("cls");

        if((emp/nParc) > (sal*0.3))
        {

            printf("Salario informado: \033[0;32mR$%.2f\033[0;0m\n", sal);
            printf("Numero de parcelas: %i\n", nParc);
            printf("Valor de cada parcela: R$%.2f\n", (emp/nParc));
            printf("\033[0;31mEmprestimo negado!\033[0;0m\n");
        }
        else
        {
            printf("Salario informado: \033[0;32mR$%.2f\033[0;0m\n", sal);
            printf("Numero de parcelas: %i\n", nParc);
            printf("Valor de cada parcela: R$%.2f\n", (emp/nParc));
            printf("\033[0;32mEmprestimo Aprovado!\033[0;0m\n");
        }

        system("pause");
        op = -1;
        system("Cls");
        while((op != 1) && (op != 2))
        {
            printf("O que fazer a seguir?\n");
            printf("1. Realizar nova analise.\n2. Sair.\n");
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
                nParc = -1;
                emp = -1;
                sal = -1;
                system("cls");
            }
        }
    }
	return 0;
}
