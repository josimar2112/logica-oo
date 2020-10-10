package br.com.logica.zoologico.heranca;

import java.util.Scanner;

public class DesafioHerncaClasseAbstrata {

	abstract class Livro {

		protected String titulo;

		public abstract void setTitulo(String s);

		public String getTitulo() {
			return titulo;

		}
	}

	class MeuLivro extends Livro {

		@Override
		public void setTitulo(String s) {
			this.titulo = s;
		}
	}

	public static void main(String[] args) {
		Scanner scann = new Scanner(System.in);

		Livro a = new MeuLivro();
		a.setTitulo(scann.nextLine());

		System.out.println(a.getTitulo);

	}
}
