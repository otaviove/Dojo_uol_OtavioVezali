Dado(/^que esteja na Home do site da UOL$/) do
  visit "https://www.google.com"
end

Quando(/^Procurar site da UOL$/) do
  fill_in "q", :with => "UOL"
end

Quando(/^Entrar no site Uol$/) do
  click_link('UOL - O melhor conteúdo')
end

Quando(/^Acessar o segmento de Economia$/) do
  find('.menu-uol-estacao.bg2-hover.canal-economia').click
end

Então(/^Realizar a comparação do dólar menor que "([^"]*)"$/) do |arg1|
  dolarperc = find(:xpath, "//*[@id='cambio']/ul/li[1]/p[2]").text.split(/ /).last
  dolarperc = dolarperc.gsub(",",".")
  puts dolarperc
  valorcompare = arg1.gsub(",",".")
  unless dolarperc.to_f < valorcompare.to_f
  	fail "dolar acima de" + valorcompare
  end
end