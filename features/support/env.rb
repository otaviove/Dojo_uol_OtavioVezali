require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'

Capybara.register_driver :chrome do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#setando a configuração do driver como padrão
Capybara.default_driver = :chrome

#timeout padrão na execução
Capybara.default_max_wait_time = 15
