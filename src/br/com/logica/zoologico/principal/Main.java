package br.com.logica.zoologico.principal;

import br.com.logica.zoologico.classes.Animal;

public class Main {

	public static void main(String[] args) {
		//criando uma nova instancia do objeto
		Animal a1 = new Animal();

		a1.setNome ("Jogo todinho");
		a1.especie = "Gato";
		a1.idade = 1;
		
		// criando um nova instancia do objeto
		Animal a2 = new Animal();
		
		//atribuindo os valores as propriedades.
		a2.setNome ("Spike");
		a2.especie = "cachorro";
		a2.idade = 3;
		
		System.out.println("O nome do meu anil é " + a2.getNome());
			}
	
}
