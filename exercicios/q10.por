programa
{
	
	funcao inicio()
	{

		escreva("Esse é um algoritmo que soma matrizes quadradas! Seja bem-vindo.\n")
		inteiro matrizA[4][4], matrizB[4][4], matrizResult[4][4]

		// Lê os valores para matriz A
		para (inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j++){
				escreva("Digite o valor a ser inserido na linha: ", i, " coluna: ", j, " : ")
				leia(matrizA[i][j])
			}
		}

		// Lê os valores para matriz B
		para (inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j++){
				escreva("Digite o valor a ser inserido na linha: ", i, " coluna: ", j, " : ")
				leia(matrizB
				[i][j])
			}
		}

		// Soma os valores entre as matrizes
		para (inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j++){
				matrizResult[i][j] = matrizA[i][j] + matrizB[i][j]
			}
		}

		// Imprimi a 1° matriz
		escreva("\n")
		escreva("Conteúdo da matriz A: \n")
		para (inteiro i = 0; i < 4; i ++){
			para(inteiro j = 0; j < 4; j++){
				escreva(matrizA[i][j], " ")
			}
			escreva("\n")
		}

		// Imprimi a 2° matriz
		escreva("\n")
		escreva("Conteúdo da matriz B: \n")
		para (inteiro i = 0; i < 4; i ++){
			para(inteiro j = 0; j < 4; j++){
				escreva(matrizB[i][j], " ")
			}
			escreva("\n")
		}

		// Imprimi o resultado da soma entre elas
		escreva("\n")
		escreva("Resultado da soma entre as matrizes: \n")
		para (inteiro i = 0; i < 4; i ++){
			para(inteiro j = 0; j < 4; j++){
				escreva(matrizResult[i][j], " ")
			}
			escreva("\n")
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 681; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */