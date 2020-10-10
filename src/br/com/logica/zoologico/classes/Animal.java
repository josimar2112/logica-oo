package br.com.logica.zoologico.classes;

import br.com.logica.zoologico.interfaces.IAnimal;

//construindo o objeto animal
public abstract class Animal implements IAnimal {

	// atributos ou propriedades do objeto
	// neste momento as propriedades são publicas
	private String nome;
	private String especie;
	protected int idade;
	protected boolean estaVivo;

	public Animal(String nome, String especie, int idade) {
		this.nome = nome;
		this.especie = especie;
		this.idade = idade;
		this.estaVivo = true;

	}

	public Animal(String nome) {
		this.nome = nome;

	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public void setEspecie(String especie) {
		this.especie = especie;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public String getNome() {
		return nome;
	}

	public String getEspecie() {
		return especie;
	}

	public int getIdade() {
		return idade;

	}
}
