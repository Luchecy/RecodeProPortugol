Algoritmo "1VA_MariaLuchecy"
// Disciplina  :  [Introdução à Lógica de Programação]
// Professor   : Sônia França
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Maria Luchecy
// Data atual  : 02/12/2022
Var
// ler o salário, valor de emprestimo, calcular o numero das parcelas
salariobru, valorempres, salariobru30, valorparc : real
numparce: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("                Governo do Estado de PE                ")
escreval("Consulta de linha de crédito para servidores do Estado de PE")
escreval
escreva("      Veja abaixo as duas condições para aprovação do crédito:      ")
escreval
escreval("1- O crédito quando APROVADO precisa ser pago em até 24 parcelas.")
escreval("2- O valor da parcela não poderá ultrapassar 30% do seu salário bruto.")
escreval
escreva("Informe seu salário bruto em R$:")
 leia(salariobru)
escreval
escreva("Informe o valor do emprestimo desejado:")
 leia(valorempres)
escreval
escreva("Informe o número de parcelas desejadas. (Respeitar o número Máximo de 24 Parcelas):")
 leia(numparce)
 
  valorparc <- valorempres/numparce

escreval
    se valorparc < (salariobru*30)/100 entao
       escreval("      Parabéns! O seu crédito foi APROVADO.      ")
    senao
       escreval("      Infelizmente o seu crédito foi RECUSADO.      ")
    fimse
Fimalgoritmo