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
    real valor_total = 0
    
    inteiro opcao
    
    inteiro prod1 = 0
    inteiro prod2 = 0
    inteiro prod3 = 0
    inteiro prod4 = 0
    inteiro prod5 = 0
    inteiro prod6 = 0
    inteiro prod7 = 0
    inteiro prod8 = 0
    inteiro prod9 = 0
    inteiro prod10 = 0

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
          prod1++
          escreva("\nRação Premium para Cães: ", prod1)
        }
        se(opcao == 2) {
          prod2++
          escreva("\nColeira de Couro para Gatos: ", prod2)
        }
        se(opcao == 3) {
          prod3++
          escreva("\nBrinquedo de Pelúcia para Cachorros: ", prod3)
        }
        se(opcao == 4) {
          prod4++
          escreva("\nShampoo para Cães com Aloe Vera: ", prod4)
        }
        se(opcao == 5) {
          prod5++
          escreva("\nCaixa de Areia Higiênica para Gatos: ", prod5)
        }
        se(opcao == 6) {
          prod6++
          escreva("\nMáquina de tosa: ", prod6)
        }
        se(opcao == 7) {
          prod7++
          escreva("\nTapete gramado para cães: ", prod7)
        }
        se(opcao == 8) {
          prod8++
          escreva("\nCama para cachorros e gatos: ", prod8)
        }
        se(opcao == 9) {
          prod9++
          escreva("\nObstáculo para gatos: ", prod9)
        }
        se(opcao == 10) {
          prod10++
          escreva("\nColeira de couro para cães: ", prod10)
        }

        // Tratando erro da opção
        se(opcao < 0 ou opcao > 10) {
          escreva("\nOpção inválida.")
        }
          
        Temporizador(3000)
      }
      valor_total = (valores[0] * prod1) + (valores[1] * prod2) + (valores[2] * prod3) + (valores[3] * prod4) +
      (valores[4] * prod5) + (valores[5] * prod6) + (valores[6] * prod7) + (valores[7] * prod8) + 
      (valores[8] * prod9) + (valores[9] * prod10)
      escreva(valor_total)
    }

    // Funções mais pontuais

    funcao Temporizador(inteiro tempo) {
      U.aguarde(tempo)
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
