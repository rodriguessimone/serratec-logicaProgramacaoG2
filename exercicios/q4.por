/* Enunciado:
Faça um programa que mostre um menu contendo 2 opções: 1. Fibonacci 2. Fatorial. Ao escolher o
numero 1 solicite que o usuário escolha a quantidade de números da série de Fibonacci ele quer
imprimir e execute a função recursivamente. Ao escolher a opção 2 solicite ao usuário que escolha
o número que deseja para o cálculo do Fatorial e execute a função recursivamente.
*/

programa
{
	inteiro resp, fib, fat
	caracter teste
	
	funcao inicio()
	{
		faca
		{
			limpa()
			escreva("Questão 4 do trabalho de Lógica de Programação, professor André Luiz -- Grupo 2.\n")
			escreva("\nEste programa realiza as operações Fibonacci ou Fatorial para um número escolhido pelo usuário.\n")
			linha()
			
			escreva("\nEscolha uma opção:")
			escreva("\n1. Fibonacci")
			escreva("\n2. Fatorial")
			escreva("\n\nResposta: ")
			leia(resp)
			linha()

			enquanto(resp != 1 e resp != 2)
			{
				escreva("\nOpção inválida! Escolha uma opção: ")
				escreva("\n1. Fibonacci")
				escreva("\n2. Fatorial")
				escreva("\n\nResposta: ")
				leia(resp)
				linha()
			}
	
			se(resp==1)
			{
				escreva("\nDigite a quantidade de números da série de Fibonacci que deseja exibir: ")
				leia(fib)
				linha()
				
	               escreva("\nOs elementos da sequência de Fibonacci do número ", fib, " são: ")
				para (inteiro i = 1; i <= fib ; i++)
				{
					escreva(fibonacci(i), " ")  // Calcula e exibe o número da sequência na posição atual
				}
					
				escreva("\n")
					
			}
			
			se(resp==2)
			{
				escreva("\nDigite o número que deseja para o cálculo do Fatorial: ")
				leia(fat)
				linha()
				
				escreva("\nO fatorial de ", fat, " é: ", fatorial(fat)) 
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
	
	funcao inteiro fibonacci(inteiro posicao)
	{		
		se (posicao == 1)
		{
			retorne 1
		}
		senao se (posicao == 2)
		{
			retorne 1
		}

		retorne fibonacci(posicao - 1) + fibonacci(posicao - 2)		
	}
	
	funcao inteiro fatorial(inteiro numero)
	{
		se (numero == 1 ou numero == 0)
		{
			retorne 1
		}
		
		retorne numero * fatorial(numero - 1)
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
 * @POSICAO-CURSOR = 1489; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */