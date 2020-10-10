package br.com.logica.zoologico.heranca;

import br.com.logica.zoologico.classes.Animal;

public class Cachorro extends Animal {
	public Cachorro(String nome, String especie, int idade) {
		super(nome, especie, idade);

	}

	public Cachorro(String nome) {
		super(nome);

	}

	@Override
	public void emitirSom() {
		if (estaVivo) {
			System.out.println(" Latindo ");
		} else 
			System.out.println("O Animal esta morto ");

		}
		
	@Override
	public boolean isAdulto() {
		if (isEstaVivo()) {
			return idade > 2;
		} else
			return false;
			
		
	}

	private boolean isEstaVivo() {
		return false;
	}

	@Override
	public void morrer() {
		
	}
}
