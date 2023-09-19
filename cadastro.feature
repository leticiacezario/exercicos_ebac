#language: pt

Funcionalidade: Tela de Login
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:
Dado que eu acesse a página de cadastro da EBAC-SHOP

Esquema do Cenário: Realizar cadastro válido
E vá para a checkout
Quando eu preencher os campos com as informações abaixo
Exemplos:
| Nome      | Sobrenome    | Pais     | Endereço            | Cidade      | CEP       | Telefone        | E-mail                |
| Leticia   | Cezario      | Brasil   | Rua das flores, 12  |  Itajaí     | 00121-22  | (83) 1234-4444  | leticia@email.com     |
| Pedro     | Silva        | Brasil   | Rua alta, 332       |  São Paulo  | 99900-29  | (11) 3334-5556  | pedro@email.com       |
| Claudio   | Santos       | Brasil   | QE 07, BLOCO B      |  Brasilia   | 77733-00  | (61) 1235-0976  | claudio@email.com     |

Então o cadastro deve ser finalizado com sucesso 


Cenário: E-mail inválido
E vá para a checkout
Quando eu inserir um e-mail inválido no cadastro
Então deve exibir mensagem de erro

Cenário: Sem preencher dados obrigatorios
E vá para a checkout
Quando eu tentar finalizar o cadastro sem preencher os campos obrigatorios
Então deve exibir mensagem de alerta
