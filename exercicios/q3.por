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
		real nota[20]
		real media[10]
		caracter teste

		faca
		{
			limpa()
			escreva("Questão 3 do trabalho de Lógica de Programação, professor André Luiz -- Grupo 2.\n")
			escreva("\nEste programa recebe o nome de dez alunos e duas notas de cada, depois calcula a média e diz se está aprovado ou reprovado \ncom base em uma média mínima de 6.\n")
			linha()
			
			para(inteiro cont = 0; cont <= 9; cont++)
			{
				escreva("\nNome do(a) aluno(a): ")
				leia(nome[cont])
				linha()
				escreva("\nNota na P1: ")
				leia(nota[cont])
				linha()
	
				enquanto(nota[cont] > 10 ou nota[cont] < 0)
				{
					escreva("\nA nota só pode ser um valor real de 0 e 10. Por favor, insira a nota corretamente: ")
					leia(nota[cont])
					linha()
				}
				
				escreva("\nNota na P2: ")
				leia(nota[cont + 1])
				linha()
	
				enquanto(nota[cont + 1] > 10 ou nota[cont + 1] < 0)
				{
					escreva("\nA nota só pode ser um valor real de 0 e 10. Por favor, insira a nota corretamente: ")
					leia(nota[cont + 1])
					linha()
				}
			}
	
			para(inteiro cont = 0; cont <= 9; cont++)
			{
				media[cont] = (nota[cont] + nota[cont + 1]) / 2
			}
	
			para(inteiro cont = 0; cont <= 9; cont++)
			{
				se(media[cont] >= 6)
				{
					escreva("\n" + nome[cont] + ", P1 = " + nota[cont] + ", P2 = " + nota[cont + 1] + ", Média = " + media[cont] + ". Está Aprovado. :)\n")
					linha()
				}
				senao
				{
					escreva("\n" + nome[cont] + ", P1 = " + nota[cont] + ", P2 = " + nota[cont + 1] + ", Média = " + media[cont] + ". Está Reprovado. :(\n")
					linha()
				}
			}

			escreva("\n")
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
 * @POSICAO-CURSOR = 2096; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */