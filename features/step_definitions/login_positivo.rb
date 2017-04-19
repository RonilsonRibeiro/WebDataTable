Dado(/^que estou na página de login$/) do
  @app = APP.new()
  @app.home.load
end

Quando(/^informo usuário e senha corretos$/) do
  @app.login.cadastrado.email.set DATATABLE["CADASTRADO"]["EMAIL"]
  sleep(1)
  @app.login.cadastrado.senha.set DATATABLE["CADASTRADO"]["SENHA"]
  sleep(1)
  @app.login.cadastrado.btnProsseguir.click
end

Então(/^efetuo o login corretamente$/) do
  fail unless page.has_content?(DATATABLE["CADASTRADO"]["NOME"])  
    
end