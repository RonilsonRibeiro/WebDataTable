Quando(/^clico em "([^"]*)"$/) do |esqueceu|
  click_link("#{esqueceu}")
end

Quando(/^informo meu email$/) do
  @app.login.recuperar.email.set DATATABLE['CADASTRADO']['EMAIL']
  @app.login.recuperar.btnEnviar.click
  sleep(3) 
end

Então(/^é enviado um email para recuperação de senha$/) do
  fail unless page.has_content?("Os dados de acesso foram enviados para o e-mail informado.")
end