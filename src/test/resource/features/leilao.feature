#language: pt

@leilao
Funcionalidade: Cadastrando um leilao

	Contexto:
		Dado um usuário logado

	Cenario: Um usuário logado pode cadastrar um leilão
		Quando acessa a página de novo leilão
		E preenche o formulário com dados válidos
		Entao volta para a página de leilões
		E o novo leilão aparece na tabela