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
import br.com.crud.dao.Servico_DAO;
import br.com.crud.dao.Empresa_DAO;
import br.com.crud.model.ClienteModel;
import br.com.crud.model.ServicoModel;
import br.com.crud.model.EmpresaModel;



@WebServlet(urlPatterns = {"/servico",  "/servico-getCreate", "/servico-create", "/servico-edit", "/servico-update", "/servico-delete"})
public class Servico_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Servico_DAO servicodao = new Servico_DAO();
	Cliente_DAO clientedao = new Cliente_DAO();
	Empresa_DAO empresadao = new Empresa_DAO();
	ServicoModel servicomodel = new ServicoModel();
       
   
    public Servico_Servlet() {
        super();
       
    }

	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getServletPath();
		
		switch (action) {
		case "/servico":
			buscarServico(request, response);
			break;
		case "/servico-getCreate":
			getCreate(request, response);
			break;	
		case "/servico-create":
			inserirServico(request, response);
			break;
		case "/servico-edit":
			edit(request, response);
			break;
		case "/servico-update":
			atualizarServico(request, response);
			break;
		case "/servico-delete":
			deletarServico(request, response);
			break;
		default:
			response.sendRedirect("index.html");
			break;
		}
	}
	
	protected void buscarServico (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<ServicoModel> lista = servicodao.buscarServico();
		request.setAttribute("listaServicos", lista);
		RequestDispatcher rd = request.getRequestDispatcher("./views/servico/index.jsp");
		rd.forward(request, response);
	}
	
	protected void getCreate (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<ClienteModel> listaClientes = clientedao.buscarCliente();
		request.setAttribute("listaClientes", listaClientes);
		List<EmpresaModel> listaEmpresas = empresadao.buscarEmpresa();
		request.setAttribute("listaEmpresas", listaEmpresas);
		RequestDispatcher rd = request.getRequestDispatcher("./views/servico/cadastrarServico.jsp");
		rd.forward(request, response);
	}
	
	protected void inserirServico (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome_do_servico = request.getParameter("nome_do_servico");
		Double preco = (Double.parseDouble(request.getParameter("preco")));
		String categoria = request.getParameter("categoria");
		ClienteModel c1 = clientedao.buscarId(Integer.parseInt(request.getParameter("listac")));
		EmpresaModel e1 = empresadao.buscarId(Integer.parseInt(request.getParameter("listae")));
				
		servicomodel = new ServicoModel(nome_do_servico, preco, categoria, c1, e1);
		
		servicodao.inserirServico(servicomodel);
		response.sendRedirect("servico");
		
	}
	
	protected void edit (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		int id_servico = Integer.parseInt(request.getParameter("id_servico"));
		
		servicomodel = servicodao.buscarId(id_servico);
		
		request.setAttribute("servico", servicomodel);
		
		List<ClienteModel> listaClientes = clientedao.buscarCliente();
		request.setAttribute("listaClientes", listaClientes);
		List<EmpresaModel> listaEmpresas = empresadao.buscarEmpresa();
		request.setAttribute("listaEmpresas", listaEmpresas);

		RequestDispatcher rd = request.getRequestDispatcher("./views/servico/update.jsp");
		rd.forward(request, response);
	}
	
	
	
	protected void atualizarServico (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		servicomodel.setId_servico(Integer.parseInt(request.getParameter("id_servico")));
		
		servicomodel.setNome_do_servico(request.getParameter("nome_do_servico"));
		servicomodel.setPreco(Double.parseDouble((request.getParameter("preco"))));
		servicomodel.setCategoria(request.getParameter("categoria"));
		servicomodel.setCliente(clientedao.buscarId(Integer.parseInt(request.getParameter("id_cliente"))));
		servicomodel.setEmpresa(empresadao.buscarId(Integer.parseInt(request.getParameter("id_empresa"))));
		
		servicodao.atualizarServico(servicomodel);
		response.sendRedirect("servico");
	}
	protected void deletarServico(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id_servico = Integer.parseInt(request.getParameter("id_servico"));
		servicodao.deletarServico(id_servico);
		response.sendRedirect("servico");
	}	

}


