package br.com.logica.zoologico.principal;

import br.com.logica.zoologico.classes.Animal;

public class Main {

	public static void main(String[] args) {
		// criando uma nova instancia do objeto
		Animal a1 = new Animal();

		a1.setNome("Jogo todinho");
		a1.setEspecie("Gato");
		a1.setIdade(1);

		// criando um nova instancia do objeto
		Animal a2 = new Animal();

		// atribuindo os valores as propriedades.
		a2.setNome("Spike");
		a2.setEspecie("cachorro");
		a2.setIdade(3);

		a2.emitirSon();
		System.out.println("O nome do meu animal é " + a2.getNome());

		if (a2.isAdulto()) {
			System.out.println("é adulto");
		} else {
			System.out.println("não é adulto");
		}

	}

}
