/* Enunciado:
Escreva um programa que leia 10 nomes de alunos e duas notas de avaliações para cada aluno.
Calcule e escreva a média de cada aluno, seguido da informação se foi aprovado ou reprovado.
Considere como média para aprovação 6. Dica: Utilize quantos vetores precisar. Ex. Saída: Fulano
de tal P1= 8.0, P2=6.0, Media=7.0, aprovado!
*/

programa
{
	
	funcao inicio()
	{
		cadeia nome[10]
		real notas[10][3]
		caracter teste

		faca
		{
			limpa()
			escreva("Questão 3 do trabalho de Lógica de Programação, professor André Luiz -- Grupo 2.\n")
			escreva("\nEste programa recebe o nome de dez alunos e duas notas de cada, depois calcula a média e diz se está aprovado ou reprovado \ncom base em uma média mínima de 6.\n")
			linha()
			
			para(inteiro cont = 0; cont < 10; cont++)
			{
				escreva("\nNome do " + (cont+1) + "º aluno: ")
				leia(nome[cont])
				
				para(inteiro cont2 = 0; cont2 < 2; cont2++)
				{
					escreva("Nota na P" + (cont2+1) + ": ")
					leia(notas[cont][cont2])
				}

				notas[cont][2] = ((notas[cont][0] + notas[cont][1]) / 2)

				linha()
			}

			para(inteiro cont = 0; cont < 10; cont++)
			{
				se(notas[cont][2] >= 7)
				{
					escreva("\nAluno: " + nome[cont] + " | P1: " + notas[cont][0] + " | P2: " + notas[cont][1] + " | Média: " + notas[cont][2] + " | Aprovado!! ;)\n")
				}
				senao
				{
					escreva("\nAluno: " + nome[cont] + " | P1: " + notas[cont][0] + " | P2: " + notas[cont][1] + " | Média: " + notas[cont][2] + " | Reprovado. :(\n")
				}
			}

			linha()
			escreva("\nDeseja usar o programa novamente? Digite 's' para sim ou 'n' para não: ")
			leia(teste)

			enquanto(teste != 's' e teste != 'S' e teste != 'n' e teste != 'N')
			{
				escreva("\nOpção inválida! Digite 's' para sim ou 'n' para não: ")
				leia(teste)
			}
		}enquanto(teste == 's' ou teste == 'S')	

		linha()
		escreva("\nObrigado por usar o programa!\n")
	}

	funcao linha()
	{
		para(inteiro i = 0; i < 60; i++) // Escrever uma linha para melhor separar as mensagens.
		{
		  escreva ("-")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 840; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */