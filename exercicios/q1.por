/* Enunciado:
Leia dois valores e efetue a divisão do primeiro pelo segundo. O segundo valor não pode ser ZERO
ou negativo, caso isso ocorra você deve informar ao usuário que o segundo número deve ser maior
do que ZERO e solicitar um novo valor. Deverá imprimir o resultado. Ao final deve perguntar se
deseja calcular outra divisão e caso sua resposta seja positiva limpe a tela e solicite novos valores.
*/

programa
{
	funcao inicio()
	{
		inteiro num1, num2, divisao, resto
		caracter teste
		
		faca
		{
			limpa()
			escreva("Questão 1 do trabalho de Lógica de Programação, professor André Luiz -- Grupo 2.\n")
			escreva("\nEste programa faz a divisão de dois números inteiros inseridos pelo usuário e depois mostra o resultado e o resto.\n")
	
			linha()
			escreva("\n")
			
			escreva("Por favor, digite um número inteiro: ")
			leia(num1)
			escreva("Por favor, digite outro número inteiro diferente de 0: ")
			leia(num2)
	
			linha()
			
			enquanto(num2 <= 0)
			{
				escreva("\nNão é possível dividir um número por 0 ou número negativo!")
	
				escreva("\n")
				linha()
				
				escreva("\nPor favor, digite outro número inteiro diferente de 0: ")
				leia(num2)
			}
			divisao = dividir(num1, num2)
			resto = restodivisao(num1, num2)

			escreva("\nO resultado da sua divisão é: " + divisao + " com resto " + resto + ".")

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

	funcao inteiro dividir(inteiro a, inteiro b)
	{
		inteiro x

		x = a / b

		retorne x
	}

	funcao inteiro restodivisao(inteiro a, inteiro b)
	{
		inteiro x

		x = a % b

		retorne x
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
 * @POSICAO-CURSOR = 1549; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */