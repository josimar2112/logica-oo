package br.com.logica.zoologico.heranca;

import java.util.Scanner;

class AnimalDesafio {
	private String nome;
	private String especie;

	public void setNome(String nome) {
		this.nome = nome;

	}

	public String getNome() {
		return nome;
	}

	public void setEspecie(String especie) {
		this.especie = especie;
	}

	public String getEspecie() {
		return especie;
	}
}

class GatoDesafio extends AnimalDesafio {
	@Override
	public String getEspecie() {
		return getNome() + " é um gato ";
	}
}

public class DesafioSobrescritaMetodo {

	private static Scanner scann;

	public static void main(String[] args) {
		AnimalDesafio a = new GatoDesafio();

		scann = new Scanner(System.in);
		a.setNome(scann.nextLine());

		System.out.println(a.getEspecie());

	}

}
