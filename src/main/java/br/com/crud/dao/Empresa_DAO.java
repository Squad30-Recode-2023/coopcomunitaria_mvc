package br.com.crud.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.mysql.cj.jdbc.Driver;

import br.com.crud.model.EmpresaModel;

public class Empresa_DAO {

	
		private static final String DB_URL = "jdbc:mysql://localhost:3306";
		private static final String DB_USER = "root";
		private static final String DB_PASSWORD = "2563724Gfh";
		
		private static final String SELECT_SQL = "SELECT * FROM coopcomunitaria.empresa";
		private static final String INSERT_SQL = "INSERT INTO coopcomunitaria.empresa (nome_empresa, codigo_cadastro, telefone_empresa, email_empresa, senha) VALUES (?,?,?,?,?)";
		private static final String UPDATE_SQL = "UPDATE coopcomunitaria.empresa SET nome_empresa = ?, codigo_cadastro = ?, telefone_empresa = ?, email_empresa = ?, senha = ? WHERE id_empresa = ?";
		private static final String DELETE_SQL = "DELETE FROM coopcomunitaria.empresa WHERE id_empresa = ?";
		private static final String READ_ID = "SELECT * FROM coopcomunitaria.empresa WHERE id_empresa = ?";
		
		public static List<EmpresaModel> buscarEmpresa() {
			
			List<EmpresaModel> empresas = new ArrayList<>();
			
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
					
					int id_empresa = rs.getInt("id_empresa");
					String nome_empresa = rs.getString("nome_empresa");
					String codigo_cadastro = rs.getString("codigo_cadastro");
					int telefone_empresa = rs.getInt("telefone_empresa");
					String email_empresa = rs.getString("email_empresa");
					String senha = rs.getString("senha");
					
					EmpresaModel e1 = new EmpresaModel ();
					e1.setId_empresa(id_empresa);
					e1.setNome_empresa(nome_empresa);
					e1.setCodigo_cadastro(codigo_cadastro);
					e1.setTelefone_empresa(telefone_empresa);
					e1.setEmail_empresa(email_empresa);
					e1.setSenha(senha);
					
					
					empresas.add(e1);
					
					
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
				return empresas;
				
			}
		
		public boolean inserirEmpresa(EmpresaModel e1) {
			
			boolean sucesso = false;
			
			Connection c = null;
			PreparedStatement stmt = null;
		
			try {
				Driver driver = new Driver();	
				DriverManager.registerDriver(driver);
				
				 c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
				
				 stmt = c.prepareStatement(INSERT_SQL);
				 
				stmt.setString (1, e1.getNome_empresa());
				stmt.setString (2, e1.getCodigo_cadastro());
				stmt.setInt (3, e1.getTelefone_empresa());
				stmt.setString (4, e1.getEmail_empresa());
				stmt.setString (5, e1.getSenha());
				
				
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
	 
		public void atualizarEmpresa(EmpresaModel e1) {
			
			
			Connection c = null;
			PreparedStatement stmt = null;
				
				try {
					Driver driver = new Driver();	
					DriverManager.registerDriver(driver);
					
					 c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
					
					 stmt = c.prepareStatement(UPDATE_SQL);
					
					 	stmt.setString (1, e1.getNome_empresa());
						stmt.setString (2, e1.getCodigo_cadastro());
						stmt.setInt (3, e1.getTelefone_empresa());
						stmt.setString (4, e1.getEmail_empresa());
						stmt.setString (5, e1.getSenha());
				        stmt.setInt(6, e1.getId_empresa());
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
			
		public static boolean deletarEmpresa(int id_empresa ) {
			
			boolean sucesso = false;  
			
			Connection c = null;
			PreparedStatement stmt = null;
			
				try {
					Driver driver = new Driver();	
					DriverManager.registerDriver(driver);
					
					c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
					
					stmt = c.prepareStatement(DELETE_SQL);
					
					stmt.setInt(1, id_empresa);
					
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
		
		public EmpresaModel buscarId (int id_empresa) {
			EmpresaModel e1 = new EmpresaModel ();
			 
			Connection c = null;
			PreparedStatement stmt = null;
			
			try {
				Driver driver = new Driver();	
				DriverManager.registerDriver(driver);
				
				c = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
				
				stmt = c.prepareStatement(READ_ID);
				
				stmt.setInt(1, id_empresa);
				
				ResultSet rs = stmt.executeQuery();
				
				rs.next();
				
				e1.setId_empresa(rs.getInt("id_empresa"));
                e1.setNome_empresa(rs.getString("nome_empresa"));
                e1.setCodigo_cadastro(rs.getString("codigo_cadastro"));
                e1.setTelefone_empresa(rs.getInt("telefone_empresa"));
                e1.setEmail_empresa(rs.getString("email_empresa"));
                e1.setSenha("senha");
                	
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
				return e1;

     }
}