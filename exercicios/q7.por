programa
{
    
    funcao inicio()
    {
        inteiro n, nprimos = 0

        escreva("Qual quantidade de números primos você quer que seja impresso? ")
        leia(n)

        para(inteiro i = 1; nprimos < n; i++){
            inteiro div = 0

            para(inteiro j = 1; j <= i; j++){
                se(i%j == 0){
                    div++
                }
            }
            se(div <= 2){
                escreva(i,"\n")
                nprimos++
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 351; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */