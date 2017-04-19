Quando(/^informo um email não cadastrado$/) do
  @app.login.recuperar.email.set DATATABLE["NCADASTRADO"]["EMAIL"]
  @app.login.recuperar.btnEnviar.click
end

Então(/^recebo uma mensagem "([^"]*)"$/) do |mensagem|
  fail unless page.has_content?("#{mensagem}")
end