#language: pt
#UTF-8

Funcionalidade: Fazer login usuário para manter dados atualizados
	
	Eu como lojista
	Quero que pessoas cadastradas possam acessar sua conta
	Para manter sempre atualizado seus dados cadastrais

	@loginCorreto
	Cenário: Logar usuário cadastrado
	 Dado que estou na página de login
	 Quando informo usuário e senha corretos
	 Então efetuo o login corretamente


	@loginErrado
	Cenário: Logar com usuário e senha incorretos
	 Dado que estou na página de login
	 Quando informo usuário e senha incorretos
	 Então recebo uma mensagem de erro


	@esqueceuSenha
	Cenário: Recuperar senha
	 Dado que estou na página de login
	 Quando clico em "Esqueceu a senha?"
	 E informo meu email
	 Então é enviado um email para recuperação de senha


	@esqueceuSenhaIncorreto
	Cenário: Recuperar senha com email inválido
	 Dado que estou na página de login
	 Quando clico em "Esqueceu a senha?"
	 E informo um email não cadastrado
	 Então recebo uma mensagem "E-mail informado não foi encontrado."


	@AtualizaDadosCadastrais
	Cenário: Atualizar dados cadastrais
	 Dado que estou na página de login
	 Quando informo usuário e senha corretos
	 E acesso meus dados cadastrais
	 E atualizo meus dados
	 Então grava corretamente as informações


	@AtualizaEndereco
	Cenário: Atualizar endereço
	 Dado que estou na página de login
	 Quando informo usuário e senha corretos
	 E acesso meu endereço
	 E atualizo meu endereço
	 Então grava corretamente as informações de endereço