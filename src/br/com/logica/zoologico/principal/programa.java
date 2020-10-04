package br.com.logica.zoologico.principal;

import br.com.logica.zoologico.classes.Animal;

public class programa	 {

	public static void main(String[] args) {
		// criando uma nova instancia do objeto
		Cachorro cachorro = new Cachorro(" Rex "," Cachorro ",2);
		
		System.out.println("ola seu animal é um " + cachorro.getEspecie() + " , o nome dele é " + cachorro.getNome() + "e tem " + cachorro.getIdade() + " anos ");
		


		if (cachorro.isAdulto()) {
			System.out.println("é adulto");
		} else {
			System.out.println("não é adulto");
		}

	}

}
