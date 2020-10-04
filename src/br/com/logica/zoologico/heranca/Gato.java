package br.com.logica.zoologico.heranca;

import br.com.logica.zoologico.classes.Animal;

public class Gato extends Animal {
	public Gato(String nome, String especie, int idade) {
		super(nome, especie, idade);

	}

	public Gato(String nome) {
		super(nome);

	}

	@Override
	public void emitirSon() {
		if (estaVivo) {
			System.out.println(" Miando ");
		} else {
			System.out.println("O Animal esta morto ");
		}
	}

}
