/* Enunciado:
Desenvolva um programa que some duas matrizes modelo Amxn + Amxn = Amxn. Solicite que o
usuário escolha os números de entrada de ambas as matrizes e apresente como resultado as duas
matrizes de entrada e a matriz resultado, pode ser uma em baixo da outra. Identifique cada matriz
ao apresentar o resultado. 
*/

programa
{
	
	funcao inicio()
	{
		inteiro matrizA[4][4], matrizB[4][4], matrizResult[4][4]
		caracter teste

		faca
		{
			limpa()
			escreva("Questão 10 do trabalho de Lógica de Programação, professor André Luiz -- Grupo 2\n")
			escreva("\nEsse é um programa que soma matrizes quadradas!.\n")
			linha()
			escreva("\n")			
	
			// Lê os valores para matriz A
			escreva("Preenchimento da Matriz A:\n\n")
			para (inteiro i = 0; i < 4; i++){
				para(inteiro j = 0; j < 4; j++){
					escreva("Digite o valor a ser inserido na linha ", i, " coluna ", j, ": ")
					leia(matrizA[i][j])
				}
				linha()
				escreva("\n")
			}
	
			// Lê os valores para matriz B
			escreva("Preenchimento da Matriz B:\n\n")
			para (inteiro i = 0; i < 4; i++){
				para(inteiro j = 0; j < 4; j++){
					escreva("Digite o valor a ser inserido na linha ", i, " coluna ", j, ": ")
					leia(matrizB[i][j])
				}
				linha()
				escreva("\n")
			}
	
			// Soma os valores entre as matrizes
			para (inteiro i = 0; i < 4; i++){
				para(inteiro j = 0; j < 4; j++){
					matrizResult[i][j] = matrizA[i][j] + matrizB[i][j]
				}
			}
	
			// Imprimi a 1° matriz
			escreva("Conteúdo da matriz A:\n\n")
			para (inteiro i = 0; i < 4; i ++){
				para(inteiro j = 0; j < 4; j++){
					escreva("	[", matrizA[i][j], "] ")
				}
				escreva("\n")
			}
	
			// Imprimi a 2° matriz
			linha()
			escreva("\n")
			escreva("Conteúdo da matriz B:\n\n")
			para (inteiro i = 0; i < 4; i ++){
				para(inteiro j = 0; j < 4; j++){
					escreva("	[", matrizB[i][j], "] ")
				}
				escreva("\n")
			}
	
			// Imprimi o resultado da soma entre elas
			linha()
			escreva("\n")
			escreva("Resultado da soma entre as matrizes:\n\n")
			para (inteiro i = 0; i < 4; i ++){
				para(inteiro j = 0; j < 4; j++){
					escreva("	[", matrizResult[i][j], "] ")
				}
				escreva("\n")
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
 * @POSICAO-CURSOR = 989; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */