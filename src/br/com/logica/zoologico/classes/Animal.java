package br.com.logica.zoologico.classes;

//construindo o objeto animal
public abstract class Animal {

	// atributos ou propriedades do objeto
	// neste momento as propriedades são publicas
	private String nome;
	private String especie;
	private int idade;
	
	public Animal(String nome,String especie, int idade) {
		this.nome = nome;
		this.especie = especie;
		this.idade = idade;
	}
	
	public Animal (String nome) {
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

	public void emitirSon() {
		System.out.println("Som do anumal");
	}

	public boolean isAdulto() {
		return idade >= 1;
	}

}