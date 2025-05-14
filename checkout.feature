            #Cenário: Preencher Informações de Cadastro no Checkout
            Esquema do Cenário:
            Quando preencher todos os campos <Nome>, <Sobrenome>, <Email>, <Endereço>, <Cidade> e <Cep> que são obrigatórios no cadastro
            clicar no botão "Finalizar Compra"
            Então o sistema deve registrar as informações de cadastro do cliente
            processando o pedido com sucesso.
            | Nome  | Sobrenome | Email                     | Endereço              | Cidade         | Cep        |
            | edson | oliveira  | edson@ebac.com.br         | Rua das Flores, 123   | são luis       | 01234-000  |
            | Maria | Santos    | maria.santos@example.com  | Av. das Palmeiras, 45 | Rio de Janeiro | 98765-432  |
            | paula | Pereira   | paula.pereira@example.com | Recanto Faraó, SN     | Goiás          | 725000-985 |
