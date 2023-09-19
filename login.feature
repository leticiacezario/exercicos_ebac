#language: pt

Funcionalidade: Tela de Login
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página de autenticação da EBAC-SHOP

Esquema do Cenário: Autenticar múltiplos usuários
Quando eu digitar o <usuario>
E a <senha>
Então deve exibir direcionar para a tela de checkout

Exemplos:
| usuario                   | senha         |
| "leticia@email.com.br"    |"teste@123"    |
| "pedro@email.com.br"      |"teste@123"    |
| "fernanda@email.com.br"   |"teste@123"    |
| "ivan@email.com.br"       |"teste@123"    |
| "cliente@email.com.br"    |"teste@123"    |
| "fabiana@email.com.br"    |"teste@123"    |


Cenário: Usuário com senha inválida
Quando eu digitar o usuario "leticia@email.com.br"
E a senha "aaaabbb"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

Cenário: Usuário com email inválido
Quando eu digitar o usuario "aaaa@email.com.br"
E a senha "teste@123"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

