Quando(/^informo usuário e senha incorretos$/) do
  @app.login.cadastrado.email.set DATATABLE["NCADASTRADO"]["EMAIL"]
  sleep(1)
  @app.login.cadastrado.senha.set DATATABLE["NCADASTRADO"]["SENHA"]
  sleep(1)
  @app.login.cadastrado.btnProsseguir.click
end

Então(/^recebo uma mensagem de erro$/) do
  fail unless page.has_content?("Não foi possível entrar pois o email ou senha não conferem. Por favor tente novamente com outro email ou senha.")
end