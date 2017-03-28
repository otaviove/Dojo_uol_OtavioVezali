#language: pt
#utf-8 

Funcionalidade: Buscar Uol
Eu como usuário
Quero buscar o site do UOL no Google
Para acessar a área de economia.

Cenario: Comparar se o Dólar é menor que 3,20
Dado que esteja na Home do site da UOL
Quando Procurar site da UOL
E Entrar no site Uol
E Acessar o segmento de Economia
Então Realizar a comparação do dólar menor que "3,20"
