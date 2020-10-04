package br.com.logica.zoologico.principal;

import br.com.logica.zoologico.classes.Animal;
import br.com.logica.zoologico.heranca.Cachorro;
import br.com.logica.zoologico.heranca.Gato;

public class Main {

	public static void main(String[] args) {
		// criando uma nova instancia do objeto
		Gato a1 = new Gato();

		a1.setNome("Jogo todinho");
		a1.setEspecie("Gato");
		a1.setIdade(1);

		// criando um nova instancia do objeto
		Cachorro a2 = new Cachorro();

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
