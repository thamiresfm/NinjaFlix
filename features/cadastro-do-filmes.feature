#language:pt
@login
Funcionalidade: Cadastro de filme
  Para que eu possa disponibilizar novos títulos no catálogo
  Sendo um gestor de catálogo
  Posso cadastrar um novo filme

  @new_movie
  Esquema do Cenario: Novo Filme 
    
    O gestor de catalogo cadastra um novo filme através do formulário
    e um novo registro é inserido no catálogo Ninjaflix.


    Dado que <codigo> é um novo filme
    Quando eu faço o cadastro deste filme 
    Então devo ver  o novo filme na lista


    Exemplos:
    |codigo    |
    |"Ultimato"|
    |"Spider"  |
    |"Jocker"  |
    

  Esquema do Cenario: Campos Obrigatórios
    O gestor de catálogo tenta cadastrer um novo filme, mas esquece
    de preencher um dos campos que são obrigatórios, em seguida, o sistema 
    exibe uma notificação para o usuário.

    Dado que <codigo> é um novo filme
    Quando eu faço o cadastro deste filme 
    Então devo ver a notificação <texto>

    @attempt_movie
    Exemplos:
    |codigo      | texto                                          |
    |"no_title"  | "Oops - Filme sem titulo. Pode isso Arnaldo?"  |
    |"no_status" | "Oops - O status deve ser informado!"          |
    |"no_year"   | "Oops - Faltou o ano de lançamento também!"    |
    |"no_date"  | "Oops - Quase lá, só falta a data de estréia!"  |


  @dup_movie

  Cenario: Duplicado

    O gestor de catálogo tenta cadastrar um filme, porem o títulos
    já foi cadastrado e outro momento e o sistema notifica o usuário
    informado que o titulo já existe.


    Dado que "Deadpool2" é um novo filme
    Mas este filme já existe no catálogo
    Quando eu faço o cadastro deste filme
    Então devo ver a notificação "Oops - Este titulo já existe no Ninjaflix." 

  # Cenario: Filme disponivel
  #   Dado que "Vigadores Ultimato" é um novo filme
  #   E o status deste filme é "Disponivel"
  #   E o ano de lançamento é "2019"
  #   E data de estréia é "24/07/2019"
  #   E os atores são "Robert Dowey Jr, Chris Evans, Brie Larson, Scarlet Johansson"
  #   E a sinopse do filme é "Após Thanos eliminar metade do universo, os vingadores terão que resolver está treta"
  #   E escolhi uma capa muito bonita
  #   Quando eu faço o cadastro deste filme 
  #   Então devo ver  o novo filme na lista
    
  # Cenario: Filme em pré venda
  #   Dado que "Homem Aranha Longe de Casa" é um novo filme
  #   E o status deste filme é "Pré-venda"
  #   E o ano de lançamento é "2009"
  #   E data de estréia é "04/07/2019"
  #   E os atores são "Tom Holand, Samuel L. Jackson, Marisa Tomei"
  #   E a sinopse do filme é "Peter está em uma viagem"
  #   E escolhi uma capa muito bonita
  #   Quando eu faço o cadastro deste filme 
  #   Então devo ver  o novo filme na lista
  
  # Cenario: Filme em breve
  #   Dado que "Coringa" é um novo filme
  #   E o status deste filme é "Em breve"
  #   E o ano de lançamento é "2019"
  #   E os atores são "Joaquim Phoenix"
  #   E a sinopse do filme é "O comediantes falido"
  #   E escolhi uma capa muito bonita
  #   Quando eu faço o cadastro deste filme 
  #   Então devo ver  o novo filme na lista

  # Cenario: sem nome
  #   Quando eu tenho cadastrar um filme sem nome
  #   Então devo ver a notificação "Oops - Filme sem titulo. Pode isso Arnaldo? "

  # Cenario: Sem status 
  #   Quando eu tenho cadastrar um filme sem o ano de lamçamento
  #   Então devo ver a notificação "Oops - O status deve ser informado!" 

  # Cenario: Ano de lamçamento não informado
  #   Quando eu tenho cadastrar um filme sem sem a data de estréia
  #   Então devo ver a notificação "Oops - Faltou o ano de lançamento também!" 
  
