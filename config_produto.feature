#language: pt

Funcionalidade: Configurar produto   
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinhoc

Contexto:
Dado que eu acesse a página de autenticação da EBAC-SHOP

Esquema do Cenário: Selecionar configurações do produto
Quando eu selecionar o produto
E escolher <cor> <tamanho> <quantidade>
Então deve finalizar a compra corretamente

Exemplos:
| cor      | tamanho   | quantidade |
| "blue"   |"xs"       | "1"        |
| "red"    |"s"        | "2"        |
| "purple" |"m"        | "3"        |
| "yellow" |"l"        | "4"        |
| "orange" |"xl"       | "5"        |
| "black"  |"s"        | "6"        |

Cenário: Não selecionar nenhuma configuração
Quando eu selecionar o produto
E não selecionar nenhuma configuração para finalizar a compra
Então deve exibir mensagem de campo obrigatório

Cenário: Selecionar mais de 10 produtos
Quando eu selecionar o produto
E tentar inserir 10 quantidades
Então site deve realizar bloqueio para apenas 10 itens

Esquema do Cenário: Limpar configurações
Dado que eu tenha um produto nas seguintes configurações
Exemplos:
| cor      | tamanho   | quantidade |
| "blue"   |"xs"       | "1"        |
| "red"    |"s"        | "2"        |
| "purple" |"m"        | "3"        |
| "yellow" |"l"        | "4"        |
| "orange" |"xl"       | "5"        |
| "black"  |"s"        | "6"        | 
Quando eu clicar no botão limpar
Então deve limpar todas as configurações selecionadas
