/* Enunciado:
Elabora um programa que solicita ao usuário a quantidade de números primos que ele quer que
seja impresso. Após imprima na tela a quantidade de números primos escolhida.
*/

programa
{
	funcao inicio()
	{
		caracter teste
		inteiro n, nprimos = 0
		
		faca
		{
			limpa()
			escreva("Questão 7 do trabalho de Lógica de Programação, professor André Luiz -- Grupo 2.\n")
			escreva("\nEste programa pergunta ao usuário quantos números primos ele deseja ver e então imprime na tela.\n")
			linha()
			
			escreva("\nQuantos números primos você deseja ver?: ")
			leia(n)
			linha()
			escreva("\n")

			para(inteiro i = 1; nprimos < n; i++)
			{	
				inteiro div = 0
							
				para(inteiro j = 1; j <= i; j++)
				{
				se(i%j == 0){
				div++
				}
			}
				se(div <= 2)
				{
					escreva(i," ")
					nprimos++
				}
			}

			nprimos = 0

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
 * @POSICAO-CURSOR = 836; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */