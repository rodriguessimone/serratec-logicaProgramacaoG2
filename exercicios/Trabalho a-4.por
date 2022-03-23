programa
{
	inteiro n1, fib,fat
	funcao inicio()
	{
		escreva("Escolha uma opção:")
		escreva("\n1. Fibonacci")
		escreva("\n2. Fatorial")
		escreva("\nr:")
		leia(n1)

		se(n1==1)
		{
			escreva("\nDigite a quantidade de números da série de Fibonacci que deseja exibir: ")
			leia(fib)
			
			limpa()
               escreva("Os elementos da sequência de Fibonacci do número ", fib, " são: ")
			para (inteiro i = 1; i <= fib ; i++)
				{
				escreva(fibonacci(i), " ")  // Calcula e exibe o número da sequência na posição atual
				}
				
			escreva("\n")
				
			}
			senao se(n1==2)
			{
				escreva("\nDigite o número que deseja para o cálculo do Fatorial: ")
				leia(fat)
				
				limpa()
				escreva("O fatorial de ", fat, " é: ", fatorial(fat), "\n") 
				}
				senao
				{
					escreva("\nOpção inválida!")
					}
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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 457; 
 * @PONTOS-DE-PARADA = 3;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */