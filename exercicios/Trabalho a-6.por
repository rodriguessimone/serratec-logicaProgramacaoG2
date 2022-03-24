programa
{
	inteiro n1, n2, subs, soma = 0
	
	funcao inicio()
	{
		escreva("Digite um número: ")
		leia(n1)
		escreva("Digite outro número: ")
		leia(n2)
		
 		subs = n1
 		se(subs <= n2)
 		{
		para(subs=subs;subs<n2;subs++)
		{
		se ((subs%2) == 0)
		{
			soma += subs
		}
		}
		escreva("\nA soma dos números pares entre ", n1 ," e ", n2 ," é ", soma)
		}
		senao
		{
		escreva("\nO 2° número precisa ser mair que o 1° número!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 215; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */