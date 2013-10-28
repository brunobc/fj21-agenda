package br.com.caelum.agenda.teste;

import br.com.caelum.agenda.dao.ContatoDAO;
import br.com.caelum.agenda.modelo.Contato;

public class TestaPesquisa {

	public static void main(String[] args) {
		ContatoDAO dao = new ContatoDAO();
		Contato contato = dao.pesquisar(1);
		
		System.out.println("Nome: " + contato.getNome());
		System.out.println("Email: " + contato.getEmail());
		System.out.println("Endereço: " + contato.getEndereco());
		System.out.println("Data de Nascimento: "
				+ contato.getDataNascimento().getTime() + "\n");

	}

}
