programa
{
	
	/*
	 *  elaborar prog que calcule equação do 2° grau
	 *  solicite as variaveis a, b, c
	 *  calcule as raízes
	 *  no final imprima as variaveis lidas
	 *  a equação e as raízes
	 */

	 inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{

		real x1 = 0.0, x2 = 0.0, a, b, c, delta = 0.0

		escreva("Digite o valor do coeficiente A: ")
		leia(a)

		se (a == 0){
			enquanto (a == 0){
				escreva("Coeficiente A não pode ser 0, insira um valor válido: ")
				leia(a)
			}
		}
		
		escreva("Digite o valor do coeficiente B: ")
		leia(b)
		escreva("Digite o valor do coeficiente C: ")
		leia(c)
		escreva("\n")

		//Calcular delta e raízes
		delta = (b * b) - (4 * a * c)

		se (delta > 0) {
			x1 = (-b + mat.raiz(delta, 2.0) ) / (2 * a)
			x2 = (-b - mat.raiz(delta, 2.0) ) / (2 * a)
		} senao {
			x1 = (-b + mat.raiz(delta, 2.0) ) / (2 * a)
		}

		se (delta < 0){
			escreva("Impossível calcular, Delta não admite raízes válidas no conjunto dos reais")
			escreva("\n")
		}senao se (delta == 0){
			se (b > 0){
				se (c>0){
					escreva(a,"x² + ", b, "x +", c, " = 0 -> X1 = ", x1,"\n")
				} senao {
					escreva(a,"x² + ", b, "x ", c, " = 0 -> X1 = ", x1,"\n")
				}
			} senao se (b < 0){
				se (c > 0){
					escreva(a,"x² ", b, "x + ", c, " = 0 -> X1 = ", x1,"\n")
				} senao {
					escreva(a,"x² ", b, "x ", c, " = 0 -> X1 = ", x1,"\n")
				}
			}
		} senao se (delta > 0) {
			se (b > 0){
				se (c>0){
					escreva(a,"x² + ", b, "x + ", c, " = 0 -> X1 = ", x1, " X2 = ", x2 , "\n")
				} senao {
					escreva(a,"x² + ", b, "x ", c, " = 0 -> X1 = ", x1," X2 = ", x2 , "\n")
				}
			} senao se (b < 0){
				se (c > 0){
					escreva(a,"x² ", b, "x + ", c, " = 0 -> X1 = ", x1, " X2 = ", x2 , "\n")
				} senao {
					escreva(a,"x² ", b, "x ", c, " = 0 -> X1 = ", x1, " X2 = ", x2 , "\n")
				}
			}
		} 
		
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1527; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */