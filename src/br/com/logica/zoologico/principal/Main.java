package br.com.logica.zoologico.principal;

import br.com.logica.zoologico.heranca.Cachorro;
import br.com.logica.zoologico.heranca.Gato;

public class Main {

	public static void main(String[] args) {
		// criando uma nova instancia do objeto
		Gato a1 = new Gato("maya" ," Gato " , 12);

		//a1.setNome("Jogo todinho");
		//a1.setEspecie("Gato");
		//a1.setIdade(1);

		// criando um nova instancia do objeto
		Cachorro a2 = new Cachorro("mike", " cachorro ", 2);

		// atribuindo os valores as propriedades.
		//a2.setNome("Spike");
		//a2.setEspecie("cachorro");
		//a2.setIdade(3);
		
		a1.emitirSon();
		System.out.println("O nome do meu animal é " + a1.getNome() + " O animal é um " + a1.getEspecie());

		if (a1.isAdulto()) {
			System.out.println(" Ele tem "+ a1.getIdade()+" Anos , ele " + "é adulto");
		} else {
			System.out.println("não é adulto");
		}	
			System.out.println("--------------------------------------------------------------------");

		a2.emitirSon();
		System.out.println("O nome do meu animal é " + a2.getNome() + " O animal é um " + a2.getEspecie());

		if (a2.isAdulto()) {
			System.out.println(" Ele tem "+ a2.getIdade()+" Anos , ele " + "é adulto");
		} else {
			System.out.println(" Ele tem "+ a2.getIdade()+" Anos , ele " + "não é adulto");
		}

	}
	
}
