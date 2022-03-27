/* Enunciado:
Elabore um programa que calcule uma equação do 2° Grau modelo ax2+bx+c. Solicite a entrada das
variáveis a, b, c e calcule as raízes. Apresente no final do cálculo a equação composta pelas
variáveis lidas e o resultado.
*/

programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real x1 = 0.0, x2 = 0.0, a, b, c, delta = 0.0
		caracter teste

		faca
		{
			limpa()
			escreva("Questão 9 do trabalho de Lógica de Programação, professor André Luiz -- Grupo 2\n")
			escreva("\nO programa receberá os valores de uma equação de segundo grau e depois tentará aplicar a fórmula de Bhaskaras.\n")
			linha()
			
			escreva("\nDigite o valor do coeficiente A: ")
			leia(a)
	
			enquanto (a == 0)
			{
				escreva("\nCoeficiente A não pode ser 0, insira um valor válido: ")
				leia(a)
				linha()
			}

			escreva("Digite o valor do coeficiente B: ")
			leia(b)
			escreva("Digite o valor do coeficiente C: ")
			leia(c)
			linha()
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
				escreva("Impossível calcular, Delta não admite raízes válidas no conjunto dos reais.\n")
			}senao se (delta == 0){
				se (b >= 0){
					se (c>=0){
						escreva(a,"x² + ", b, "x +", c, " = 0 -> X1 = ", x1,"\n")
					} senao {
						escreva(a,"x² + ", b, "x ", c, " = 0 -> X1 = ", x1,"\n")
					}
				} senao se (b < 0){
					se (c >= 0){
						escreva(a,"x² ", b, "x + ", c, " = 0 -> X1 = ", x1,"\n")
					} senao {
						escreva(a,"x² ", b, "x ", c, " = 0 -> X1 = ", x1,"\n")
					}
				} 
			} senao se (delta > 0) {
				se (b >= 0){
					se (c>=0){
						escreva(a,"x² + ", b, "x + ", c, " = 0 -> X1 = ", x1, " X2 = ", x2 , "\n")
					} senao {
						escreva(a,"x² + ", b, "x ", c, " = 0 -> X1 = ", x1," X2 = ", x2 , "\n")
					}
				} senao se (b < 0){
					se (c >= 0){
						escreva(a,"x² ", b, "x + ", c, " = 0 -> X1 = ", x1, " X2 = ", x2 , "\n")
					} senao {
						escreva(a,"x² ", b, "x ", c, " = 0 -> X1 = ", x1, " X2 = ", x2 , "\n")
					}
				}
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
 * @POSICAO-CURSOR = 881; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
