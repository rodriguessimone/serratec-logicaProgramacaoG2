/* Enunciado: 
Programar uma calculadora com as operações: soma, subtração, multiplicação e divisão. Deverá ter
um menu com as opções de operação. Após a escolha da operação deverá permitir a inserção de
dois valores e executar a conta. Deverá apresentar o resultado ao usuário e perguntar se ele deseja
fazer novo cálculo ou se deseja encerrar o programa. Deverá permitir voltar ao menu caso a escolha
seja fazer novo cálculo ou sair caso a escolha seja encerrar o programa.
*/

programa
{
	inteiro num1, num2, resto
	caracter op
	inteiro resultado
	caracter teste, teste2
	
	funcao inicio()
	{
		faca
		{
			limpa()
			escreva("Questão 2 do trabalho de Lógica de Programação, professor André Luiz -- Grupo 2.\n")
			escreva("\nEste programa é uma calculadora de operações simples que apresenta o resultado para o usuário e pergunta se ele quer fazer outra operação.\n")
			linha()

			escreva("\nDigite um número inteiro: ")
			leia(num1)

			escreva("\nQual operação deseja fazer?\n")

			escreva("\n+ = Adição")
			escreva("\n- = Subtração")
			escreva("\n* = Multiplicação")
			escreva("\n/ = Divisão\n")
			escreva("\nOperação: ")
			leia(op)
			linha()

			enquanto(op != '+' e op != '-' e op != '*' e op != '/')
			{
				escreva("\nOperação inválida.\n")
				linha()

				escreva("\nQual operação deseja fazer?\n")
				escreva("\n+ = Adição")
				escreva("\n- = Subtração")
				escreva("\n* = Multiplicação")
				escreva("\n/ = Divisão\n")
				escreva("\nOperação: ")
				leia(op)
				linha()
			}
			escreva("\nDigite outro número inteiro: ")
			leia(num2)
			linha()

			enquanto(num2 == 0 e op == '/')
			{
				escreva("\nÉ impossível dividir por 0!\n")
				linha()

				escreva("\nDigite outro número inteiro: ")
				leia(num2)
				linha()
			}

			resultado = calc(op, num1, num2)

			se(op != '/')
			{
				escreva("\nO resultado da sua operação é: " + resultado + ".\n") 
			}
			senao
			{
				resto = calcResto(num1, num2)
				escreva("\nO resultado da sua operação é: " + resultado + " com resto " + resto) 
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

	funcao inteiro calcResto (inteiro a, inteiro b)
	{
		inteiro calculo

		calculo = a % b

		retorne calculo
	}

	funcao linha()
	{
		para(inteiro i = 0; i < 60; i++) // Escrever uma linha para melhor separar as mensagens.
		{
		  escreva ("-")
		}
	}

	funcao inteiro calc (caracter operacao, inteiro a, inteiro b)
	{
		inteiro calculo = 0
		
		escolha(operacao) // A função escolha-caso pega uma variável e analisa ela, então utilizando-a para decidir o que fazer a seguir. Ela é útil nesse cenário para evitar um monte de senao se.
		{
			caso '+': calculo = a + b
			pare
			caso '-': calculo = a - b
			pare
			caso '/': calculo = a / b
			pare
			caso '*': calculo = a * b
			pare
		}

		retorne calculo
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2025; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */