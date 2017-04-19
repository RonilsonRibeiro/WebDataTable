Quando(/^acesso meu endereço$/) do
  click_link("Minha Conta", :match => :first)

  click_link("Editar endereço principal")
end

Quando(/^atualizo meu endereço$/) do
  @app.util.write("ALTERADADOS", "COMPLEMENTO", Faker::Address.secondary_address)

  @app.login.atualizarEndereco.complemento.set DATATABLE["ALTERADADOS"]["COMPLEMENTO"]

  click_button("Salvar alterações do endereço")  
end

Então(/^grava corretamente as informações de endereço$/) do
  fail unless has_content?(DATATABLE["ALTERADADOS"]["COMPLEMENTO"])
end