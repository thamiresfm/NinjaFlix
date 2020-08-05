#language: pt

Funcionalidade: Login
  Para que eu possa gerenciar os filtros do catalogo NinjaFix 
  Sendo um usuário previamente cadastrado 
  Posso acessar o sistema com meu email e senha 

  @login_happy
  Cenario: Acesso
    Quando eu faço login com "tony@stark.com" e "pwd123"
    Então devo ser autenticado
    E devo ver "Tony Stark" na área logada

 @login_happless
  Esquema do Cenario: login sem sucesso
    Quando eu faço login com <email> e <senha>
    Então  não devo ser autenticado
    E devo ver a mensagem de alerta <texto>

    Exemplos:
      |email            |senha    |texto                         |
      |"tony@stark.com" |"3333"   |"Usuário e/ou senha inválidos"|
      |"stark@stark.com"|"pwd123" |"Usuário e/ou senha inválidos"|
      |""               |"pwd123" |"Opps. Cadê o email?"         |
      |"tony@stark.com" |""       |"Opps. Cadê a senha?"         |

  # @login_happless
  # Cenario: Senha inválida
  #   Quando eu faço login com "tony@stark.com" e "3333"
  #   Então não devo ser autenticado
  #   E devo ver a mensagem de alerta "Usuário e/ou senha inválidos"

  # Cenario: Usuário não existe
  #   Quando eu faço login com "stark@stark.com" e "123456"
  #   Então não devo ser autenticado
  #   E devo ver a mensagem de alerta "Usuário e/ou senha inválidos"

  # Cenario: Email não informado
  #   Quando eu faço login com "" e "pwd123"
  #   Então não devo ser autenticado
  #   E devo ver a mensagem de alerta "Opps. Cadê o email?"
  
   
  # Cenario: Senha não informado
  #   Quando eu faço login com "stark@stark.com" e ""
  #   Então não devo ser autenticado
  #   E devo ver a mensagem de alerta "Opps. Cadê a senha?"