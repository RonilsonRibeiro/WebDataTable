class Cadastrado < SitePrism:: Section
	element :email, "#id_email"
	element :senha, "#id_senha"
	element :btnProsseguir, "div.controls > button"

end

class SemCadastro < SitePrism:: Section
	element :email, "#id_email"
	element :cadastrar, :xpath, ".//*[@id='corpo']/div/div[1]/div[2]/div[2]/div/form/fieldset/div/button"
end

class RecuperarSenha < SitePrism:: Section
	element :email, "#id_email_recuperar_senha"
	element :btnEnviar, "#btnRecuperarSenha"
end

class AtualizarCadastro < SitePrism:: Section
	element :nome, "#id_nome"
	
end

class AtualizarEndereco < SitePrism:: Section
	element :complemento, "#id_complemento"
	element :btnSalvar, :xpath, ".//*[@id='formCadastroCompleto']/div[3]/div/button"

end

class Login < SitePrism:: Page
	section :cadastrado, Cadastrado, :xpath, ".//*[@id='corpo']/div/div[1]/div[2]/div[1]/div"
	section :semCadastro, SemCadastro, :xpath, ".//*[@id='corpo']/div/div[1]/div[2]/div[2]/div"
	section :recuperar, RecuperarSenha, "#modalRecuperarSenha"
	section :atualizarCadastro, AtualizarCadastro, :xpath, ".//*[@id='corpo']/div/div[2]/div[2]/form"
	section :atualizarEndereco, AtualizarEndereco, :xpath, ".//*[@id='formCadastroCompleto']"
end