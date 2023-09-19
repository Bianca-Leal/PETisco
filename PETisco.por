programa {
  // Bibliotecas utilizadas
  inclua biblioteca Util --> U
  inclua biblioteca Calendario --> C

  funcao inicio() {
    escreva("-------------------------------------------------------- \n- PETisco - \n--------------------------------------------------------")
    escreva("\nBem-vindo ao nosso petShop, aqui você poderá encotrar os \nmelhores produtos para seu animalzinho.")

    cadeia produtos[10] = 
    {"Ração Premium para Cães", "Coleira de Couro para Gatos", "Brinquedo de Pelúcia para Cachorros", 
    "Shampoo para Cães com Aloe Vera", "Caixa de Areia Higiênica para Gatos", "Máquina de tosa", 
    "Tapete gramado para cães", "Cama para cachorros e gatos", 
    "Obstáculo para gatos", "Coleira de couro para cães"}
    real valores[10] = {45.99, 15.50, 8.99, 12.75, 19.9, 85.9, 33.9, 44.5, 119.9, 15.4}
    
    inteiro opcao
    
    inteiro prod1, prod2, prod3, prod4, prod5, prod6, prod7, prod8, prod9, prod10

    enquanto(opcao != 0) {
      escreva("\n--------------------------------------------------------")
      para(inteiro produto = 0; produto < 10; produto++) {
        escreva("\n[ ", produto+1, " ] ", produtos[produto], " --> R$", valores[produto])
        Temporizador(1000)
        }
        escreva("\n-------------------------------------------------------- \n[ 0 ] Sair")
        Temporizador(1000)

        escreva("\n-------------------------------------------------------- \nOpção: ")
        leia(opcao)
        
        Temporizador(1000)
    
        // Adição de opções
        se(opcao == 1) {
          escreva("\n+1 Ração Premium para Cães")
          prod1++
          escreva(prod1)
        }
        se(opcao == 2) {
          escreva("\n+1 Coleira de Couro para Gatos")
        }
        se(opcao == 3) {
          escreva("\n+1 Brinquedo de Pelúcia para Cachorros")
        }
        se(opcao == 4) {
          escreva("\n+1 Shampoo para Cães com Aloe Vera")
        }
        se(opcao == 5) {
          escreva("\n+1 Caixa de Areia Higiênica para Gatos")
        }
        se(opcao == 6) {
          escreva("\n+1 Máquina de tosa")
        }
        se(opcao == 7) {
          escreva("\n+1 Tapete gramado para cães")
        }
        se(opcao == 8) {
          escreva("\n+1 Cama para cachorros e gatos")
        }
        se(opcao == 9) {
          escreva("\n+1 Obstáculo para gatos")
        }
        se(opcao == 10) {
          escreva("\n+1 Coleira de couro para cães")
        }

        // Tratando erro da opção
        se(opcao < 0 ou opcao > 10) {
          escreva("\nOpção inválida.")
        }
          
        Temporizador(3000)
      }
      escreva("Horário: ", C.hora_atual(), ":", C.minuto_atual())
    }

    // Funções mais pontuais

    funcao Temporizador(inteiro tempo) {
      U.aguarde(tempo)
    }

    funcao ValorDaCompra() {

    }

    funcao Credencial() {

    }

    funcao PETiscoInfos() {

    }

    funcao NotaFiscal() {
      Temporizador(3000)
      escreva("\nGerando...")
      Temporizador(3000)

      escreva("\n- PETisco -")
      escreva("\nCNPJ: ")
      escreva("Data: ")
      escreva("Horário: ", C.hora_atual(), ":", C.minuto_atual())
    }
  }
}
