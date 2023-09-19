/*Algoritmo construido para simular um caixa registrador de um petshop onde os produtos 
serão adquiridos e escolhidos pelo cliente(usuário).*/
programa {
  inclua biblioteca Util --> u
  inclua biblioteca Calendario --> C

  //Sistema de login, bloqueia o usuário após 3 tentativas erradas
  cadeia usuario = "c"
  cadeia senha = "c"
  
  inteiro tentativas = 0
  logico finalizar = falso

  funcao inicio() {
    escreva("- Login -")
    
    enquanto(tentativas < 3 e finalizar == falso) {
      cadeia usuario_input
      cadeia senha_input

      escreva("\nUsuário: ")
      leia(usuario_input)

      escreva("Senha: ")
      leia(senha_input)

      se (Verificar(usuario_input, senha_input)) {
        finalizar = verdadeiro
      } senao {
        tentativas++
        se (tentativas < 3) {
          escreva("- Login NEGADO! -")
        } senao {
          escreva("- Login BLOQUEADO!")
        }
      }
    }

    // Após o login bem-sucedido, o programa continua com a execução do código principal
    se (finalizar) {
      ProgramaPrincipal()
    }
  }

  funcao Verificar(cadeia user, cadeia pass) {
    se (user == usuario e pass == senha) {
      escreva("\n- Login OK! - \n")
      retorne verdadeiro
    } senao {
      retorne falso
    }
  }

  funcao ProgramaPrincipal() {
    escreva("\n--------------------------------------------------------- PETisco ---------------------------------------------------------")
    escreva("\nBem-vindo ao nosso petShop, aqui você poderá encontrar os \nmelhores produtos para seu animalzinho.")

   cadeia produtos[10] = 
    {"Ração Premium para cães", "Coleira de Couro para Gatos", "Brinquedo de Pelúcia para Cachorros", 
    "Shampoo para cães com Aloe Vera", "Caixa de Areia Higiênica para Gatos", "Máquina de tosa", 
    "Tapete gramado para cães", "Cama para cachorros e gatos", 
    "Obstáculo para gatos", "Coleira de couro para cães"}
    real valores[10] = {45.99, 15.50, 8.99, 12.75, 19.9, 85.9, 33.9, 44.5, 119.9, 15.4}
    inteiro quantidade[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    
    logico continuar_compra = verdadeiro

    enquanto(continuar_compra) {
      escreva("\nProdutos Disponiveis:")
      para(inteiro produto = 0; produto < 10; produto++) {
        escreva("\n[", produto + 1, "] ", produtos[produto], " --> R$", valores[produto])
      }

      inteiro produto_selecionado
      escreva("\n\nDigite o numero referente ao produto ou 0 para sair: ")
      leia(produto_selecionado)

      se (produto_selecionado == 0) {
        continuar_compra = falso
      } senao se (produto_selecionado > 0 e produto_selecionado <= 10) {

        inteiro produto_quantidade 
        escreva("\nDigite a quantidade desejada para este produto: ")
        leia(produto_quantidade)
        se (produto_quantidade > 0) {
          quantidade[produto_selecionado - 1] += produto_quantidade
        } senao {
          escreva("Quantidade invalida. Saindo do programa de compras.")
          continuar_compra = falso
        }
      } senao {
        escreva("Opcao invalida. Tente novamente.")
      }
    } 
      //Solicita o nome do cliente para colocar no recibo
      cadeia nome_cliente
      escreva("\nPor favor, digite seu nome: ")
      leia(nome_cliente)
      exibeRecibo(produtos, valores, quantidade, nome_cliente)
  }

  
  //Recibo
  funcao exibeRecibo(cadeia produtos[], real valores[], inteiro quantidade[], cadeia nome_cliente) {
    real valorTotal = 0
    escreva("\n\n---------------------------------------------------------------------")
    escreva("\nRecibo para: ", nome_cliente)
    escreva("\n-----------------------------------------------------------------------")
    
    para(inteiro i = 0; i < u.numero_elementos(produtos); i++) {
      se(quantidade[i] > 0) {
        escreva("\nProduto: ", produtos[i], ", Valor Unitario: R$", valores[i], ", Quantidade: ", quantidade[i])
        valorTotal += (valores[i] * quantidade[i])
      }
    }
    
    escreva("\nValor total da compra: R$", valorTotal)
    escreva("\n-----------------------------------------------------------------------")
    escreva("\n\nAgradecemos pela preferência!")
  }
}
