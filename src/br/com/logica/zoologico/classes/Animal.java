package br.com.logica.zoologico.classes;

//construindo o objeto animal
public class Animal {

	// atributos ou propriedades do objeto
	// neste momento as propriedades s�o publicas
	private String nome;
	private String especie;
	private int idade;

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

	public String getespecie() {
		return especie;
	}

	public int getIdade() {
		return idade;

	}

}