Quando(/^acesso meus dados cadastrais$/) do
  click_link("Minha Conta", :match => :first )

  click_link("Editar dados cadastrais")
  
end

Quando(/^atualizo meus dados$/) do
  
  @app.util.write("ALTERADADOS","NOME", Faker::Name.name)

  @app.login.atualizarCadastro.nome.set DATATABLE["ALTERADADOS"]["NOME"]

  click_button("Salvar alterações")  
  sleep(3)
end

Então(/^grava corretamente as informações$/) do
  fail unless page.has_content?(DATATABLE["ALTERADADOS"]["NOME"])  
end