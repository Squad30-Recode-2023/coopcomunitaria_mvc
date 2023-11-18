package br.com.crud.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.mysql.cj.jdbc.Driver;

import br.com.crud.model.ClienteModel;
import br.com.crud.model.ServicoModel;
import br.com.crud.model.EmpresaModel;

public class Servico_DAO {

	
		private static final String DB_URL = "jdbc:mysql://localhost:3306";
		private static final String DB_USER = "root";
		private static final String DB_PASSWORD = "2563724Gfh";
		
		private static final String SELECT_SQL = "select*from coopcomunitaria.Cliente_Empresa;";
		private static final String INSERT_SQL = "INSERT INTO coopcomunitaria.servico (nome_do_servico, preco, categoria, id_cliente, id_empresa) VALUES (?, ?, ?, ?, ?)";
		private static final String UPDATE_SQL = "UPDATE coopcomunitaria.servico SET nome_do_servico = ?, preco = ?, categoria = ?, id_cliente = ?, id_empresa = ? WHERE id_servico = ?";
		private static final String DELETE_SQL = "DELETE FROM coopcomunitaria.servico WHERE id_servico = ?";
		private static final String READ_ID = "SELECT * FROM coopcomunitaria.Cliente_Empresa WHERE id_servico = ?";
		
	
		public  List<ServicoModel> buscarServico() {
			
			List<ServicoModel> servicos = new ArrayList<>();
			
			Connection c = null;
			PreparedStatement stmt = null;

			//java database connection (jdbc)
			try {
				Driver driver = new Driver();	
				DriverManager.registerDriver(driver);
				
				c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
				
			    stmt = c.prepareStatement(SELECT_SQL);
				
				ResultSet rs = stmt.executeQuery();
				
				while (rs.next()) {
					ClienteModel c1 = new ClienteModel ();
					EmpresaModel e1 = new EmpresaModel ();
					ServicoModel so1 = new ServicoModel ();
					
					so1.setId_servico(rs.getInt("id_servico"));
					so1.setNome_do_servico(rs.getString("nome_do_servico"));
					so1.setPreco(rs.getDouble("preco"));
					so1.setCategoria(rs.getString("categoria"));
					
					e1.setId_empresa(rs.getInt("id_empresa"));
					e1.setNome_empresa(rs.getString("nome_empresa"));
					e1.setCodigo_cadastro(rs.getString("codigo_cadastro"));
					e1.setTelefone_empresa(rs.getInt("telefone_empresa")); 
					e1.setEmail_empresa(rs.getString("email_empresa"));
					e1.setSenha(rs.getString("senha"));
					
					c1.setId_cliente(rs.getInt("id_cliente"));
					c1.setCpf(rs.getString("cpf"));
					c1.setNome_cliente(rs.getString("nome_cliente"));
					c1.setTelefone_cliente(rs.getInt("telefone_cliente"));
					c1.setEmail_cliente(rs.getString("email_cliente"));
					c1.setSenha_cliente(rs.getString("senha_cliente"));
					
					so1.setCliente(c1); //se der ruim, voltar aqui
					so1.setEmpresa(e1);
					
					servicos.add(so1);
					
					
				}
				stmt.close();
				c.close();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
		        try {
		            if (stmt != null) {
		                stmt.close();
		            }
		            if (c != null) {
		                c.close();
		            }
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
		    }
				return servicos;
				
			}
		
		public void inserirServico(ServicoModel so1) {
			
			
			Connection c = null;
			PreparedStatement stmt = null;
		
			try {
				Driver driver = new Driver();	
				DriverManager.registerDriver(driver);
				
				 c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
				
				 stmt = c.prepareStatement(INSERT_SQL);
				 
				stmt.setString (1, so1.getNome_do_servico());
				stmt.setDouble (2, so1.getPreco());
				stmt.setString (3, so1.getCategoria());
				stmt.setInt (4, so1.getC1().getId_cliente());
				stmt.setInt (5, so1.gete1().getId_empresa());
				
				stmt.execute();

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (stmt != null) {
						stmt.close();
					}
					if (c != null) {
						c.close();
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

		}
	 
		public static boolean atualizarServico(ServicoModel so1) {
			Scanner scanner = new Scanner(System.in);
			
			boolean sucesso = false;
			
			Connection c = null;
			PreparedStatement stmt = null;
				
				try {
					Driver driver = new Driver();	
					DriverManager.registerDriver(driver);
					
					 c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
					
					 stmt = c.prepareStatement(UPDATE_SQL);
					
					 
					 	stmt.setString (1, so1.getNome_do_servico());
						stmt.setDouble (2, so1.getPreco());
						stmt.setString (3, so1.getCategoria());
						stmt.setInt (4, so1.getC1().getId_cliente());
						stmt.setInt (5, so1.gete1().getId_empresa());
						stmt.setInt(6, so1.getId_servico());
					
					int rowsAffected = stmt.executeUpdate();
					
					if (rowsAffected > 0) {
						sucesso = true;
					}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
		        try {
		            if (stmt != null) {
		                stmt.close();
		            }
		            if (c != null) {
		                c.close();
		            }
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
		    }
				return sucesso;
				
			}
			
		public static boolean deletarServico(int id_servico ) {
			
			boolean sucesso = false;  
			
			Connection c = null;
			PreparedStatement stmt = null;
			
				try {
					Driver driver = new Driver();	
					DriverManager.registerDriver(driver);
					
					c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
					
					stmt = c.prepareStatement(DELETE_SQL);
					
					stmt.setInt(1, id_servico);
					
					int rowsAffected = stmt.executeUpdate();
					
					if (rowsAffected > 0) {
						sucesso = true;
					} 
				
				} catch (SQLException e) {
			        e.printStackTrace();
			    } finally {
			        try {
			            if (stmt != null) {
			                stmt.close();
			            }
			            if (c != null) {
			                c.close();
			            }
			        } catch (Exception e) {
			            e.printStackTrace();
			        }
			    }
				return sucesso;
		}
		
		public ServicoModel buscarId (int id_servico) {
			ServicoModel so1 = new ServicoModel ();
			 
			Connection c = null;
			PreparedStatement stmt = null;
			
			try {
				Driver driver = new Driver();	
				DriverManager.registerDriver(driver);
				
				c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
				
				stmt = c.prepareStatement(READ_ID);
				
				stmt.setInt(1, id_servico);
				
				ResultSet rs = stmt.executeQuery();
				
				rs.next();

				
				ClienteModel c1 = new ClienteModel ();
				EmpresaModel e1 = new EmpresaModel ();
				
				so1.setId_servico(rs.getInt("id_servico"));
				so1.setNome_do_servico(rs.getString("nome_do_servico"));
				so1.setPreco(rs.getDouble("preco"));
				so1.setCategoria(rs.getString("categoria"));
				
				e1.setId_empresa(rs.getInt("id_empresa"));
				e1.setNome_empresa(rs.getString("nome_empresa"));
				e1.setCodigo_cadastro(rs.getString("codigo_cadastro"));
				e1.setTelefone_empresa(rs.getInt("telefone_empresa")); 
				e1.setEmail_empresa(rs.getString("email_empresa"));
				e1.setSenha(rs.getString("senha"));
				
				c1.setId_cliente(rs.getInt("id_cliente"));
				c1.setCpf(rs.getString("cpf"));
				c1.setNome_cliente(rs.getString("nome_cliente"));
				c1.setTelefone_cliente(rs.getInt("telefone_cliente"));
				c1.setEmail_cliente(rs.getString("email_cliente"));
				c1.setSenha_cliente(rs.getString("senha_cliente"));
				
				so1.setCliente(c1); //se der ruim, voltar aqui
				so1.setEmpresa(e1);
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
		        try {
		            if (stmt != null) {
		                stmt.close();
		            }
		            if (c != null) {
		                c.close();
		            }
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
		    }
				return so1;

     }
}