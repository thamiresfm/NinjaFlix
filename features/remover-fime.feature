#language:pt

Funcionalidade: Remover filme
  Para eu possa manter o catálogo atualizado
  Sendo um gestor de catálogo que encontrou um título cancelado/indesejado ou que não tem uma boa aceitação pelo público
  Posso remover este item


 @rm_movie
  Cenário: Confirma exclusão
   
   Dado que "Dpz" faz parte do catálogo
   Quando eu solicito a exclusão
   E eu confirmo a solicitação
   Então este item dever swe removido do catálogo

  
  Cenário: Cancelar da exclusão

    Dado que "10 coisas que odeio em você" faz parte do catálogo
    Quando eu solicito a exclusão
    Mas cancelo a solicitação 
    Então este item permanece no catálogo
    
