/* Enunciado:
Elabore um programa em que o usuário informa dois números (n1 e n2). O primeiro número (n1)
indica o início do laço de repetição e o segundo número (n2) o fim do laço de repetição. O
programa deverá imprimir a soma de todos os números pares no intervalo entre n1 e n2.
*/

programa
{
	inteiro n1, n2, subs, soma = 0
	caracter teste
	
	funcao inicio()
	{
		faca
		{
			limpa()
			escreva("Questão 6 do trabalho de Lógica de Programação, professor André Luiz -- Grupo 2.\n")
			escreva("\nEste programa recebe 2 números e depois soma todos os pares entre esses 2 números.\n")
			linha()
			
			escreva("\nDigite o 1º número: ")
			leia(n1)
			escreva("Digite o 2º número: ")
			leia(n2)
			linha()
			
			enquanto(n2 < n1)
			{
				escreva("\nO 2° número precisa ser maior que o 1° número. Digite o 2° número: ")
				leia(n2)
				linha()
			}

	 		subs = n1
	 		
			para(subs = subs; subs < n2; subs++)
			{
				se ((subs%2) == 0)
				{
					soma += subs
				}
			}
				
			escreva("\nA soma dos números pares entre ", n1 ," e ", n2 ," é: ", soma)
			
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
 * @POSICAO-CURSOR = 295; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
