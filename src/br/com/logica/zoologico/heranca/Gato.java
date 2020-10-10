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
	public void emitirSom() {
		if (estaVivo) {
			System.out.println(" Miando ");
		} else {
			System.out.println("O Animal esta morto ");
		}
	}

	@Override
	public boolean isAdulto() {
		if (isEstaVivo()) {
			return idade > 1;
		} else
			return false;
	}

	private boolean isEstaVivo() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void morrer() {
		// TODO Auto-generated method stub
		
	}

}
