package br.com.crud.model;

public class ServicoModel {
	
		private int id_servico;
		private String nome_do_servico;
		private String categoria;
		private double preco;
		private ClienteModel c1;
		private EmpresaModel e1;
		
		
		
		
		public ServicoModel(String nome_do_servico, double preco, String categoria, ClienteModel c1, EmpresaModel e1) {
			super();
			this.nome_do_servico = nome_do_servico;
			this.categoria = categoria;
			this.preco = preco;
			this.c1 = c1;
			this.e1 = e1;
		}




		public ServicoModel(int id_servico, String nome_do_servico, String categoria, double preco,  ClienteModel c1,
				EmpresaModel e1) {
			super();
			this.id_servico = id_servico;
			this.nome_do_servico = nome_do_servico;
			this.categoria = categoria;
			this.preco = preco;
			this.c1 = c1;
			this.e1 = e1;
		}




		public ServicoModel() {
			super();
		}






		public ClienteModel getC1() {
			return c1;
		}




		public void setCliente(ClienteModel c1) {
			this.c1 = c1;
		}




		public EmpresaModel gete1() {
			return e1;
		}




		public void setEmpresa(EmpresaModel e1) {
			this.e1 = e1;
		}




		public int getId_servico() {
			return id_servico;
		}




		public void setId_servico(int id_servico) {
			this.id_servico = id_servico;
		}




		public String getNome_do_servico() {
			return nome_do_servico;
		}




		public void setNome_do_servico(String nome_do_servico) {
			this.nome_do_servico = nome_do_servico;
		}




		public String getCategoria() {
			return categoria;
		}




		public void setCategoria(String categoria) {
			this.categoria = categoria;
		}




		public double getPreco() {
			return preco;
		}




		public void setPreco(double preco) {
			this.preco = preco;
		}




		@Override
		public String toString() {
			return "ServicoModel [id_servico=" + id_servico + ", nome_do_servico=" + nome_do_servico + ", categoria="
					+ categoria + ", preco=" + preco + ", c1=" + c1 + ", e1=" + e1 + "]";
		}
		

	}
