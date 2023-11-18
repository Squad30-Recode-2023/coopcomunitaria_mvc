package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.crud.dao.Cliente_DAO;
import br.com.crud.model.ClienteModel;


@WebServlet(urlPatterns = {"/cliente", "/cliente-create", "/cliente-edit", "/cliente-update", "/cliente-delete"})
public class Cliente_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   Cliente_DAO clientedao = new Cliente_DAO();
   ClienteModel clientemodel = new ClienteModel();
   

    public Cliente_Servlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getServletPath();
		
		switch (action) {
		case "/cliente":
			buscarCliente(request, response);
			break;
		case "/cliente-create":
			inserirCliente(request, response);
			break;
		case "/cliente-edit":
			edit(request, response);
			break;
		case "/cliente-update":
			atualizarCliente(request, response);
			break;
		case "/cliente-delete":
			deletarCliente(request, response);
			break;
		default:
			response.sendRedirect("index.html");
			break;
		}
	}
	
	protected void buscarCliente (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<ClienteModel> lista = clientedao.buscarCliente();
		request.setAttribute("listaClientes", lista);
		RequestDispatcher rd = request.getRequestDispatcher("./views/cliente/index.jsp");
		rd.forward(request, response);
	}
	
	protected void inserirCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        clientemodel.setCpf(request.getParameter("cpf"));
		clientemodel.setNome_cliente(request.getParameter("nome_cliente"));
		clientemodel.setTelefone_cliente(Integer.parseInt(request.getParameter("telefone_cliente")));
		clientemodel.setEmail_cliente(request.getParameter("email_cliente"));
		clientemodel.setSenha_cliente(request.getParameter("senha_cliente"));

		clientedao.inserirCliente(clientemodel);
		response.sendRedirect("cliente");
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id_cliente = Integer.parseInt(request.getParameter("id_cliente"));
		clientemodel = clientedao.buscarId(id_cliente);
		
		request.setAttribute("cliente", clientemodel);
		RequestDispatcher rd = request.getRequestDispatcher("./views/cliente/update.jsp");
		
		rd.forward(request, response);	
	}
	
	protected void atualizarCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		clientemodel.setId_cliente(Integer.parseInt(request.getParameter("id_cliente")));
        clientemodel.setCpf(request.getParameter("cpf"));
		clientemodel.setNome_cliente(request.getParameter("nome_cliente"));
		clientemodel.setTelefone_cliente(Integer.parseInt(request.getParameter("telefone_cliente")));
		clientemodel.setEmail_cliente(request.getParameter("email_cliente"));
		clientemodel.setSenha_cliente(request.getParameter("senha_cliente"));
		clientemodel.setId_cliente(Integer.parseInt(request.getParameter("id_cliente")));

		clientedao.atualizarCliente(clientemodel);
		response.sendRedirect("cliente");
	}
	protected void deletarCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id_cliente = Integer.parseInt(request.getParameter("id_cliente"));
		clientedao.deletarCliente(id_cliente);
		response.sendRedirect("cliente");
	}	

}





