package br.com.logica.zoologico.principal;

import br.com.logica.zoologico.classes.Animal;

public class programa	 {

	public static void main(String[] args) {
		// criando uma nova instancia do objeto
		Animal cachorro = new Animal(" Rex "," Cachorro ",2);
		
		System.out.println("ola seu animal � um " + cachorro.getespecie() + " , o nome dele � " + cachorro.getNome() + "e tem " + cachorro.getIdade() + " anos ");
		


		if (cachorro.isAdulto()) {
			System.out.println("� adulto");
		} else {
			System.out.println("n�o � adulto");
		}

	}

}
