            #languege: pt
            Funcionalidade: Configurar Produto
            Como Cliente da EBAC
            Quero Configurar meu Produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            para depois inserir no carrinho
            Contexto: Dado que eu acesso a loja da EBAC

            Cenário: Selação de cor
            Quando o usuario selocinar o Produto
            Então a cor do Produto deve ser escolhida

            Cenário: selação de tamanho
            Então o tamanho deve ser escolhida

            Cenário: selação de quantidade
            Quando o usuario selocinar o Produto
            Então a quantidade  deve ser escolhida

            Cenário: selação de produtos
            Quando o usuario selocinar mais que 10 Produtos
            Então  a <mensagens> "maximo de 10 produtos"
            Esquema do Cenário:
            Quando o usuario selocinar a <cor>,<tamanho>,<quantidade>
            Então deve exibir a <mensagens> "produto adicionado ao carrinho"
            Exemplos:
            | tamanho | cor   | quantidade | mensagem                          |
            | m       | red   | 10         | "produto adicionado ao carrinho"  |
            | gg      | blue  | 8          | "produto adicionado ao carrinho"  |
            | g       | orage | 5          | "produto adicionado ao carrinho"! |