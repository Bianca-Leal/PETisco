programa {
  funcao inicio() {
    escreva("-------------------------------------------------------- \n- PETisco - \n--------------------------------------------------------")
    escreva("\nBem-vindo ao nosso petShop, aqui voc� poder� encotrar os \nmelhores produtos para seu animalzinho. \n--------------------------------------------------------")

    cadeia produtos[10] = 
    {"Ra��o Premium para C�es", "Coleira de Couro para Gatos", "Brinquedo de Pel�cia para Cachorros", 
    "Shampoo para C�es com Aloe Vera", "Caixa de Areia Higi�nica para Gatos", "", 
    "", "", "", ""}
    real valores[5] = {45.99, 15.50, 8.99, 12.75, 19.9}

    para(inteiro produto = 0; produto < 5; produto++) {
      escreva("\n[ ", produto, " ] ", produtos[produto], " --> R$", valores[produto])
    }

    inteiro produto_selecionado
    inteiro produto_1, produto_2, produto_3, produto_4, produto_5

    para(inteiro selects = 0; selects < 10; selects++) {
      escreva("\n-------------------------------------------------------- \nQual produto deseja? ")
      leia(produto_selecionado)

      escolha(produto_selecionado) {
        caso 1:
          produto_1++
        
        caso 2:
          produto_2++

        caso 3:
          produto_3++

        caso 4:
          produto_4++

        caso 5:
          produto_5++

        caso contrario:
          escreva("Op��o inv�lida.")
      }
      
      escreva(produto_1, produto_2, produto_3, produto_4, produto_5)
      escreva()
      escreva()
      escreva()
      escreva()

    }

  }
}
