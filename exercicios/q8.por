/* Enunciado:
Elabore um programa que peça ao usuário que entre com 10 números. Após solicite que o usuário
escolha se quer que sejam impressos os números em ordem crescente ou decrescente e conforme
a escolha do usuário e faça a impressão da série.
*/

programa
{
	inteiro num[10], check = 1, aux
	caracter teste, teste2
	
	funcao inicio()
	{
		faca
		{
			limpa()
			escreva("Questão 8 do trabalho de Lógica de Programação, professor André Luiz -- Grupo 2\n")
			escreva("\nO programa receberá uma lista de 10 números na ordem preferida do usuário e depois demonstra\nem ordem crescente ou decrescente de acordo com a escolha do usuário.\n")
			linha()
			escreva("\n")
			para(inteiro cont = 0; cont <= 9; cont++)
			{
				escreva(cont+1 + "º Número: ")
				leia(num[cont])
			}

			linha()
			escreva("\nVocê deseja ver seus números em ordem crescente ou descrescente? 'c' para Crescente, 'd' para Decrescente: ")
			leia(teste)
	
			enquanto(teste != 'c' e teste != 'C' e teste != 'd' e teste != 'D')
			{
				escreva("\nOpção inválida. Por favor, insira 'c' para Crescente ou 'd' para Decrescente: ")
				leia(teste)
			}

			linha()
			escreva("\nOrdem dos números recebidos: ")
			para(inteiro cont = 0; cont <= 9; cont++)
			{
				escreva(num[cont], " ")
			}
			escreva("\n")
	
			se(teste == 'c' ou teste == 'C')
			{
				para(inteiro cont = 0; cont <= 9; cont++)
				{
					para(inteiro cont2 = 0; cont2 <= 9; cont2++)
					{
						se(num[cont2] > num[cont])
						{
							aux = num[cont]
							num[cont] = num[cont2]
							num[cont2] = aux
						}
					}
				}

				linha()
				escreva("\nOrdem dos números em crescente: ")
				para(inteiro cont = 0; cont <= 9; cont++)
				{
					escreva(num[cont], " ")
				}
			}
			senao se(teste == 'd' ou teste == 'D')
			{
				para(inteiro cont = 0; cont <= 9; cont++)
				{
					para(inteiro cont2 = 0; cont2 <= 9; cont2++)
					{
						se(num[cont2] < num[cont])
						{
							aux = num[cont]
							num[cont] = num[cont2]
							num[cont2] = aux
						}
					}
				}
				
				linha()
				escreva("\nOrdem dos números em decrescente: ")
				para(inteiro cont = 0; cont <= 9; cont++)
				{
					escreva(num[cont], " ")
				}
			}
			escreva("\n")
			linha()
			escreva("\nDeseja ordenar outra lista? Digite 's' para sim ou 'n' para não: ")
			leia(teste2)

			enquanto(teste2 != 's' e teste2 != 'S' e teste2 != 'n' e teste2 != 'N')
			{
				escreva("\nOpção inválida. Por favor, digite 's' para sim ou 'n' para não: ")
				leia(teste2)
			}
		}enquanto(teste2 == 's' ou teste2 == 'S')
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
 * @POSICAO-CURSOR = 343; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */