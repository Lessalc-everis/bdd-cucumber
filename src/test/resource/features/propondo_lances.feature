# language: pt

Funcionalidade: Propondo lances

Cenario: Propondo um unico lance valido
	Dado um lance valido
	Quando propoe ao leilao
	Entao o lance eh aceito


Cenario: Propondo varios lances validos
    Dado um lance de 500.0 por "fulano"
    E um lance de 700.0 por "Sicrano"
    E um lance de 1000.0 por "Beltrano"
    Quando propoe varios lances ao leilao
    Entao os lances sao aceitos

Cenario: Propondo um lances invalido
    Dado lance invalido de <valor> reais de '<nomeUsuario>'
    Quando propoe ao leilao
    Entao o lance nao eh aceitos

Exemplos:
		| valor | nomeUsuario |
		| 	0 	| 	Fulano		|
		| -10 	| 	Cicrano		|
		| 	-1 	| 	Beltrano	|
		
		
Cenario: Propondo uma sequencia de lances de um mesmo usuario
	Dado dois lances
		| valor | nomeUsuario |
		| 500 	| 	Fulano		|
		| 700 	| 	Fulano		|
	Quando propoe varios lances ao leilao
	Entao o segundo lance nao eh aceito	
		
		