package br.com.alura.leilao.acceptance.steps;

import org.junit.Assert;

import br.com.alura.leilao.e2e.pages.Browser;
import br.com.alura.leilao.e2e.pages.LeiloesPage;
import br.com.alura.leilao.e2e.pages.LoginPage;
import br.com.alura.leilao.e2e.pages.NovoLeilaoPage;
import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Entao;
import io.cucumber.java.pt.Quando;

public class LeilaoSteps {

	
	private Browser browser;
	private LoginPage loginPage;
	private LeiloesPage leiloesPage;
	private NovoLeilaoPage novoLeilaoPage;

	@Dado("um usuário logado")
	public void um_usuário_logado() {
		
		browser = new Browser();
		browser.seed();
		loginPage = browser.getLoginPage();
		leiloesPage = loginPage.realizaLoginComoFulano();
	}

	@Quando("acessa a página de novo leilão")
	public void acessa_a_página_de_novo_leilão() {
		novoLeilaoPage = this.leiloesPage.visitaPaginaParaCriarUmNovoLeilao();
	}

	@Quando("preenche o formulário com dados válidos")
	public void preenche_o_formulário_com_dados_válidos() {
		this.leiloesPage = this.novoLeilaoPage.preencheForm("PC Dell", "1500", "08/10/2021");
	}

	@Entao("volta para a página de leilões")
	public void volta_para_a_página_de_leilões() {
		Assert.assertTrue(this.leiloesPage.estaNaPaginaDeLeiloes());
	}

	@Entao("o novo leilão aparece na tabela")
	public void o_novo_leilão_aparece_na_tabela() {
		Assert.assertTrue(leiloesPage.existe("PC Dell", "1500", "08/10/2021", "fulano"));
		this.browser.clean();
	}
}
