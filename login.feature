            #config.feature: pt
            Funcionalidade: Tela de login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos
            Contexto:
            Dado que eu acesse apágina de autenticação do EBAC-SHOP

            Cenário: Autenticação válida
            Quando o usuario digitar o Email "edson@ebac.com.br"
            a senha "senha#123"
            Então deve exibir uma mensagem de boas vindas "olá edson"

            Cenário: usuário inexistente
            Quando  o usuario digitar o Email "ed@ebac.com.br"
            a senha "senha#123"
            Então deve exibir uma mensagem de boas vindas "usuário ou senha inválida"

            Cenário: usuário com a senha inválida
            Quando o usuario digitaro Email "edson@ebac.com.br"
            a senha "edson#123"
            Então deve exibir uma mensagem de boas vindas "usuário ou senha inválida"

            Esquema do Cenário: Autenticação multiplos usários
            Quando  digitar o usuario <usuario>
            a senha <senha>
            Então deve exibir <mensagem> de sucesso
            Exemplos:
            | usuario             | senha         | mensagem                    |
            | "edson@ebac.com.br" | "senha#123"   | "olá edson"                 |
            | "ed@ebac.com.br"    | "senha#123"   | "usuário ou senha inválida" |
            | "edson@ebac.com.br" | "edson#123"   | "usuário ou senha inválida" |
            | "ed@ebac.com.br"    | "senha#12345" | "usuário ou senha inválida" |
