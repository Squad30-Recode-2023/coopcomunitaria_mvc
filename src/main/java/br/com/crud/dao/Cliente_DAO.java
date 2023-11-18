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

//Classe DAO -> DATA ACESS OBJECT 

public class Cliente_DAO {
	private static final String DB_URL = "jdbc:mysql://localhost:3306";
	private static final String DB_USER = "root";
	private static final String DB_PASSWORD = "2563724Gfh";
	
	private static final String SELECT_SQL = "SELECT * FROM coopcomunitaria.Cliente";
	private static final String INSERT_SQL = "INSERT INTO coopcomunitaria.Cliente (cpf, nome_cliente,  telefone_cliente, email_cliente, senha_cliente) VALUES (?, ?, ?, ?, ?)";
	private static final String UPDATE_SQL = "UPDATE coopcomunitaria.cliente SET cpf = ?, nome_cliente = ?, telefone_cliente = ?, email_cliente = ?, senha_cliente = ? WHERE id_cliente = ?";
	private static final String DELETE_SQL = "DELETE FROM coopcomunitaria.cliente WHERE id_cliente = ?";
	private static final String READ_ID = "SELECT * FROM coopcomunitaria.Cliente WHERE id_cliente = ?";
	

	public static List<ClienteModel> buscarCliente() {
		
		List<ClienteModel> clientes = new ArrayList<>();
		
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
				
				int id_cliente = rs.getInt("id_cliente");
				String cpf = rs.getString("cpf");
				String nome_cliente = rs.getString("Nome_cliente");
				int telefone_cliente = rs.getInt("Telefone_cliente");
				String email_cliente = rs.getString("Email_cliente");
				String senha_cliente = rs.getString("Senha_cliente");
				
				ClienteModel c1 = new ClienteModel ();
				c1.setId_cliente(id_cliente);
				c1.setCpf(cpf);
				c1.setNome_cliente(nome_cliente);
				c1.setTelefone_cliente(telefone_cliente);
				c1.setEmail_cliente(email_cliente);
				c1.setSenha_cliente(senha_cliente);
				
				
				clientes.add(c1);
				
				
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
			return clientes;
			
		}
	
	public static boolean inserirCliente(ClienteModel c1) {
		
		boolean sucesso = false;
		
		Connection c = null;
		PreparedStatement stmt = null;
	
		try {
			Driver driver = new Driver();	
			DriverManager.registerDriver(driver);
			
			 c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
			
			 stmt = c.prepareStatement(INSERT_SQL);
			 
			stmt.setString (1, c1.getCpf());
			stmt.setString (2,c1.getNome_cliente());
			stmt.setInt (3, c1.getTelefone_cliente());
			stmt.setString (4, c1.getEmail_cliente());
			stmt.setString (5, c1.getSenha_cliente());
			
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
 
	public void atualizarCliente(ClienteModel c1) {
		
		
		Connection c = null;
		PreparedStatement stmt = null;
			
			try {
				Driver driver = new Driver();	
				DriverManager.registerDriver(driver);
				
				 c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
				
				 stmt = c.prepareStatement(UPDATE_SQL);
				
				 	stmt.setString (1, c1.getCpf());
					stmt.setString (2,c1.getNome_cliente());
					stmt.setInt (3, c1.getTelefone_cliente());
					stmt.setString (4, c1.getEmail_cliente());
					stmt.setString (5, c1.getSenha_cliente());
					stmt.setInt(6, c1.getId_cliente());
					
				
				 stmt.executeUpdate();
				
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
	public static boolean deletarCliente(int id_cliente ) {
		
		boolean sucesso = false;  
		
		Connection c = null;
		PreparedStatement stmt = null;
		
			try {
				Driver driver = new Driver();	
				DriverManager.registerDriver(driver);
				
				c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
				
				stmt = c.prepareStatement(DELETE_SQL);
				
				stmt.setInt(1, id_cliente);
				
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
	
	public ClienteModel buscarId (int id_cliente ) {
		ClienteModel c1 = new ClienteModel ();
		 
		Connection c = null;
		PreparedStatement stmt = null;
		
		try {
			Driver driver = new Driver();	
			DriverManager.registerDriver(driver);
			
			c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
			
			stmt = c.prepareStatement(READ_ID);
			
			stmt.setInt(1, id_cliente);
			
			ResultSet rs = stmt.executeQuery();
			
			rs.next();
			
			c1.setCpf(rs.getString("cpf"));
			c1.setNome_cliente(rs.getString("nome_cliente"));
			c1.setTelefone_cliente(rs.getInt("telefone_cliente"));
			c1.setId_cliente(rs.getInt("id_cliente"));
			c1.setEmail_cliente(rs.getString("email_cliente"));
			c1.setSenha_cliente(rs.getString("senha_cliente"));
			
		
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
			return c1;
			
		}

}
