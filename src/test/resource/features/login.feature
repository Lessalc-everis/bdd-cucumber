# language: pt

Funcionalidade: Apenas usuários cadastrados podem se logar

Cenario: Um usuario valido consegue se logar
	Dado o usuario valido
	Quando realiza login
	Entao é redirecionado para a página de leilões

Cenario: Um usuário invalido não consegue se logar
	Dado o usário inválido
	Quando tenta se logar
	Entao continua na página de login

	