/* Enunciado:
Desenvolva um programa no qual o usuário informa 10 números e programa responde qual é o
menor, o maior e a média dos valores.
*/

programa
{
	real vetor[10], aux = 0.0, menor, maior, media
	caracter teste
	
	funcao inicio()
	{
		faca
		{
			limpa()
			escreva("Questão 5 do trabalho de Lógica de Programação, professor André Luiz -- Grupo 2.\n")
			escreva("\nEste programa recebe 10 números e depois demonstra o menor e maior valor, e a média de todos os valores.\n")
			linha()

			escreva("\n")
			para(inteiro cont = 0; cont < 10; cont++)
			{
				escreva("Insira o " + (cont+1) + "º valor: ")
				leia(vetor[cont])
	
				aux += vetor[cont]
			}
	
			maior = vetor[0]
			menor = vetor[0]
			
			para(inteiro cont = 0; cont < 10; cont++)
			{
				se(vetor[cont] > maior)
				{
					maior = vetor[cont]
				}
				se(vetor[cont] < menor)
				{
					menor = vetor[cont]
				}
			}
	
			media = aux / 10
	
			escreva("\nO menor valor inserido foi: " + menor)
			escreva("\nO maior valor inserido foi: " + maior)
			escreva("\nA média dos valores inseridos é: " + media)

			escreva("\n")
			linha()
			escreva("\nDeseja analisar outra lista? Digite 's' para sim ou 'n' para não: ")
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
 * @POSICAO-CURSOR = 140; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */