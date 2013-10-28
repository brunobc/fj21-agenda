package br.com.caelum.agenda.teste;

import br.com.caelum.agenda.dao.ContatoDAO;
import br.com.caelum.agenda.modelo.Contato;

public class TestaRemove {
	
	public static void main(String[] args) {
		
		ContatoDAO dao = new ContatoDAO();
		Contato contato = dao.pesquisar(1);
		dao.remove(contato);
		
		System.out.println("Removido");
	}


}
