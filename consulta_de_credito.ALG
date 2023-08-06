algoritmo "CadastroAgenciaDeViagens"
// Disciplina  : Módulo 2
// Professor   : Marcos Marques
// Descrição   : Agência de viagens, cadastro com vetor e consulta
// Autor(a)    : Maria Luchecy Ribeiro de Araujo
// Definindo os vetores para armazenar os dados
var
    nomeCliente, enderecoCliente, emailCliente: vetor[0..49] de caracter
    idadeCliente, celularCliente, cpfCliente: vetor[0..49] de inteiro
    destinos, tipoDeViagem: vetor[0..49] de caracter
    valordestino: vetor[0..49] de real
    totalClientes, totalDestinos, codigoViagem, dataIda, duracaoViagem: inteiro
    indice, resp, codigo: inteiro
    cpfConsulta: real
    encontrado: logico

//construção do menu
procedimento menu()
inicio
     repita
           escreval
           escreval("-------- AVGM - Agência de Viagens Gatinhos Miau --------")
           escreval
           escreval("------------------------- Menu --------------------------")
           escreval
           escreval("1 - Cadastrar cliente")
           escreval("2 - Cadastrar destino")
           escreval("3 - Listar clientes cadastrados")
           escreval("4 - Listar destinos cadastrados")
           escreval("5 - Consultar cadastro de cliente por CPF")
           escreval("6 - Consultar cadastro de destino por código")
           escreval("0 - Sair")
           escreval
           escreval("---------------------------------------------------------")
           escreval
           escreva("Escolha uma opção: ")
           leia(resp)
           limpatela
     ate (resp >= 0) e (resp <= 6)
fimprocedimento

// Início do algoritmo
inicio

    // Inicialização das variáveis
    totalClientes <- 0
    totalDestinos <- 0
    resp <- 1

    // Loop principal do programa
    enquanto resp <> 0 faca
        menu()

        escolha resp
        caso 1
            se totalClientes < 50 entao
                escreval("Informe o nome do cliente: ")
                leia(nomeCliente[totalClientes])
                escreval("Informe o endereço do cliente: ")
                leia(enderecoCliente[totalClientes])
                escreval("Informe o email do cliente: ")
                leia(emailCliente[totalClientes])
                escreval("Informe a idade do cliente: ")
                leia(idadeCliente[totalClientes])
                escreval("Informe o número de celular do cliente: ")
                leia(celularCliente[totalClientes])
                escreval("Informe o CPF do cliente: ")
                leia(cpfCliente[totalClientes])
                totalClientes <- totalClientes + 1
                limpatela
              
                escreval("Cliente cadastrado com sucesso!")
                escreval
            senao
                escreval("Limite máximo de clientes atingido. Cadastro não realizado.")
                escreval
            fimse
        caso 2
            se totalDestinos < 50 entao
                escreval("Informe o destino: ")
                leia(destinos[totalDestinos])
                escreval("Informe o tipo de viagem. (Exemplo:Lazer, Negódios...): ")
                leia(tipoDeViagem[totalDestinos])
                escreval("Adicione o código da viagem: ")
                leia(codigoViagem[totalDestinos])
                escreval("Informe o valor do destino: ")
                leia(valordestino[totalDestinos])
                escreval("Informe a duração em dias da viagem: (Exemplo: 10, 35...)")
                leia(duracaoViagem[totalDestinos])
                escreval("Informe a data de início da viagem: (Exemplo: 17052024)")
                leia(dataIda[totalDestinos])
                totalDestinos <- totalDestinos + 1
                limpatela
                
                escreval("Destino cadastrado com sucesso!")
            senao
                escreval("Limite máximo de destinos atingido. Cadastro não realizado.")
            fimse
        caso 3
            se totalClientes > 0 entao
                escreval("Lista de clientes cadastrados:")
                para indice de 0 ate totalClientes-1 faca
                    escreval("Cliente ", indice+1, ":")
                    escreval("Nome: ", nomeCliente[indice])
                    escreval("Endereço: ", enderecoCliente[indice])
                    escreval("Email: ", emailCliente[indice])
                    escreval("Idade: ", idadeCliente[indice])
                    escreval("Celular: ", celularCliente[indice])
                    escreval("CPF: ", cpfCliente[indice])
                    escreval
                fimpara
            senao
                escreval("Nenhum cliente cadastrado.")
            fimse
        caso 4
            se totalDestinos > 0 entao
                escreval("Lista de destinos cadastrados:")
                para indice de 0 ate totalDestinos-1 faca
                    escreval(indice+1, "- ", destinos[indice])
                    escreval("Tipo de viagem: ", tipoDeViagem[indice])
                    escreval("Código da Viagem: ", codigoViagem[indice])
                    escreval("Valor do Destino: ", valordestino[indice])
                    escreval("Duracao da Viagem: ", duracaoViagem[indice])
                    escreval("Data de início da Viagem: ", dataIda[indice])
                    escreval
                fimpara
            senao
                escreval("Nenhum destino cadastrado.")
            fimse
            
        caso 5
             escreva("Informe o CPF do cliente que deseja consultar: ")
             leia(cpfConsulta)
             encontrado <- falso
             escreval
             para indice de 0 ate totalClientes-1 faca
                 se cpfCliente[indice] = cpfConsulta entao
                     escreval
                     escreval("Informações do cliente com CPF ", cpfConsulta, ":")
                     escreval("Nome: ", nomeCliente[indice])
                     escreval("Endereço: ", enderecoCliente[indice])
                     escreval("Email: ", emailCliente[indice])
                     escreval("Idade: ", idadeCliente[indice])
                     escreval("Celular: ", celularCliente[indice])
                     escreval("CPF: ", cpfCliente[indice])
                     encontrado <- verdadeiro
                 fimse
             fimpara
             se (encontrado = falso) entao
                 escreval("Cliente com CPF ", cpfConsulta, " não encontrado.")
             fimse
        caso 6
          escreva("Informe o código do destino que deseja consultar: ")
          leia(codigo)
          encontrado <- falso
          escreval
          para indice de 0 ate totalDestinos-1 faca
              se codigoViagem[indice] = codigo entao
                  escreval("Informações do destino com código ", codigo, ":")
                  escreval("Destino: ", destinos[indice])
                  escreval("Tipo de Viagem: ", tipoDeViagem[indice])
                  escreval("Valor: R$", valordestino[indice]:2:2)
                  escreval("Duração: ", duracaoViagem[indice], " dias")
                  escreval("Data de início: ", dataIda[indice])
                  encontrado <- verdadeiro
              fimse
          fimpara
          se (encontrado = falso) entao
              escreval("Destino com código ", codigo, " não encontrado.")
          fimse
        caso 0
            escreval("Encerrando o programa...")
        caso contrario:
            escreval("Opção inválida. Por favor, escolha uma opção válida.")
        fimescolha
    fimenquanto
fimalgoritmo
